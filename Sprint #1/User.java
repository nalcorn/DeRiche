/******************************************************************************************
* @author Carl Moon
*@3-28-17
* User business object for DeRichie web app.
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
* @ description User main class for DeRichie web app.


*****************************************************************************************/
public class User 
{
    private String userId;
   
    private String userName;
    //users password
    private String pass;
    //user pin
    private String pin;
    //first name
    private String fn;
    //last name
    private String ln;
    //title
    private String t;
    //clearence
    private String c;
    
    /**
     * @return the userId
     */
    public String getUserId() 
    {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(String userId) 
    {
        this.userId = userId;
    }
    
        /**
     * @return the uid
     */
    
    /**
     * @return the userName
     */
    public String getUserName() 
    {
        return userName;
    }

    /**
     * @param userName the userName to set user name
     */
    public void setUserName(String userName) 
    {
        this.userName = userName;
    }
 
    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }
    
    /**
     * @return the pin
     */
    public String getPin() 
    {
        return pin;
    }

    /**
     * @param pin the pin to set
     */
    public void setPin(String pin) 
    {
        this.pin = pin;
    }

    /**
     * @return the fn
     */
    public String getFn() {
        return fn;
    }

    /**
     * @param fn set first name
     */
    public void setFn(String fn) 
    {
        this.fn = fn;
    }

    /**
     * @return the ln last name
     */
    public String getLn() 
    {
        return ln;
    }

    /**
     * @param ln set last name
     */
    public void setLn(String ln) 
    {
        this.ln = ln;
    }

    /**
     * @return the t
     */
    public String getT() 
    {
        return t;
    }

    /**
     * @param t set the title
     */
    public void setT(String t) 
    {
        this.t = t;
    }

    /**
     * @return the c clearence
     */
    public String getC() 
    {
        return c;
    }

    /**
     * @param c set c clearence
     */
    public void setC(String c) 
    {
        this.c = c;
    }
    
/******************************************************************************************
 * 
*  User display for testing.
*@description it dispalys user id,user name,password,pin,first anme ,last name,title,and clearense 
 *****************************************************************************************/
    public void display()
    {
        System.out.println("Begin User.java display ");
        System.out.println("User Id: "+getUserId());
        System.out.println("User Name: "+getUserName());
        System.out.println("Password: "+getPass());
        System.out.println("Pin: "+getPin());
        System.out.println("First Name: "+getFn());
        System.out.println("Last Name: "+getLn());
        System.out.println("Title: "+getT());
        System.out.println("Clearence: "+getC());
        System.out.println("End User.java display ");
    }//end display
/******************************************************************************************
* SelectDB() Method
*@ description This selectDB method will go in to the Appointments table in the Dentist DB.
*@param un user id
*@throws SQLException
*****************************************************************************************/
public void selectDB(String un) throws SQLException
{
    userId = un;
 
    
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "Select * from user where UserID = ?";
    
        try
        {
            con1 = db.dbc();
            ps = con1.prepareStatement(sql);
            ps.setString(1, getUserId());
            //execute sql statement
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            { 
                //setUserId(rs.getString(1));
                setUserName(rs.getString(2));
                setPass(rs.getString(3));
                setPin(rs.getString(4));
                setFn(rs.getString(5));
                setLn(rs.getString(6));
                setT(rs.getString(7));
                setC(rs.getString(8));
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
*@description Insert method will put user info into the DeRichie web app.
*@description Inserts into the User table.
*@param ui user id
*@param  un user name
*@param pass password
*@param 
*******************************************************************************/

public void insertDB(String ui, String un, String r, String p, String f, String l, String T, String C) throws SQLException
{
   userId = ui;
   userName = un;
   pass = r;
   pin = p;
   fn = f;
   ln = l;
   t = T;
   c = C;     

    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "insert into user"
                                      +"(UserID, UserName, Password, PIN, FirstName, LastName, Title, Clearance) values"
            
                                      +"(?,?,?,?,?,?,?,?)";
        
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        ps.setString(1, getUserId());
        ps.setString(2, getUserName());
        ps.setString(3, getPass());
        ps.setString(4, getPin());
        ps.setString(5, getFn());
        ps.setString(6, getLn());
        ps.setString(7, getT());
        ps.setString(8, getC());
        
        
         int n = ps.executeUpdate();
          
        if(n==1)
        { 
            System.out.println("Insert User.java Successful!!!");
        }
        else
        {
            System.out.println("Insert User.java Failed!!!");
           
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
* the user table in the in the DeRichie DB.
*****************************************************************************************/
public void updateDBAdmin() throws SQLException
{
    Connection con1 = null;
    PreparedStatement ps = null;
    
    String sql = "update user set UserName =?, Password = ?, PIN = ?, FirstName = ?, LastName = ?, Title = ?, Clearance = ? Where UserID = ?";
    
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        
        ps.setString(1, getUserName());
        ps.setString(2, getPass());
        ps.setString(3, getPin());
        ps.setString(4, getFn());
        ps.setString(5, getLn());
        ps.setString(6, getT());
        ps.setString(7, getC());
        ps.setString(8, getUserId());
        
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
    
    String sql = "update user set Password = ?, PIN = ? Where UserID = ?";
    
    try
    {
        con1 = db.dbc();
        ps = con1.prepareStatement(sql);
        
        
        ps.setString(1, getPass());
        ps.setString(2, getPin());
        ps.setString(3, getUserId());
        
        
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
* This deleteDB method will go in to the Patients table in the Dentist DB.
*****************************************************************************************/
public void deleteDB() throws SQLException
{
      
    PreparedStatement ps = null;
    Connection con1 = null;
    
    
 
    String sql = "delete from user  where UserID = ?";
    
    
        try
        {
          con1 = db.dbc();
          ps = con1.prepareStatement(sql);
          
          ps.setString(1, getUserId());

          
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
        User us = new User();
        us.selectDB("73");
        us.display();
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
    
    //Testing deleteDB
    try
    {
        User us = new User();
        us.selectDB("9");
        us.display();
        us.deleteDB();
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
   
}//end main method   

}// endpublic class User 
