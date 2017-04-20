<%-- 
    Author     : Trevor Bal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="csspage.css" rel="stylesheet">
        <script type="text/javascript">
    var canvas, canvas2, ctx, ctx2, sigCanvas, sigCanvas2, sigCtx, sigCtx2, flag = false,
        prevX = 0,
        currX = 0,
        prevY = 0,
        currY = 0,
        dot_flag = false;

    var x = "black",
        y = 2;
    
    function init() {
        canvas = document.getElementById('layer1');
        ctx = canvas.getContext("2d");
        w = canvas.width;
        h = canvas.height;

        img = new Image();
        img.src = 'internal.PNG';         
        img.onload = function(){
          canvas2 = document.getElementById('layer2');
          ctx2 = canvas2.getContext("2d");
          ctx2.drawImage(img, 0, 0);
        }

        sigCanvas = document.getElementById('sigLayer1');
        sigCtx = sigCanvas.getContext("2d");

        img2 = new Image();
        img2.src = 'sigImg.png';         
        img2.onload = function(){
          sigCanvas2 = document.getElementById('sigLayer2');
          sigCtx2 = sigCanvas2.getContext("2d");
          sigCtx2.drawImage(img2, 0, 0);
        }
    
        canvas.addEventListener("mousemove", function (e) {
            findxy('move', e)
        }, false);
        canvas.addEventListener("mousedown", function (e) {
        <!--alert(canvas.getBoundingClientRect().top + " - ");-->
            findxy('down', e)
        }, false);
        canvas.addEventListener("mouseup", function (e) {
            findxy('up', e)
        }, false);
        canvas.addEventListener("mouseout", function (e) {
            findxy('out', e)
        }, false);



        sigCanvas.addEventListener("mousemove", function (e) {
            Sfindxy('move', e)
        }, false);
        sigCanvas.addEventListener("mousedown", function (e) {
            Sfindxy('down', e)
        }, false);
        sigCanvas.addEventListener("mouseup", function (e) {
            Sfindxy('up', e)
        }, false);
        sigCanvas.addEventListener("mouseout", function (e) {
            Sfindxy('out', e)
        }, false);
    }
    
    function color(obj) {

        y = 2;
        ctx.globalCompositeOperation = "source-over";

        if (obj.id == "black") {
            x = "black";

        } else if (obj.id == "blue") {
            x = "blue";

        } else {
            x = "white";
            y = 14;
            ctx.globalCompositeOperation = "destination-out";
        }
    }
    
    function draw() { 
        ctx.beginPath();
        ctx.moveTo(prevX, prevY);
        ctx.lineTo(currX, currY);
        ctx.strokeStyle = x;
        ctx.lineWidth = y;
        ctx.stroke();
        ctx.closePath();
    }
    
    function erase() {

        var m = confirm("Want to clear");

        if (m) {
            ctx.clearRect(0, 0, w, h);
            document.getElementById("canvasimg").style.display = "none";
        }
    }
    
    function savePic() {
        var dataURL = canvas.toDataURL();
        <!--alert(dataURL);-->

        ctx2.drawImage(canvas, 0, 0);

        document.bodyForm.picURL.value = "" + canvas2.toDataURL();
document.bodyForm.firstName.value = document.bodyForm.picURL.value;
        img = new Image();
        img.src = 'internal.PNG';         
        img.onload = function(){
          canvas2 = document.getElementById('layer2');
          ctx2 = canvas2.getContext("2d");
          ctx2.drawImage(img, 0, 0);
        }

        saveSig();
    }

    function speak() {
        alert(canvas.getBoundingClientRect().top + " - ");
    }
    
    function findxy(res, e) {
        if (res == 'down') {
            prevX = currX;
            prevY = currY;
            currX = e.clientX - canvas.getBoundingClientRect().left;
            currY = e.clientY - canvas.getBoundingClientRect().top;
    
            flag = true;
            dot_flag = true;
            if (dot_flag) {
                ctx.beginPath();
                ctx.fillStyle = x;
                ctx.fillRect(currX, currY, 2, 2);
                ctx.closePath();
                dot_flag = false;
            }
        }

        if (res == 'up' || res == "out") {
            flag = false;
        }

        if (res == 'move') {
            if (flag) {
                prevX = currX;
                prevY = currY;
                currX = e.clientX - canvas.getBoundingClientRect().left;
                currY = e.clientY - canvas.getBoundingClientRect().top;
                draw();
            }
        }
    }
    
    function Sdraw() { 
        sigCtx.beginPath();
        sigCtx.moveTo(prevX, prevY);
        sigCtx.lineTo(currX, currY);
        sigCtx.strokeStyle = "blue";
        sigCtx.lineWidth = 2;
        sigCtx.stroke();
        sigCtx.closePath();
    }
    
    function saveSig() {
        document.bodyForm.sigURL.value = "" + sigCanvas.toDataURL();
document.bodyForm.lastName.value = document.bodyForm.sigURL.value;
    }

    function Sclear() {
        sigCtx.clearRect(0, 0, sigCanvas.width, sigCanvas.height);
    }
    
    function Sfindxy(res, e) {
        if (res == 'down') {
            prevX = currX;
            prevY = currY;
            currX = e.clientX - sigCanvas.getBoundingClientRect().left;
            currY = e.clientY - sigCanvas.getBoundingClientRect().top;
    
            flag = true;
            dot_flag = true;
            if (dot_flag) {
                sigCtx.beginPath();
                sigCtx.fillStyle = "blue";
                sigCtx.fillRect(currX, currY, 2, 2);
                sigCtx.closePath();
                dot_flag = false;
            }
        }

        if (res == 'up' || res == "out") {
            flag = false;
        }

        if (res == 'move') {
            if (flag) {
                prevX = currX;
                prevY = currY;
                currX = e.clientX - sigCanvas.getBoundingClientRect().left;
                currY = e.clientY - sigCanvas.getBoundingClientRect().top;
                Sdraw();
            }
        }
    }
    </script>
    </head>
    <body onload="init()">
    <div id="wrapper" onload="speak()">
    <header>
      <h1>DeRiche Agency, Inc.</h1>
    </header>
    <nav>
        <ul> 
        <li><a href="index.jsp">Home</a></li>
	<li><a href="#">Create Form</a></li>
            <ul class="nav-dropdown">
                <li><a href="bodycheck.jsp">Body Check</a></li>
                <li><a href="internal_incident.jsp">Internal Incident</a></li>
            </ul>
	<li><a href="link1.html">Retrieve Form</a></li>
	<li><a href="AboutUs.html">About US</a></li>
	<li><a href="contact.html">Contact US</a></li>
  </ul>
  </nav>                                        
  <main>
      <div id="div header">
         <style>
            table#t01 {   
                width: 50%;
                text-align: center;
            }
            table, th, td {
                border: 1px solid black;
            }
        </style>
        
    </div>
        <h3>Internal Incident Report</h3>
        <form action="#" method="post">
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
        <!-- <img src="image.jpg" alt="Sedon" width="450" height="200">  -->
        <div id="canvasDiv" style="position: relative; width: 673px; height: 614px;">
          <canvas id="layer2" width="673" height="514" style="position: absolute; top: 18px; left: 0px; border:2px solid;"></canvas>
          <canvas id="layer1" width="673" height="514" style="position: absolute; top: 18px; left: 0px; border:2px solid;"></canvas>
          <div style="position: absolute; top: 540px; left: 0px; width: 150px; height: 50px; border:2px solid;">
          <div style="position:absolute;top:4px;left:10px;">Color</div>
          <div style="position:absolute;top:24px;left:10px;width:15px;height:15px;background:black;" id="black" onclick="color(this)"></div>
          <div style="position:absolute;top:24px;left:25px;width:15px;height:15px;background:blue;" id="blue" onclick="color(this)"></div>
          <div style="position:absolute;top:4px;left:90px;">Eraser</div>
          <div style="position:absolute;top:24px;left:90px;width:15px;height:15px;background:white;border:1px solid;" id="white" onclick="color(this)"></div>
          </div>
        </div>
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
        <h3>Review: Recommendations for Follow-Up (Admin Only)</h3>
        <textarea name="recommend" rows="4" cols="50"></textarea><br>
        <p>Printed Name Person Reviewing Report:</p>
        <input type="text" name="reviewing">
        
        <div id="sigDiv" style="position: relative; width: 710px; height: 300px;">
              <canvas id="sigLayer2" width="710" height="149" style="position:absolute; top:20px; left:0px; border:2px solid;"></canvas>
              <canvas id="sigLayer1" width="710" height="149" style="position:absolute; top:20px; left:0px; border:2px solid;"></canvas>
              <input type="button" value="Clear Signature" style="position:absolute; top:180px; left:0px; background:white; border:2px solid;" onclick="Sclear()">
            </div><br>
         <input type="submit" onClick="save()" value="Submit"/>  <input type="reset" value="Clear"/>
         <input type="hidden" id="picURL" value="">
         <input type="hidden" name="sigURL" id="sigURL" value=""><br>
        </form><br>
        <button onclick="myFunction()">Help</button>
            <script>
                function myFunction() {
                    alert(
                          "1.Enter Participant’s name in the field provided (First name and last name)\n2.Enter Date and Time of Incident in the fields provided (Date of Incident and Time of Incident)\n3.Enter Location of Incident in the field provided\n4.Enter name of supervisor that was notified in the field provided\n5.Enter your name in the field provided (Staff Name)\n6.Enter date and time in the fields provided (Date and Time)\n7.If someone was injured, select the type of person injured in the drop-down provided (Click-box under Injury)\n8.If damage occurred, select the type of damaged in the drop-down provided (Click-box under Damage)\n9.If an infectious/contagious disease was involved, check the box in the space provided (Check-box under Infectious/Contagious Disease)\n10.If there was a medication issue, select the type of issue in the drop-down provided (Click-box under Medication Issue)\n11.If “Other” was selected in any of the previous drop-down lists, please specify (Other)\n12.Mark on the chart below any location of injuries\n13.If more than one person was involved, please specify first name of person (initials will also work)\n14.If anyone was injured, please specify what kind of first aid, who was aided, and whether or not first aid was needed, and what was done after the incident\n15.What happened before the incident took place\n16.What happened during the incident\n17.What happened after the incident took place\n18.Why did the incident occur\n19.What did you do\n20.Type your name in the field provided (Under name of person completing form)\n21.Select the date in the from the date picker provided (Under name of person completing form)\n22.In the Recommendations for follow up section,  only if Admin, please type in any recommendations you have for the participant\n23.Enter the name of the reviewer in the field provided\n24.Sign the signature box with the mouse\n25.Click the submit button to finish\n");
                }
            </script>
    </main>
    </div>
    
</body>
</html>
