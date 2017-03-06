/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Carl
 */
public class NoteTest {
    
    public NoteTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getNoteID method, of class Note.
     */
    @Test
    public void testGetNoteID() {
        System.out.println("getNoteID");
        Note instance = new Note();
        String expResult = "x37-1";
        instance.setNoteID(expResult);
        String result = instance.getNoteID();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setNoteID method, of class Note.
     */
    @Test
    public void testSetNoteID() {
        System.out.println("setNoteID");
        String noteID = "";
        Note instance = new Note();
        instance.setNoteID(noteID);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getNotes method, of class Note.
     */
    @Test
    public void testGetNotes() {
        System.out.println("getNotes");
        Note instance = new Note();
        String expResult = "1";
        instance.setNotes(expResult);
        String result = instance.getNotes();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setNotes method, of class Note.
     */
    @Test
    public void testSetNotes() {
        System.out.println("setNotes");
        String notes = "";
        Note instance = new Note();
        instance.setNotes(notes);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getTime_Started method, of class Note.
     */
    @Test
    public void testGetTime_Started() {
        System.out.println("getTime_Started");
        Note instance = new Note();
        String expResult = "2";
        instance.setTime_Started(expResult);
        String result = instance.getTime_Started();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setTime_Started method, of class Note.
     */
    @Test
    public void testSetTime_Started() {
        System.out.println("setTime_Started");
        String Time_Started = "";
        Note instance = new Note();
        instance.setTime_Started(Time_Started);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getLast_Updated method, of class Note.
     */
    @Test
    public void testGetLast_Updated() {
        System.out.println("getLast_Updated");
        Note instance = new Note();
        String expResult = "3";
        instance.setLast_Updated(expResult);
        String result = instance.getLast_Updated();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setLast_Updated method, of class Note.
     */
    @Test
    public void testSetLast_Updated() {
        System.out.println("setLast_Updated");
        String Last_Updated = "";
        Note instance = new Note();
        instance.setLast_Updated(Last_Updated);
        // TODO review the generated test code and remove the default call to fail.
       
    }

    /**
     * Test of getTime_Submitted method, of class Note.
     */
    @Test
    public void testGetTime_Submitted() {
        System.out.println("getTime_Submitted");
        Note instance = new Note();
        String expResult = "4";
        instance.setTime_Submitted(expResult);
        String result = instance.getTime_Submitted();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }

    /**
     * Test of setTime_Submitted method, of class Note.
     */
    @Test
    public void testSetTime_Submitted() {
        System.out.println("setTime_Submitted");
        String Time_Submitted = "";
        Note instance = new Note();
        instance.setTime_Submitted(Time_Submitted);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getTime_Accepted method, of class Note.
     */
    @Test
    public void testGetTime_Accepted() {
        System.out.println("getTime_Accepted");
        Note instance = new Note();
        String expResult = "4";
        instance.setTime_Accepted(expResult);
        String result = instance.getTime_Accepted();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setTime_Accepted method, of class Note.
     */
    @Test
    public void testSetTime_Accepted() {
        System.out.println("setTime_Accepted");
        String Time_Accepted = "";
        Note instance = new Note();
        instance.setTime_Accepted(Time_Accepted);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getComment method, of class Note.
     */
    @Test
    public void testGetComment() {
        System.out.println("getComment");
        Note instance = new Note();
        String expResult = "4";
        instance.setComment(expResult);
        String result = instance.getComment();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setComment method, of class Note.
     */
    @Test
    public void testSetComment() {
        System.out.println("setComment");
        String Comment = "";
        Note instance = new Note();
        instance.setComment(Comment);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getSubmitted method, of class Note.
     */
    @Test
    public void testGetSubmitted() {
        System.out.println("getSubmitted");
        Note instance = new Note();
        String expResult = "5";
        instance.setSubmitted(expResult);
        String result = instance.getSubmitted();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setSubmitted method, of class Note.
     */
    @Test
    public void testSetSubmitted() {
        System.out.println("setSubmitted");
        String Submitted = "";
        Note instance = new Note();
        instance.setSubmitted(Submitted);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getTimeReviewer_Accepted method, of class Note.
     */
    @Test
    public void testGetTimeReviewer_Accepted() {
        System.out.println("getTimeReviewer_Accepted");
        Note instance = new Note();
        String expResult = "6";
        instance.setTimeReviewer_Accepted(expResult);
        String result = instance.getTimeReviewer_Accepted();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setTimeReviewer_Accepted method, of class Note.
     */
    @Test
    public void testSetTimeReviewer_Accepted() {
        System.out.println("setTimeReviewer_Accepted");
        String TimeReviewer_Accepted = "";
        Note instance = new Note();
        instance.setTimeReviewer_Accepted(TimeReviewer_Accepted);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getNoteReviewer_Accepted method, of class Note.
     */
    @Test
    public void testGetNoteReviewer_Accepted() {
        System.out.println("getNoteReviewer_Accepted");
        Note instance = new Note();
        String expResult = "7";
        instance.setNoteReviewer_Accepted(expResult);
        String result = instance.getNoteReviewer_Accepted();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setNoteReviewer_Accepted method, of class Note.
     */
    @Test
    public void testSetNoteReviewer_Accepted() {
        System.out.println("setNoteReviewer_Accepted");
        String NoteReviewer_Accepted = "";
        Note instance = new Note();
        instance.setNoteReviewer_Accepted(NoteReviewer_Accepted);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getPatientID method, of class Note.
     */
    @Test
    public void testGetPatientID() {
        System.out.println("getPatientID");
        Note instance = new Note();
        String expResult = "8";
        instance.setPatientID(expResult);
        String result = instance.getPatientID();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setPatientID method, of class Note.
     */
    @Test
    public void testSetPatientID() {
        System.out.println("setPatientID");
        String patientID = "";
        Note instance = new Note();
        instance.setPatientID(patientID);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getUserID method, of class Note.
     */
    @Test
    public void testGetUserID() {
        System.out.println("getUserID");
        Note instance = new Note();
        String expResult = "9";
        instance.setUserID(expResult);
        String result = instance.getUserID();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setUserID method, of class Note.
     */
    @Test
    public void testSetUserID() {
        System.out.println("setUserID");
        String UserID = "";
        Note instance = new Note();
        instance.setUserID(UserID);
        // TODO review the generated test code and remove the default call to fail.
        
    }


    
    
}