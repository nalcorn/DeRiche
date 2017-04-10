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
public class GoalTest {
    
    public GoalTest() {
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
     * Test of getGoalID method, of class Goal.
     */
    @Test
    public void testGetGoalID() {
        System.out.println("getGoalID");
        Goal instance = new Goal();
        String expResult = "1";
        instance.setGoalID(expResult);
        String result = instance.getGoalID();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setGoalID method, of class Goal.
     */
    @Test
    public void testSetGoalID() {
        System.out.println("setGoalID");
        String goalID = "";
        Goal instance = new Goal();
        instance.setGoalID(goalID);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getDesc method, of class Goal.
     */
    @Test
    public void testGetDesc() {
        System.out.println("getDesc");
        Goal instance = new Goal();
        String expResult = "2";
        instance.setDesc(expResult);
        String result = instance.getDesc();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setDesc method, of class Goal.
     */
    @Test
    public void testSetDesc() {
        System.out.println("setDesc");
        String desc = "";
        Goal instance = new Goal();
        instance.setDesc(desc);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getObjec method, of class Goal.
     */
    @Test
    public void testGetObjec() {
        System.out.println("getObjec");
        Goal instance = new Goal();
        String expResult = "3";
        instance.setObjec(expResult);
        String result = instance.getObjec();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }

    /**
     * Test of setObjec method, of class Goal.
     */
    @Test
    public void testSetObjec() {
        System.out.println("setObjec");
        String objec = "";
        Goal instance = new Goal();
        instance.setObjec(objec);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getNote method, of class Goal.
     */
    @Test
    public void testGetNote() {
        System.out.println("getNote");
        Goal instance = new Goal();
        String expResult = "4";
        instance.setNote(expResult);
        String result = instance.getNote();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setNote method, of class Goal.
     */
    @Test
    public void testSetNote() {
        System.out.println("setNote");
        String note = "";
        Goal instance = new Goal();
        instance.setNote(note);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getFreq method, of class Goal.
     */
    @Test
    public void testGetFreq() {
        System.out.println("getFreq");
        Goal instance = new Goal();
        String expResult = "5";
        instance.setFreq(expResult);
        String result = instance.getFreq();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setFreq method, of class Goal.
     */
    @Test
    public void testSetFreq() {
        System.out.println("setFreq");
        String freq = "";
        Goal instance = new Goal();
        instance.setFreq(freq);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getIsweekly method, of class Goal.
     */
    @Test
    public void testGetIsweekly() {
        System.out.println("getIsweekly");
        Goal instance = new Goal();
        String expResult = "6";
        instance.setIsweekly(expResult);
        String result = instance.getIsweekly();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setIsweekly method, of class Goal.
     */
    @Test
    public void testSetIsweekly() {
        System.out.println("setIsweekly");
        String isweekly = "";
        Goal instance = new Goal();
        instance.setIsweekly(isweekly);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getPatientID method, of class Goal.
     */
    @Test
    public void testGetPatientID() {
        System.out.println("getPatientID");
        Goal instance = new Goal();
        String expResult = "7";
        instance.setPatientID(expResult);
        String result = instance.getPatientID();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of setPatientID method, of class Goal.
     */
    @Test
    public void testSetPatientID() {
        System.out.println("setPatientID");
        String patientID = "";
        Goal instance = new Goal();
        instance.setPatientID(patientID);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    
   
    /**
     * Test of main method, of class Goal.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        Goal.main(args);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
}
