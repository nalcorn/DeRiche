/******************************************************************************************
* @author Trevor Bal 3-6-17
* Forms business object for DeRichie web app.
* version 1.0
*****************************************************************************************/
package Business;

import DAO.db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/******************************************************************************************
* 
* Forms main class for DeRichie web application.
*****************************************************************************************/
public class Forms {

    
    private String formID;
    
    private String userID;
    
    private String patientID;
    
    private String formType;
    
    private String formInfo;
    
    private String date;
    
    private String revision1;
    

 /**
     * @return the formID
     */
    public String getFormID() {
        return formID;
    }

    /**
     * @param formID the formID to set
     */
    public void setFormID(String formID) {
        this.formID = formID;
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
     * @return the patientID
     */
    public String getPatientID() {
        return patientID;
    }

    /**
     * @param patientID the patientID to set
     */
    public void setPatientID(String patientID) {
        this.patientID = patientID;
    }

    /**
     * @return the formType
     */
    public String getFormType() {
        return formType;
    }

    /**
     * @param formType the formType to set
     */
    public void setFormType(String formType) {
        this.formType = formType;
    }

    /**
     * @return the formInfo
     */
    public String getFormInfo() {
        return formInfo;
    }

    /**
     * @param formInfo the formInfo to set
     */
    public void setFormInfo(String formInfo) {
        this.formInfo = formInfo;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the revision1
     */
    public String getRevision1() {
        return revision1;
    }

    /**
     * @param revision1 the revision1 to set
     */
    public void setRevision1(String revision1) {
        this.revision1 = revision1;
    }  
    
/******************************************************************************************
*   
* Forms display for testing.
 *****************************************************************************************/
    public void display()
    {
        System.out.println("Begin Forms.java display ");
        System.out.println("Form Id: "+getFormID());
        System.out.println("User ID:" +getUserID());
        System.out.println("Patient ID: "+getPatientID());
        System.out.println("Form Type: "+getFormType());
        System.out.println("Form Info: "+getFormInfo());
        System.out.println("Date: "+getDate());
        System.out.println("Revision: "+getRevision1());
        System.out.println("End Forms.java display ");
    }//end display
/******************************************************************************************
* SelectDB() Method
* 
*****************************************************************************************/
public void selectDB(String fid) throws SQLException
{
    formID = fid;
 
    
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "Select * from forms where FormID = ?";
    
        try
        {
            con1 = db.dbc();
            ps = con1.prepareStatement(sql);
            ps.setString(1, getFormID());
            //execute sql statement
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            { 
                setUserID(rs.getString(2));
                setPatientID(rs.getString(3));
                setFormType(rs.getString(4));
                setFormInfo(rs.getString(5));
                setDate(rs.getString(6));
                setRevision1(rs.getString(7));
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
* Insert method will put forms info into the DeRichie web app.
* Inserts into the forms table.
*******************************************************************************/

public void insertDB(String uid, String pid, String ft, String fi, String dt, String r1) throws SQLException
{
   userID = uid;
   patientID = pid;
   formType = ft;
   formInfo = fi;
   date = dt;
   revision1 = r1;
           
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "insert into forms"
                                      +"(userID, patientID, formType, formInfo, date, revision1) values"
            
                                      +"(?,?,?,?,?,?)";
        
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        ps.setString(1, getUserID());
        ps.setString(2, getPatientID());
        ps.setString(3, getFormType());
        ps.setString(4, getFormInfo());
        ps.setString(5, getDate());
        ps.setString(6, getRevision1());
     
        
        int n = ps.executeUpdate();
          
        if(n==1)
        { 
            System.out.println("Insert Forms.java Successful!!!");
        }
        else
        {
            System.out.println("Insert Forms.java Failed!!!");
           
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
* This will allow the admin to update
* the forms table in the in the DeRichie DB.
*****************************************************************************************/
public void updateDBAdmin() throws SQLException
{
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "update forms set userID =?, patientID =?, formType = ?, formInfo = ?, date = ?, revision1 = ? Where FormID = ?";
    
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        ps.setString(1, getUserID());
        ps.setString(2, getPatientID());
        ps.setString(3, getFormType());
        ps.setString(4, getFormInfo());
        ps.setString(5, getDate());
        ps.setString(6, getRevision1());       
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
}//end updateDBAdmin
/******************************************************************************************
* deleteDB() Method
* This deleteDB method will go in to the forms table in the Deriche DB.
*****************************************************************************************/
public void deleteDB() throws SQLException
{
      
    PreparedStatement ps = null;
    Connection con1 = null;
    
    
 
    String sql = "delete from forms where FormID = ?";
    
    
        try
        {
          con1 = db.dbc();
          ps = con1.prepareStatement(sql);
          
          ps.setString(1, getFormID());

          
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
//Testing selectDB(String un)
     try
    {
        Forms f = new Forms();
        f.selectDB("6");
        f.display();
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
        Forms f = new Forms();
        f.insertDB("test uID", "test pID", "test type", "test info", "test date", "test revision");
        f.display();
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
        Forms f = new Forms();
        f.selectDB("43");
        f.setRevision1("0");
        f.updateDBAdmin();
        f.display();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    } 
    */
    
    //Testing deleteDB
    /*
    try
    {
        Forms f = new Forms();
        f.selectDB("43");
        f.display();
        f.deleteDB();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
    */
}//end main method 
    
}// end public class Forms