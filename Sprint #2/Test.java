/******************************************************************************************
* @author TPS reporting group  II 3-13-17
* login page servelet
* version 1.0
*****************************************************************************************/



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
//For every method other than insert, the two arguments passed to the method are the object using the method "this", and the primary key of the row you wish to select/update/delete from "2700".
			//DBConnection.select(this, "2700");
//The Object[] being passed to this method represents the values to be put into columns in the database.
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
		
//This "if" statement always encapsulates this part of the method. This is because the "update" method passes a null value in place of the "values" parameter.
//The values within the "if" statement are all of the business object's attributes. Only the values that match the database values are listed here.
//They are also listed in order of how they are found in the database, which correspondes to how they are declared in the class.

		if (values != null) {
			ID = (String)values[0];
	                firstName = (String)values[1];
	                lastName = (String)values[2];
	                password = (String)values[3];
		}

//These values here are set in the same order as the values above.
//The set_____() method should match the attribute's type. e.g. setTimestamp(), setObject(), setString() etc.
//This might change later, since almost every attribute is passed to the database as a String.

        try {
        	statement.setString(1, getID());
                statement.setString(2, getFirstName());
                statement.setString(3, getLastName());
                statement.setString(4, getPassword());
        }
        
        catch (Exception ex) {
        	ex.printStackTrace();
        }

//Just return the PreparedStatement that was passed to the method, and that's it for the setStatementValues method.

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

//This method is no longer used, so just ignore it. However, you'll still need to override it, since it's in the Accessible interface.

	@Override
	public Object getPrimaryKey() {
		return ID;
	}
	
//This method returns the position of the attribute that corresponds to the database's primary key.
//For example, "ID" is the primary key for this object in the imaginary database's table. It is also the first attribute declared in the list of global variables, so the this method will return 0.
//Unlike the method above, this one actually does still have a purpose, and it needs to return a relevant value.

	@Override
	public int getPrimaryKeyIndex() {
		return 0;
	}
	
	public static void main(String[] args) {
		new Test();
	}
}
