package dataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * The {@link dataAccess.DBConnection} class contains all the methods needed for database access in the DeRiche project.
 *
 * Date: 2/23/2017
 *
 * @author Cameron Randolph
 * @author Carl Moon
 *
 * @version 1.0
 */
public final class DBConnection {
    /**
     * Handles all select statements required by the DeRiche business objects.<br>
     * This method has the ability to select any value from the database desribed in the establish() method and return it as an {@link java.lang.Object}.
     *
     * @author Carl Moon
     * @author Cameron Randolph
     *
     * @param sql the statement to be passed to the database
     * @param var the variable to be used to set the {@link java.lan.String} for the {@link java.sql.PreparedStatement}
     *
     * @return an {@link java.lang.Object} array holding all values selected from the database
     */
    public static Object[] select(String sql, String var) throws SQLException, ClassNotFoundException {
        
        int columnCount;
        Object[] data;
        Connection connection;
        PreparedStatement statement;
        ResultSet rs;
        
        connection = estblish();
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
    
    public static boolean insert(String s, String var) throws SQLException {
        return false;
    }
        
    public static boolean update(String s, String var) throws SQLException {
        return false;
    }
            
    public static boolean delete(String s, String var) throws SQLException {
        return false;
    }
    /**
     * Establishes a connection to the DeRiche database for every method in the {@link dataAccess.DBConnection} class.
     *
     * @return a {@link java.sql.Connection} already linked to the DeRiche database
     */
    public static Connection estblish() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/deriche", "root", "password");
        return connection;    
    }
}
