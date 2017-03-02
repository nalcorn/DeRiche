package DAO;

import java.sql.PreparedStatement;

public class Test implements Accessible {

	private String ID;
	private String firstName;
	private String lastName;
	private String password;
	
	public Test() {
		
		ID = "1200";
		
		try {
			//DBConnection.select(this, "2700");
			//DBConnection.insert(this, new Object[] {"2700", "Raichu", "Pichu", "*MySimplePassword*"});
			//DBConnection.update(this, "2700");
			//DBConnection.delete(this, "2700");
		}
		
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	@Override
	public PreparedStatement setStatementValues(PreparedStatement statement, Object[] values) {
		
		if (values != null) {
			ID = (String)values[0];
	        firstName = (String)values[1];
	        lastName = (String)values[2];
	        password = (String)values[3];
		}

        try {
        	statement.setString(1, getID());
            statement.setString(2, getFirstName());
            statement.setString(3, getLastName());
            statement.setString(4, getPassword());
            //statement.setString(5, (String)getPrimaryKey());
        }
        
        catch (Exception ex) {
        	ex.printStackTrace();
        }

        return statement;
		
	}
	
	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public Object getPrimaryKey() {
		return ID;
	}
	
	@Override
	public int getPrimaryKeyIndex() {
		return 0;
	}
	
	public static void main(String[] args) {
		new Test();
	}
}
