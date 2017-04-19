<!DOCTYPE html>
<html lang="en">
<head>
<title>Body Check Form</title>
<meta charset="utf-8">
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
        img.src = 'check.png';         
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
        img.src = 'check.png';         
        img.onload = function(){
          canvas2 = document.getElementById('layer2');
          ctx2 = canvas2.getContext("2d");
          ctx2.drawImage(img, 0, 0);
        }

        saveSig();
    }

    function Pclear() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
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
 <!-- <img src="image.jpg" alt="Sedon" width="450" height="200">  -->
        <div id="canvasDiv" style="position: relative; width: 673px; height: 614px;">
          <canvas id="layer2" width="673" height="514" style="position: absolute; top: 18px; left: 0px; border:2px solid;"></canvas>
          <canvas id="layer1" width="673" height="514" style="position: absolute; top: 18px; left: 0px; border:2px solid;"></canvas>
          <div style="position: absolute; top: 540px; left: 0px; width: 250px; height: 50px; border:2px solid;">
          <div style="position:absolute;top:4px;left:10px;">Color</div>
          <div style="position:absolute;top:24px;left:10px;width:15px;height:15px;background:black;" id="black" onclick="color(this)"></div>
          <div style="position:absolute;top:24px;left:25px;width:15px;height:15px;background:blue;" id="blue" onclick="color(this)"></div>
          <div style="position:absolute;top:4px;left:90px;">Eraser</div>
          <div style="position:absolute;top:24px;left:90px;width:15px;height:15px;background:white;border:1px solid;" id="white" onclick="color(this)"></div>
          <input type="button" value="Clear Picture" style="position:absolute; top:12px; left:150px; background:white; border:2px solid;" onclick="Pclear()">
          </div>
        </div>
        <form id="bodyForm" name="bodyForm" style="padding-top: 40px;">
            Patient First Name:<br>
            <input type="text" name="firstName"><br>
            Patient Last Name:<br>
            <input type="text" name="lastName"><br>
            Explain what happened:<br>
            <textarea name="what" rows="4" cols="50"></textarea><br>
            Where did it happen:<br>
            <input type="text" name="where"><br>
            When did it happen:<br>
            <input type="text" name="when"><br>
            Why did it happen:<br>
            <textarea name="why" rows="4" cols="50"></textarea><br>
            What did you do? Describe First Aid administered and follow up:<br>
            <textarea name="firstAid" rows="4" cols="50"></textarea><br>
            Recommendations for follow up: (Admin Only)<br>
            <textarea  name ="recommend" rows="4" cols="50"></textarea><br>
            <div id="sigDiv" style="position: relative; width: 710px; height: 300px;">
              <canvas id="sigLayer2" width="710" height="149" style="position:absolute; top:20px; left:0px; border:2px solid;"></canvas>
              <canvas id="sigLayer1" width="710" height="149" style="position:absolute; top:20px; left:0px; border:2px solid;"></canvas>
              <input type="button" value="Clear Signature" style="position:absolute; top:180px; left:0px; background:white; border:2px solid;" onclick="Sclear()">
            </div>
            Select the date:<br>
            <input type="date" name="date"><br><br>
         <input type="submit" onClick="save()" value="Submit"/>  <input type="reset" value="Clear"/>
         <input type="hidden" id="picURL" value="">
         <input type="hidden" name="sigURL" id="sigURL" value=""><br>
        </form><br>
	<button onclick="myFunction()">Help</button>
            <script>
                function myFunction() {
                    alert(
                          "1.Mark on the chart below any abnormities observed\n2.Enter Participant name in the field provided (First name and last name) \n3.In the Explain what happened section, please type out how Participant received any abnormalities\n4.In the Where / When section, please type out Where & When Participant received any abnormalities\n5.In the What did you do? Describe First Aid administered and follow up section, please type out exactly what First Aid was administered and what steps were taken to follow up\n6.In the Recommendations for follow up section, only if you are an Admin, please type in any recommendations you have for the participant\n7.Enter your name in the field provided\n8.Sign the signature box with the mouse\n11.Select date from the Date Picker\n");
                }
            </script>
  <footer>
  Copyright &copy; 2017 2017 DeRiche Agency ,Inc.
    <a href="mailto:email@gmail.com">email@gmail.com</a>
  </footer>
</div>
</body>
</html>
