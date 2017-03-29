<%-- 
    Author     : Trevor Bal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table#t01 {   
                width: 50%;
                text-align: center;
            }
            table, th, td {
                border: 1px solid black;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Internal Incident Report</title>
    </head>
    <body>
        <h1>Internal Incident Report</h1>
        <form>
        <table id="t01">
        <tr>
            <td>
                Date of Incident:
                <input type="date" name="incidentdate">
            </td>
            <td>
                Time of Incident:
                <input type="time" name="incidenttime">
            </td>
            <td>
                Patient Name:
                <input type="text" name="firstname">
            </td>
            <td>
                Location of Incident:
                <input type="text" name="location">
            </td>
        </tr>
        <tr>
            <td>
                Supervisor Notified:
                <input type="text" name="supervisor">
            </td>
            <td>
                Staff Name:
                <input type="text" name="staff">
            </td>
            <td>
                Date:
                <input type="date" name="date">
            </td>
            <td>
                Time:
                <input type="time" name="time">
            </td>
        </tr>
        </table>
        <br>
        <table id="t01">
            <caption><b>Type of Incident:</b>(Please select from drop down list under correct section)</caption>
        <tr>
            <td>
               Injury
                <input list="injury">
                <datalist id="injury">
                    <option value="Patient">
                    <option value="Staff">
                    <option value="Visitor">
                </datalist>
            </td>
            <td>
               Damage
                <input list="damage">
                <datalist id="damage">
                    <option value="DeRiche Property">
                    <option value="Personal Property">
                    <option value="Vehicle">
                    <option value="Other">
                </datalist>
            </td>
            <td>
                Infectious / Contagious Disease
                <input type="checkbox" name="disease" value="disease">
            </td>
            <td>
                Medication Issue
                <input list="medication">
                <datalist id="medication">
                    <option value="Error">
                    <option value="Adverse Drug Reaction">
                    <option value="Food / Drug Interaction">
                    <option value="Property Loss">
                    <option value="Patient Absence">
                    <option value="Other">
                </datalist>
            </td>
        </tr>
        </table>
        <p>If "Other" in any section, please describe below:</p>
        <textarea name="other" rows="2" cols="50"></textarea><br>
        <h3>Classification of Incident (Check any that apply)</h3>
        <input type="checkbox" name="sib" value="SIB">SIB<br>
        <input type="checkbox" name="attention" value="Attention Seeking">Attention Seeking<br>
        <input type="checkbox" name="security" value="Security">Security<br>
        <input type="checkbox" name="other2" value="Other">Other<br>
        <input type="checkbox" name="minor" value="Minor">Minor<br>
        <input type="checkbox" name="mild" value="Mild">Mild<br>
        <input type="checkbox" name="moderate" value="Moderate">Moderate<br>
        <input type="checkbox" name="major" value="Major">Major<br>
        <h3>Location of Injury</h3>
        <p>Mark on the figures the general area of any cuts, scratches, marks or bruises possibly relating to the incident/accident.</p>
        <h1>CANVAS AREA WOULD GO HERE</h1>
        <p>Other Person(s) Involved Participant, Staff, Visitor, please use first name or initials only:</p>
        <textarea name="otherinvolved" rows="2" cols="50"></textarea><br><br>
        <h3>Description of Incident</h3>
        <p>Was anyone injured? Was first aid needed? Who? Describe.</p>
        <textarea name="anyone" rows="2" cols="50"></textarea><br>
        <p>What happened before the incident took place?</p>
        <textarea name="before" rows="2" cols="50"></textarea><br>
        <p>What happened during the incident?</p>
        <textarea name="during" rows="2" cols="50"></textarea><br>
        <p>What happened right after the incident?</p>
        <textarea name="after" rows="2" cols="50"></textarea><br>
        <p>Why did the incident occur?</p>
        <textarea name="why" rows="2" cols="50"></textarea><br>
        <p>What did you do?</p>
        <textarea name="what" rows="2" cols="50"></textarea><br>
        
        <p>**Report must be completed by employee within 24 hours of incident. If incident involves more than one participant, fill out separate report for each.**</p>
        <p>Name of person completing this Incident/Accident Form & Date:</p>
        <input type="text" name="person" placeholder="Name"> <input type="date" name="date1">
        <br>
        <h3>Review: Recommendations for Follow-Up</h3>
        <textarea name="recommend" rows="4" cols="50"></textarea><br>
        <p>Printed Name Person Reviewing Report:</p>
        <input type="text" name="reviewing">
        
        <h1>SIGNATURE WOULD GO HERE WITH DATE</h1><br>
        
        
        <input type="submit" value="Submit"/>  <input type="reset" value="Clear"/>
        </form>
    </body>
</html>
