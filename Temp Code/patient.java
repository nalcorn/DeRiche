/******************************************************************************************
* @author Trevor Bal 3-1-17
* patient business object for DeRichie web app.
* version 1.0
*****************************************************************************************/
package Business;

import DAO.*;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

/******************************************************************************************
* 
* Patient main class for DeRichie web application.
*****************************************************************************************/
public class patient 
{
    //patients identification number
    private int patientId;
    //patients first name
    private String firstName;
    //patients last name
    private String lastName;
    //patients insurance company
    private String insurance;
    //patients medicaid number
    private String medicaidNumber;
    
    /**
     * @return the patient Id
     */
    public int getPatientId() 
    {
        return patientId;
    }

    /**
     * @param patId the patId to set
     */
    public void setPatientId(int patientId) 
    {
        this.patientId = patientId;
    }
    
     /**
     * @return the first name of the patient
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param fName the fName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    /**
     * @return the last name of the patient
     */
    public String getLastName() 
    {
        return lastName;
    }

    /**
     * @param lName the lName to set
     */
    public void setLastName(String lastName) 
    {
        this.lastName = lastName;
    }
 
    /**
     * @return the insurance company
     */
    public String getInsurance() {
        return insurance;
    }

    /**
     * @param insCo the insCo to set
     */
    public void setInsurance(String insurance) {
        this.insurance = insurance;
    }
    
    /**
     * @return the medicaid number
     */
    public String getMedicaidNumber() 
    {
        return medicaidNumber;
    }

    /**
     * @param mediNo the mediNo to set
     */
    public void setMedicaidNumber(String medicaidNumber) 
    {
        this.medicaidNumber = medicaidNumber;
    }

    
/******************************************************************************************
* 
* Patient display for testing.
 *****************************************************************************************/
    public void display()
    {
        System.out.println("Begin patient.java display ");
        System.out.println("Patient Id: "+getPatientId());
        System.out.println("First Name: "+getFirstName());
        System.out.println("Last Name: "+getLastName());
        System.out.println("Insurance Co.: "+getInsurance());
        System.out.println("Medicaid Number: "+getMedicaidNumber());
        System.out.println("End patient.java display ");
    }//end display
    
/******************************************************************************************
* SelectDB() Method
* This selectDB method select a patient by their patient ID number
*****************************************************************************************/
public void selectDB(int patientId) throws SQLException
{
    patientId = patientId;
 
    
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "Select * from patient where PatientID = ?";
    
        try
        {
            con1 = db.dbc();
            ps = con1.prepareStatement(sql);
            ps.setInt(1, getPatientId());
            //execute sql statement
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            { 
                //setUserId(rs.getString(1));
                setFirstName(rs.getString(2));
                setLastName(rs.getString(3));
                setInsurance(rs.getString(4));
                setMedicaidNumber(rs.getString(5));
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
            
        finally
        {
            if (ps != null)
            {
                ps.close();
            }
            
            if(con1 != null)
            {
            con1.close();
            }
        }
           
}// end public void selectDB

/*******************************************************************************
* Insert method will put patient info into the DeRichie web application.
* Inserts into the Participant table.
*******************************************************************************/

public void insertDB(int patientId, String firstName, String lastName, String insurance, String medicaidNumber) throws SQLException
{
   patientId = patientId;
   firstName = firstName;
   lastName = lastName;
   insurance = insurance;
   medicaidNumber = medicaidNumber;    

    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "insert into patient"
                                      +"(PatientID, Firstname, Lastname, Insurance, MedicaidNumber) values"
            
                                      +"(?,?,?,?,?,?,?,?)";
        
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        ps.setInt(1, getPatientId());
        ps.setString(2, getFirstName());
        ps.setString(3, getLastName());
        ps.setString(4, getInsurance());
        ps.setString(5, getMedicaidNumber());

        
        
         int n = ps.executeUpdate();
          
        if(n==1)
        { 
            System.out.println("Insert patient.java Successful!!!");
        }
        else
        {
            System.out.println("Insert patient.java Failed!!!");
           
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    finally
    {
        if(ps != null)
        {
            ps.close();
        }
        
        if(con1 != null)
        {
            con1.close();
        }
    }
}// end public void insertDB

/******************************************************************************************
** updateDBAdmin() Method
* This will allow the administrator to update
* the user table in the in the DeRichie DB.
*****************************************************************************************/
public void updateDBAdmin() throws SQLException
{
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "update patient set Firstname = ?, Lastname = ?, Insurance = ?, MedicaidNumber = ? Where PatientID = ?";
    
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        
        ps.setString(1, getFirstName());
        ps.setString(2, getLastName());
        ps.setString(3, getInsurance());
        ps.setString(4, getMedicaidNumber());
        ps.setInt(5, getPatientId());
        
        //System.out.println(sql);
          
          
          
        int n = ps.executeUpdate();
          
        if(n==1)
        { 
            System.out.println("Admin Update Successful!!!");
        }
        else
        {
            System.out.println("Admin Update Failed!!!");
           
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    finally
    {
        if(ps != null)
        {
            ps.close();
        }
        
        if(con1 != null)
        {
            con1.close();
        }
    }
}//end updateDB
/******************************************************************************************
* updateDB() Method
* This updateDB method will allow a non admin
* user to update the user table with limited access in the in the DeRichie DB.
*****************************************************************************************/
public void updateDB() throws SQLException
{
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "update patient set Firstname = ?, Lastname = ? Where PatientID = ?";
    
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        
        ps.setString(1, getFirstName());
        ps.setString(2, getLastName());
        ps.setInt(3, getPatientId());
        
        
        System.out.println(sql);
          
          
          
        int n = ps.executeUpdate();
          
        if(n==1)
        { 
            System.out.println("Non - Admin Update Successful!!!");
        }
        else
        {
            System.out.println("Non - Admin Update Failed!!!");
           
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    finally
    {
        if(ps != null)
        {
            ps.close();
        }
        
        if(con1 != null)
        {
            con1.close();
        }
    }
}//end updateDBAdmin

/******************************************************************************************
* deleteDB() Method
* This deleteDB method will go in to participant table
*****************************************************************************************/
public void deleteDB() throws SQLException
{
      
    PreparedStatement ps = null;
    Connection con1 = null;
    
    
 
    String sql = "delete from patient  where PatientID = ?";
    
    
        try
        {
          con1 = db.dbc();
          ps = con1.prepareStatement(sql);
          
          ps.setInt(1, getPatientId());

          
          System.out.println(sql);
          
          
          
           int n = ps.executeUpdate();
          
           if(n==1)
           { 
               System.out.println("Delete Successful!!!");
           }
           else
           {
               System.out.println("Delete Failed!!!");
           
           }
                  
        }//end try
        catch(SQLException e)
        {
           e.printStackTrace();
        }
        finally
        {
            try
            {    
                if(ps != null)
                {
                    ps.close();
                }
                if(con1 != null)
                {
                    con1.close();
                }
            }
            catch(SQLException sqle)
            {
                System.out.println(sqle);
            }
        }//end finally
   }//end deleteDB
public static void main(String[] args)
{
   /*
//Testing selectDB(String p1)
     try
    {
        patient p1 = new patient();
        p1.selectDB(1);
        p1.display();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
    */
    /*
     //Testing insertDB
    try
    {
        User us = new User();
        us.insertDB("5", "cmoon10", "cmoon10", "3124", "Carl", "Moon", "Admin", "0");
        us.display();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
    */
    /*
    //Testing updateDBAdmin
    try
    {
        User us = new User();
        us.selectDB("5");
        us.setPass("pass");
        us.updateDBAdmin();
        us.display();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    } */
   /*
    //Testing updateDB
    try
    {
        User us = new User();
        us.selectDB("5");
        us.setPass("pass1");
        us.updateDB();
        us.display();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
    */
    
    /*
    //Testing deleteDB
    try
    {
        patient p1 = new patient();
        p1.selectDB(1);
        p1.display();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
   */
}//end main method   

}// endpublic class User 