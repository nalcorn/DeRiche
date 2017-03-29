/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import DAO.db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Carl
 */
public class Goal 
{
    private String goalID;
    private String desc;
    private String objec;
    private String note;
    private String freq;
    private String isweekly;
    private String patientID;

    /**
     * @return the goalID
     */
    public String getGoalID() {
        return goalID;
    }

    /**
     * @param goalID the goalID to set
     */
    public void setGoalID(String goalID) {
        this.goalID = goalID;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * @return the objec
     */
    public String getObjec() {
        return objec;
    }

    /**
     * @param objec the objec to set
     */
    public void setObjec(String objec) {
        this.objec = objec;
    }

    /**
     * @return the note
     */
    public String getNote() {
        return note;
    }

    /**
     * @param note the note to set
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * @return the freq
     */
    public String getFreq() {
        return freq;
    }

    /**
     * @param freq the freq to set
     */
    public void setFreq(String freq) {
        this.freq = freq;
    }

    /**
     * @return the isweekly
     */
    public String getIsweekly() {
        return isweekly;
    }

    /**
     * @param isweekly the isweekly to set
     */
    public void setIsweekly(String isweekly) {
        this.isweekly = isweekly;
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
/******************************************************************************************
*   
* User display for testing.
 *****************************************************************************************/
    public void display()
    {
        System.out.println("Begin Goal.java display ");
        System.out.println("Goal Id: "+getGoalID());
        System.out.println("Description: "+getDesc());
        System.out.println("Objective: "+getObjec());
        System.out.println("Note: "+getNote());
        System.out.println("Frequency: "+getFreq());
        System.out.println("IsWeekly: "+getIsweekly());
        System.out.println("PatientID: "+getPatientID());
        System.out.println("End Goal.java display ");
    }//end display
/******************************************************************************************
* SelectDB() Method
* This selectDB method will go in to the Appointments table in the Dentist DB.
*****************************************************************************************/
public void selectDB(String gid) throws SQLException
{
    goalID = gid;
 
    
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "Select * from goal where GoalID = ?";
    
        try
        {
            con1 = db.dbc();
            ps = con1.prepareStatement(sql);
            ps.setString(1, getGoalID());
            //execute sql statement
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            { 
         
                setDesc(rs.getString(2));
                setObjec(rs.getString(3));
                setNote(rs.getString(4));
                setFreq(rs.getString(5));
                setIsweekly(rs.getString(6));
                setPatientID(rs.getString(7));
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
* Insert method will put user info into the DeRichie web app.
* Inserts into the note table.
*******************************************************************************/

public void insertDB(String gid, String d, String ob, String nt, String fr, String wkly, String pid) throws SQLException
{
    goalID = gid;
    desc = d;
    objec = ob;
    note = nt;
    freq = fr;
    isweekly = wkly;
    patientID = pid;  
    
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "insert into goal"
                                      +"(goalid, Description, objective, note, frequency, isweekly, patientID) values" 
            
                                      +"(?,?,?,?,?,?,?)";
        
    try 
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
       
        ps.setString(1, getGoalID());
        ps.setString(2, getDesc());
        ps.setString(3, getObjec());
        ps.setString(4, getNote());
        ps.setString(5, getFreq());
        ps.setString(6, getIsweekly());
        ps.setString(7, getPatientID());
        
        
        
         int n = ps.executeUpdate();
          
        if(n==1)
        { 
            System.out.println("Insert Goal.java Successful!!!");
        }
        else
        {
            System.out.println("Insert Goal.java Failed!!!");
           
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
* the note table in the in the DeRichie DB.
*****************************************************************************************/
public void updateDB() throws SQLException
{
    Connection con1 = null;
    PreparedStatement ps = null;
   
    String sql = "update goal set description = ?, objective = ?, note = ?, frequency = ?, isweekly = ?, patientID = ? Where GoalID = ?";
    
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        
        
        ps.setString(1, getDesc());
        ps.setString(2, getObjec());
        ps.setString(3, getNote());
        ps.setString(4, getFreq());
        ps.setString(5, getIsweekly());
        ps.setString(6, getPatientID());
        ps.setString(7, getGoalID());
        
        System.out.println(sql);
          
          
          
        int n = ps.executeUpdate();
          
        if(n==1)
        { 
            System.out.println("Goal Update Successful!!!");
        }
        else
        {
            System.out.println("Goal Update Failed!!!");
           
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
* This deleteDB method will go in to the  table in the Dentist DB.
*****************************************************************************************/
public void deleteDB() throws SQLException
{
      
    PreparedStatement ps = null;
    Connection con1 = null;
    
    
 
    String sql = "delete from goal where GoalID = ?";
    
    
        try
        {
          con1 = db.dbc();
          ps = con1.prepareStatement(sql);
          
          ps.setString(1, getGoalID());

          
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
        Goal g = new Goal();
        g.selectDB("4");
        g.display();
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
        Goal g = new Goal();
        g.insertDB("14","this is a test", "test this class", "if inserts it is correct", "2", "1", "73");
        g.display();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
    */
    /*
    //Testing updateDB
    try
    {
        Goal g = new Goal();
        g.selectDB("14");
        g.setNote("Test1");
        g.updateDB();
        g.display();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    } 
    */
    
    //Testing deleteDB
    try
    {
        Goal g = new Goal();
        g.selectDB("14");
        g.display();
        g.deleteDB();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
     
}//end main method             
}//end public class Goal 
