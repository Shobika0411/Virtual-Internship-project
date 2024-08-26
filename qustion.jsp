<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="praveen.spcorporatedao" %>
    <jsp:useBean class="praveen.spcorporate" id="spc" scope="session"></jsp:useBean>
    <jsp:setProperty property="*" name="spc"></jsp:setProperty>
   
   
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        img{
  width: 100px;

}
.box1{
          padding: 10px 20px;
          background-color: rgb(188, 182, 238);
          color: #fff;
          border: none;
          cursor: pointer;
          transition: transform 0.3s ease;
          width: 200px;
          height: 30px;
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
  .ps{
  width:700px;
  height:400px;
  border: 3px solid #9980f5;
  border-radius: 15px;
    box-shadow: 0 0 20px rgb(188, 182, 238);
    background-image:url(question.jpg);
    background-reapeat:no-repeat;
    background-size:cover;
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
    <td><a href="index.jsp" class="lin"><img src="back.jpg" class="back"></a></td>
    <td><a href="index.jsp" class="link">Home</a></td>
    <td><a href="aboutus.jsp" class="link">About Us</a></td>
    <td><a href="contactus.jsp" class="link">Contact Us</a></td>
  </tr>
</table><br>
<div class="logo"><b>PS</b> CO<b>R</b>PS</div>
<center>
<%

spcorporatedao ob=new spcorporatedao();

int count=ob.loginrecord(spc);

String s="Logined Successfully";

String p="Login Failed";

if(count>0)

{

	%>

	<script type="text/javascript">

	alert('<%= s %>');

	</script>

	<%

}

else

{

	%>

	<script type="text/javascript">

	alert('<%= p %>');

	</script>

	<%



}

%>
</center>
<center>
<div class="ps">
    <center><br><br>
    <h1 style="color: azure;">YOU ARE A ?</h1>
    <div class="box1"><a href="course.jsp" style="text-decoration:none;color:white;font-size: 25px;">STUDENT</a></div><br>

    <div class="box1"><a href="register1.jsp" style="text-decoration:none;color:white;font-size: 25px;">WORKER</a></div>
</center>
</div>
</center>
</body>
</html>
