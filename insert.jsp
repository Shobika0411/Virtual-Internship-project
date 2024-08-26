<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="praveen.spcorporatedao"%>

<jsp:useBean class="praveen.spcorporate" id="spc" scope="session"></jsp:useBean>
    <jsp:setProperty property="*" name="spc"></jsp:setProperty>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
  </style>
</head>
<body style="background-color:rgb(35, 35, 104)">
<table>
  <tr>
    <td><a href="ppp.jsp" class="lin"><img src="back.jpg" class="back"></a></td>
    <td><a href="index.jsp" class="link">Home</a></td>
    <td><a href="aboutus.jsp" class="link">About Us</a></td>
    <td><a href="contactus.jsp" class="link">Contact Us</a></td>
  </tr>
</table><br>
 <center>
<table border="1", style="background-color: rgb(196, 196, 247);buttom:50px;">
<tr><td>RegNo:</td><td><jsp:getProperty name="spc" property="regno"></jsp:getProperty></td></tr>
<tr><td>Name:</td><td><jsp:getProperty name="spc" property="name"></jsp:getProperty></td></tr>
<tr><td>Gender:</td><td><jsp:getProperty name="spc" property="gender"></jsp:getProperty></td></tr>
<tr><td>E-mail:</td><td><jsp:getProperty name="spc" property="email"></jsp:getProperty></td></tr>
<tr><td>Mobile:</td><td><jsp:getProperty name="spc" property="mobile"></jsp:getProperty></td></tr>
<tr><td>Course:</td><td><jsp:getProperty name="spc" property="course"></jsp:getProperty></td></tr>
<tr><td>Year Of Studying:</td><td><jsp:getProperty name="spc" property="year"></jsp:getProperty></td></tr>
<tr><td>College:</td><td><jsp:getProperty name="spc" property="clg"></jsp:getProperty></td></tr>
</table>
</center>
<%

spcorporatedao ob=new spcorporatedao();

int count=ob.insertrecord(spc);

String s="Registered Successfully";

String p="Registration Failed";

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

