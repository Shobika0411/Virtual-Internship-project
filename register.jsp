<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1{
font-size:30px;
text-align:left;
}
 .box{
    border: 3px solid #9980f5;
    border-radius: 15px;
    box-shadow: 0 0 20px rgb(188, 182, 238);
    background-image:url(reg.jpg);
    background-reapeat:no-repeat;
    background-size:cover;
    }
    .box1{
          padding: 10px 20px;
          background-color: rgb(188, 182, 238);
          color: #fff;
          border: none;
          cursor: pointer;
          transition: transform 0.3s ease;
        }
        
        .box1:hover {
          transform: scale(1.1);
        }
  img{
  width: 100px;
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
    <td><a href="qustion.jsp" class="lin"><img src="back.jpg" class="back"></a></td>
    <td><a href="index.jsp" class="link">Home</a></td>
    <td><a href="aboutus.jsp" class="link">About Us</a></td>
    <td><a href="contactus.jsp" class="link">Contact Us</a></td>
  </tr>
</table>
    <div class="logo"><b>PS</b> CO<b>R</b>PS</div>
<form action="register.jsp">
<center><br><br>
<fieldset class="box"style="width:600px;height:300px;border=1;"><br>
<h1><center style="color:white">What do you want to do?</center></h1>
<center>
 <div style="width: 420px;height: 50px;"><a href="fetch1.jsp"  style="text-decoration:none"><h1 class="box1"style="text-align:center;">Un Register</h1></a><br></div>
 <div style="width: 420px;height: 50px;"><a href="fetch.jsp"  style="text-decoration:none"><h1 class="box1"style="text-align:center;">Update the Registered details</h1><br></div>
</center>
 </fieldset>
</center>
</form>
</body>
</html> 
