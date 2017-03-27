<%-- 
    Document   : forms sample code - middle info
    Created on : Mar 15, 2017, 1:56:01 PM
    Author     : Trevor  Bal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample code for forms</title>
    </head>
    <body>
        <h1>CANVAS WOULD GO HERE</h1>
        <form>
            Patient First Name:<br>
            <input type="text" name="firstName"><br>
            Patient Last Name:<br>
            <input type="text" name="lastName"><br>
            Patient ID:<br>
            <input type="text" name="patId"><br>
            Explain what happened:<br>
            <textarea name="what" rows="4" cols="50">
            </textarea><br>
            Where did it happen:<br>
            <input type="text" name="where"><br>
            When did it happen:<br>
            <input type="text" name="when"><br>
            Why did it happen:<br>
            <textarea name="why" rows="4" cols="50">
            </textarea><br>
            What did you do? Describe First Aid administered and follow up:<br>
            <textarea name="firstAid" rows="4" cols="50">
            </textarea><br>
            Recommendations for follow up:<br>
            <textarea  name ="recommend" rows="4" cols="50">
            </textarea><br>
        <h1>SIGNATURE SECTION WOULD GO HERE</h1>
        
         <input type="submit" value="Submit"/>  <input type="reset" value="Clear"/>
        </form>
    </body>
</html>
