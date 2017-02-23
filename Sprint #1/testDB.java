/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import DAO.DBConnection;
import java.sql.SQLException;

/**
 *
 * @author Carl Moon
 * @author Camran Randolph
 */
public class testDB {
    

public static void main(String[] args)
{
    //User Table
    //String sql = "Select * from user where UserID = ?";
    //String var = "78";
    
    //Participant
    //String sql = "Select * from participant where participantID = ?";
    //String var = "2";
    
    //note
    try
    {
    String sql = "Select * from note where NoteID = ?";
    String var = "6";
    Object[] oa = DBConnection.select(sql,var);
    for(int i = 0; i< oa.length; i++)
    {
        System.out.println(oa[i]);
    }
    }//try
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
}//static void main(String[] args)

}// end public class testDB {