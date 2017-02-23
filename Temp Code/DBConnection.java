package dataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Date: 2/23/2017
 * @author Cameron Randolph
 * @author Carl Moon
 */
public final class DBConnection {
    
    public static Object[] select(String sql, String var) {
        sql = "Select * from users where UserID = ?";
        var = "78";
        Object[] data;
        Connection connection;
        PreparedStatement statement;
        ResultSet rs;
        int columnCount;
        
        try {
            connection = estb();
            connection.prepareStatement(sql);
            statement = connection.prepareStatement(sql);
            statement.setString(1, var);
            rs = statement.executeQuery();
            columnCount = rs.getMetaData().getColumnCount();
            data = new Object[columnCount];
            
            while (rs.next()) {
                for (int i = 0; i < columnCount; i++) {
                    data[i] = rs.getObject(i);
                }
            }
            
            return data;
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public static boolean insert(String s) {
        return false;
    }
        
    public static boolean update(String s) {
        return false;
    }
            
    public static boolean delete(String s) {
        return false;
    }
    
    public static Connection estb() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/deriche", "root", "password");
            return connection;
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }        
    }
}
