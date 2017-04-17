<%-- 
    Document   : Bodycheck.jsp
    Author     : Trevor  Bal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Body Check Form</title>
    </head>
    <body>
        <h1>CANVAS WOULD GO HERE</h1>
        <form action="#" method="post">
            
            Patient First Name:<br>
            <input type="text" name="firstName"><br>
            Patient Last Name:<br>
            <input type="text" name="lastName"><br>
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
        Select the date:<br>
        <input type="date" name="date"><br>
         <input type="submit" value="Submit"/>  <input type="reset" value="Clear"/>
        </form>
         <button onclick="myFunction()">Help</button>
            <script>
                function myFunction() {
                    alert(
                          "1.Click navigation to Create Form page in the left column\n2.Select Body Check Form from drop down menu\n3.Mark on the chart below any abnormities observed\n4.Enter Participant’s name in the field provided (First name and last name) \n5.In the “Explain what happened” section, please type out how Participant received any abnormalities\n6.In the “Where / When” section, please type out Where & When Participant received any abnormalities\n7.In the “What did you do? Describe First Aid administered and follow up” section, please type out exactly what First Aid was administered and what steps were taken to follow up\n8.In the “Recommendations for follow up” section, please type in any recommendations you have for the participant\n9.Enter your name in the field provided\n10.Sign the signature box with the mouse\n11.Select date from the Date Picker\n");
                }
            </script>
    </body>
</html>