<%@page import="dataAccess.Accessible"%>
<%@page import="Business.Forms"%>
<%@page import="dataAccess.DBConnection"%>
<%@page import="Business.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Deriche</title>
<meta charset="utf-8">
<link href="csspage.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
</script>
<![endif]-->
</head>
<body>
 <div id="wrapper">
  <header>
      <h1>DeRiche Agency,Inc.</h1>
	
	
  </header>
 
  <nav>
  <ul> 
    <li><a href="index.html">Home</a></li>
		
	 <li><a href="formRetrieval.html">Form Retieval</a></li>
        <li><a href="link1.html">to be completed</a></li>
	<li><a href="link2.html">to be completed</a></li>
	<li><a href="link3.html">to be coompeted</a></li>
	<li><a href="AboutUs.html">About US</a></li>
	<li><a href="contact.html">Contact US</a></li>
  </ul>
  </nav>
  <main>
  <h2>page name</h2>
 
  <div style="width: 1200px; height: 200px; border-spacing: 0; overflow: auto;">
    <!--
        For the JSP, add a loop for the table rows, so that every Form object from the database that is registered for the current User can be loaded into the table.
        Only Forms that are not marked as being submitted already can be retrieved. Use the revision column to decide this.
    --> 
    <form name="retrieveForm" id="retrieveForm" action="RetrieveServlet" method="post">
      <table id="myTable" cellspacing="0" cellpadding="1" border="1" >
        <tr>
          <th>Date</th>
          <th>Form ID</th>
          <th>Form Type</th>
        </tr>
        <%
           try {
    HttpSession s1 = request.getSession();

    User user = (User)s1.getAttribute("user");
    

    Object[][] forms = DBConnection.select(new Forms(), "-18", 6, true, false);
    
    System.out.println("FormRetrieval.jsp ran!");
   
    
    System.out.println("forms.length= "+forms.length);
    System.out.println("FormRetrieval.jsp ran! - After For Loop!");
    if (user.getClearance().equals("1")) {
        System.out.println("printing 1");
        System.out.println("user="+user.getUserId());
        
        for (int i = 0; i < forms.length; i++) {
            System.out.println("forms[i][1]="+forms[i][1]);
            System.out.println("forms[i][6]="+forms[i][6]);
            String temp1 = forms[i][1] + "";
            String temp6 = forms[i][6] + "";
            if (temp1.equals(user.getUserId()) && temp6.equals("1")) {
                System.out.println("if 1 success!");
                out.println("<tr>");
                out.println("<td>" + forms[i][5] + "</td>");
                out.println("<td>" + forms[i][0] + "</td>");
                out.println("<td>" + forms[i][3] + "</td>");
                out.println("</tr>");
            }
        }
        
    } else if (user.getClearance().equals("2")) {
        System.out.println("printing 2");
        for (int i = 0; i < forms.length; i++) {
            String temp6 = forms[i][6] + "";
            if (temp6.equals("2")) {
                out.println("<tr>");
                out.println("<td>" + forms[i][5] + "</td>");
                out.println("<td>" + forms[i][0] + "</td>");
                out.println("<td>" + forms[i][3] + "</td>");
                out.println("</tr>");
            }
        }
    } else {

        for (int i = 0; i < forms.length; i++) {
            out.println("<tr>");
            out.println("<td>" + forms[i][5] + "</td>");
            out.println("<td>" + forms[i][0] + "</td>");
            out.println("<td>" + forms[i][3] + "</td>");
            out.println("</tr>");
        }
    }
}

catch (Exception ex) {
    ex.printStackTrace();
}
        %>
        <!--<tr>
          <td style="width:100px">My Data</td>
          <td style="width:100px">My Data</td>
          <td style="width:200px">My Data</td>
        </tr>-->
      </table>
      </div>
      <label for="id">Form ID:</label>
      <input type="text" name="fomrId" id="fomrId" required="required">

      <input type="submit" name="submitBtn" id="submitBtn" value="Retrieve Form">
  
  
  
  
  
  
  
  
  
  <footer>
  
  Copyright &copy; 2017 2017 DeRiche Agency ,Inc.
    <a href="mailto:email@gmail.com">email@gmail.com</a>

  </footer>
  
  
</div>

</body>
</html>