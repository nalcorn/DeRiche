package DAO;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * The {@link DAO.DBConnection} class contains all the methods needed for database access in the DeRiche project.<br>
 * Any class accessing the database through {@link DAO.DBConnection} will need to implement {@link DAO.Accessible}. By implementing {@link DAO.Accessible} the class' attribute names must directly correspond to the column names for the matching table in the database.<br><br>
 *
 * Date: 2/23/2017
 *
 * @author Cameron Randolph
 * @author Carl Moon
 *
 * @version 1.2
 * 
 * @see DBConnection#select(Accessible, Object)
 */
public final class DBConnection {

    /**
     * Handles all select statements required by the DeRiche business objects.<br>
     * This method has the ability to select any value from the database described in the establish() method and return it as an {@link java.lang.Object}.
     *
     * @author Carl Moon
     * @author Cameron Randolph
     *
     * @param sql the statement to be passed to the database
     * @param var the variable to be used to set the designated parameter for the {@link java.sql.PreparedStatement}
     *
     * @return an {@link java.lang.Object} array holding all values selected from the database
     * 
     * @see select
     * 
     * @deprecated as of version 1.2, replaced by select
     * 
     * @throws SQLException if a database access error occurs
     * @throws ClassNotFoundException if the Driver for the database cannot be found
     */
    public static Object[] selectDB(String sql, String var) throws SQLException, ClassNotFoundException {
        
        int columnCount;
        Object[] data;
        Connection connection;
        PreparedStatement statement;
        ResultSet rs;
        
        connection = establish();
        connection.prepareStatement(sql);
        statement = connection.prepareStatement(sql);
        statement.setString(1, var);
        rs = statement.executeQuery();
        columnCount = rs.getMetaData().getColumnCount();
        data = new Object[columnCount];
            
        while (rs.next()) {
            for (int i = 0; i < columnCount; i++) {
                data[i] = rs.getObject(i + 1);
            }
        }
        
        return data;
    }
    
    /**
     * Handles all select statements required by the DeRiche business objects.<br>
     * This method has the ability to select rows from the database described in the establish() method.
     *
     * @author Carl Moon
     * @author Cameron Randolph
     *
     * @param object the {@link DAO.Accessible} object representation of a table in a database for which a select command is to be made
     * @param value the primary key of the table represented by the {@link DAO.Accessible} object. Used to set the designated parameter of the {@link java.sql.PreparedStatement}
     *
     * @return an {@link java.lang.Object} array holding all values selected from the database
     * 
     * @throws SQLException if a database access error occurs
     * @throws ClassNotFoundException if the Driver for the database cannot be found
     */
    public static Object[] select(Accessible object, Object value) throws SQLException, ClassNotFoundException {
    	
        int columnCount;
        
        Object[] data;
        Connection connection;
        PreparedStatement statement;
        ResultSet resultSet;
        
        connection = establish();
        statement = connection.prepareStatement(generateSQL(object, 'S'));
        statement.setObject(1, value);
        //Possible Idea
        //statement.setObject(object.getPrimaryKeyIndex() + 1, value);
        resultSet = statement.executeQuery();
        
        columnCount = resultSet.getMetaData().getColumnCount();
        data = new Object[columnCount];
            
        while (resultSet.next()) {
            for (int i = 0; i < columnCount; i++) {
                data[i] = resultSet.getObject(i + 1);
            }
        }
        
        return data;
    }
    
    /**
     * Handles all insert statements required by the DeRiche business objects.<br>
     * This method has the ability to insert rows into the database described in the establish() method.
     *
     * @author Cameron Randolph
     *
     * @param object the {@link DAO.Accessible} object representation of a table in a database for which an insert command is to be made
     * @param values the values to be added to the {@link java.sql.PreparedStatement} as designated parameters
     *
     * @return an int representing whether or not the database was successfully updated
     * 
     * @throws SQLException if a database access error occurs
     * @throws ClassNotFoundException if the Driver for the database cannot be found
     */
    public static int insert(Accessible object, Object[] values) throws SQLException, ClassNotFoundException {

        int executed = 0;
        Connection connection;
        PreparedStatement statement;

        connection = establish();
        statement = connection.prepareStatement(generateSQL(object, 'I'));
        statement = object.setStatementValues(statement, values);
        executed = statement.executeUpdate();
        
        return executed;
    }
    
    /**
     * Handles all update statements required by the DeRiche business objects.<br>
     * This method has the ability to update rows in the database described in the establish() method.
     * 
     * @param object the {@link DAO.Accessible} object representation of a table in a database for which a delete command is to be made
     * @param value the primary key of the table represented by the {@link DAO.Accessible} object. Used to set the designated parameter of the {@link java.sql.PreparedStatement}
     * 
     * @return an int representing whether or not the database was successfully updated
     * 
     * @throws SQLException if a database access error occurs
     * @throws ClassNotFoundException if the Driver for the database cannot be found
     */
    public static int update(Accessible object, Object value) throws SQLException, ClassNotFoundException {
    	
        int executed = 0;
        Connection connection;
        PreparedStatement statement;
        
        connection = establish();
        statement = connection.prepareStatement(generateSQL(object, 'U'));
        statement = object.setStatementValues(statement, null);
        statement.setString(object.getClass().getDeclaredFields().length, (String)value);
        executed = statement.executeUpdate();
        
        return executed;
    }
    
    /**
     * Handles all delete statements required by the DeRiche business objects.<br>
     * This method has the ability to delete rows in the database described in the establish() method.
     * 
     * @param object the {@link DAO.Accessible} object representation of a table in a database for which an update command is to be made
     * @param value the primary key of the table represented by the {@link DAO.Accessible} object. Used to set the designated parameter of the {@link java.sql.PreparedStatement}
     * 
     * @return an int representing whether or not the database was successfully updated
     * 
     * @throws SQLException if a database access error occurs
     * @throws ClassNotFoundException if the Driver for the database cannot be found
     */
    public static int delete(Accessible object, Object value) throws SQLException, ClassNotFoundException {
        
        int executed = 0;
        Connection connection;
        PreparedStatement statement;
        
        connection = establish();
        statement = connection.prepareStatement(generateSQL(object, 'D'));
        statement.setObject(1, (String)value);
        executed = statement.executeUpdate();
        
        return executed;
    }

    /**
     * Generates SQL commands for the {@link DAO.Accessible} object passed as a parameter.
     * 
     * @param object the {@link DAO.Accessible} object representation of a table in a database for which an SQL statement is to be made
     * @param var the char representation of the type of action to be taken when invoking this method
     * 
     * @return a {@link java.lang.String} representation of the SQL command
     */
    private static String generateSQL(Accessible object, char var) {

    	if (var == 'S') {
    		
    	    Field[] fields;
            String sql;
            
            fields = object.getClass().getDeclaredFields();
            sql = "Select * From " + object.getClass().getSimpleName() + " Where " + fields[object.getPrimaryKeyIndex()].getName() + " = ?";
            
            return sql;
    		
    	} else if (var == 'I') {
        	
    	    Field[] fields;
            String sql;
            String names;
            String marks;
            
    	    fields = object.getClass().getDeclaredFields();
            sql = "Insert into " + object.getClass().getSimpleName() + "(";
            names = "";
            marks = "";
    		
    	    for (int i = 0; i < fields.length; i++) {
                if (i < fields.length - 1) {
                    names += fields[i].getName() + ", ";
                    marks += "?, ";
                } else {
                    names += fields[i].getName() + ") values(";
                    marks += "?)";
                }
    	    }

            return sql + names + marks;
            
        } else if (var == 'U') {
        	
    	    Field[] fields;
            String sql;
        	
    	    fields = object.getClass().getDeclaredFields();
            sql = "Update " + object.getClass().getSimpleName() + " set ";
            
    	    for (int i = 0; i < fields.length; i++) {
                if (i < fields.length - 1) {
                    sql += fields[i].getName() + " = ?, ";
                } else {
                	sql += fields[i].getName() + " = ? Where " + fields[object.getPrimaryKeyIndex()].getName() + " = ?";
                }
    	    }

            return sql;
            
        } else if (var == 'D') {
        	
    	    Field[] fields;
            String sql;
            
            fields = object.getClass().getDeclaredFields();
            sql = "Delete From " + object.getClass().getSimpleName() + " Where " + fields[object.getPrimaryKeyIndex()].getName() + " = ?";
            
            return sql;
        	
        }
        
        return "Error: Incompatible Command";
    }
    
    /**
     * Retrieves the class name from the object passed to it.<br>
     * This method only gives the name of the class. Any packages listed in the full class name are removed from the return value.
     *
     * @return a {@link java.lang.String} representing the name of the class
     * 
     * @deprecated as of version 1.2
     */
    private static String getClassName(Object object) {
    	String name;
    	int index;
    	
    	name = "";
    	index = object.getClass().getName().lastIndexOf('.') + 1;
    	
    	for (int i = index; i < (object.getClass().getName().length()); i++) {
    		name += object.getClass().getName().charAt(i);
    	}
    	
    	return name;
    }
    
    /**
     * Establishes a connection to the DeRiche database for every method in the {@link DAO.DBConnection} class.
     *
     * @return a {@link java.sql.Connection} already linked to the DeRiche database
     * 
     * @throws SQLException if a database access error occurs
     * @throws ClassNotFoundException if the Driver for the database cannot be found
     */
    public static Connection establish() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/deriche", "root", "password");
        return connection;    
    }
}
