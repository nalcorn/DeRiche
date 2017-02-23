package dataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Date: 2/23/2017
 * @author Cameron Randolph
 * @author Carl Moon
 */
public final class DBConnection {
    
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
    
    public static Connection estblish() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/deriche", "root", "password");
        return connection;    
    }
}
