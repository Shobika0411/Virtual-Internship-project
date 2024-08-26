<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    .color-changing-text {
          animation: colorChange 2s infinite alternate;
        }
        
        @keyframes colorChange {
          0% { color: red; }
          50% { color: blue; }
          100% { color: green; }
        }
        img{
  width: 100px;

}
.box{
    border: 3px solid #9980f5;
    border-radius: 15px;
    box-shadow: 0 0 20px rgb(188, 182, 238);}
    .box1{
          padding: 10px 20px;
          border-radius: 5px;
          background-color: rgb(188, 182, 238);
          color: #fff;
          border: none;
          cursor: pointer;
          transition: transform 0.3s ease;
        }
        
        .box1:hover {
          transform: scale(1.1);
        }
.link:hover{
    background-color:  rgb(188, 182, 238);
    border-radius: 25px;
    color: rgb(35, 35, 104);
    text-size:20px;
  }
  .link{
    text-decoration: none;
    color: #fff;
    padding: 10px;
    font: bolder;
  }
  .back{
  width:10px;
  margin-top:5px;
  }
  .lin{
  text-decoration: none;
  padding: 10px;
    font: bolder;
  }
  .lin:hover{
  box-shadow: 0 0 20px rgb(188, 182, 238);
  }
   .logo{

 margin-left:1400px;

 font-family:Monotype Corsiva;

 color:cornsilk;

 font-size:40px;

 } 
  
</style>
</head>
<body style="background-color: rgb(35, 35, 104);">
<table>
  <tr>
    <td><a href="course.jsp" class="lin"><img src="back.jpg" class="back"></a></td>
    <td><a href="index.jsp" class="link">Home</a></td>
    <td><a href="aboutus.jsp" class="link">About Us</a></td>
    <td><a href="contactus.jsp" class="link">Contact Us</a></td>
  </tr>
</table><br>
  

   </center>
    <div class="logo"><b>PS</b> CO<b>R</b>PS</div>
    </div>
<center><h2 class="color-changing-text"style="color: rgb(253, 249, 12);font-family:Segoe Print ;font-size: 40px;"><b>STUDENT REGISTRATION FORM</b></h2>

<fieldset class="box" style="width:500px;color:white;text-align:left;border-radius: 5px;">

<b><form action="insert.jsp">
    <center><table>
<tr><td><label style="color:#d3c8f8;">STUDENT REGISTERNO</td></label>
<td>:</td><td><input type="text" name="regno"><br></td></tr>

<tr><td><label style="color:#d3c8f8;">STUDENT NAME</label></td>
    <td>:</td>
<td><input type="text" name="name"></td></tr>
<tr><td><label style="color:#d3c8f8;">GENDER</td></label>
    <td>:</td>
<td><select name="gender">
    <option>Select</option>
    <option>MALE</option>
    <option>FEMALE</option>
    </select></td></tr>
    <tr><td><label style="color:#d3c8f8;">EMAIL ID</td></label>
        <td>:</td>
<td><input type="text" name="email"></td></tr>
<tr><td><label style="color:#d3c8f8;">MOBILE NO</td></label>
    <td>:</td>
    <td><input type="text" name="mobile"></td></tr>
<tr><td><label style="color:#d3c8f8;">COURSE YOU KNOW</td></label>
    <td>:</td>
    <td><select name="course">
<option>Select</option>
<option>C</option>
<option>C++</option>
<option>Java</option>
<option>Python</option>
<option>Web</option>
<option>Dotnet</option>
</select></td></tr>
<tr><td><label style="color:#d3c8f8;">YEAR OF STUDYING</td></label>
    <td>:</td>
    <td><select name="year">
<option>Select</option>
<option>I</option>
<option>II</option>
<option>III</option>
<option>IV</option>
</select></td></tr>
<tr><td><label style="color:#d3c8f8;">COLLEGE NAME</td></label>
    <td>:</td>
    <td><input type="text" name="clg"></td></tr>
<tr><td><lable style="color:#d3c8f8;">CITY</td></lable>
    <td>:</td>
    <td><input type="text" name="city"></td></tr>
</table>
<center><input class="box1" type="submit"></center>
</center>

</form></b>
</fieldset>



</body>
</html>


    