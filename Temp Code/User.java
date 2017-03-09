package business;

import dataAccess.Accessible;
import dataAccess.DBConnection;
import java.sql.PreparedStatement;

public class User implements Accessible {

    private String userID;
    private String firstName;
    private String lastName;
    
    public User() {
    
        userID = "2700";
        firstName = "Johnny";
        lastName = "Gerraldenai";
        
        //select();
        //update();
        //delete();
        //insert();
        
        System.out.println(DBConnection.generateSQL(this, DBConnection.UPDATE));
        
    }
    
    private void select() {
        try {
            Object[] values = DBConnection.select(this, "6700");
            
            for (int i = 0; i < values.length; i++) {
                System.out.println(values[i]);
            }
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    private void insert() {
        try {
            System.out.println(DBConnection.insert(this, new Object[] {"6700", "Peter", "Powers"}));
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    private void update() {
        try {
            System.out.println(DBConnection.update(this, "2700"));
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
        private void delete() {
            try {
                DBConnection.delete(this, "6700");
            }
        
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    @Override
    public PreparedStatement setStatementValues(PreparedStatement statement, Object[] values) {
        
	if (values != null) {
	    setUserID((String)values[0]);
	    setFirstName((String)values[1]);
	    setLastName((String)values[2]);
	}

        try {
            if (values != null) {
                statement.setString(1, getUserID());
                statement.setString(2, getFirstName());
                statement.setString(3, getLastName());
            } else {
                statement.setString(1, getFirstName());
                statement.setString(2, getLastName());
            }
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
        }

        return statement;
	
    }

    @Override
    public Object getPrimaryKey() {
        return userID;
    }

    @Override
    public int getPrimaryKeyIndex() {
        return 0;
    }

    /**
     * @return the userID
     */
    public String getUserID() {
        return userID;
    }

    /**
     * @param userID the userID to set
     */
    public void setUserID(String userID) {
        this.userID = userID;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public static void main(String[] args) {
        new User();
    }
}
