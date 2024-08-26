<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="praveen.spcorporatedao"%>
    
         <jsp:useBean class="praveen.spcorporate" id="spc" scope="session"></jsp:useBean>
 <jsp:setProperty property="*" name="spc"></jsp:setProperty>
  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #9980f5;
    border-radius: 15px;
    box-shadow: 0 0 20px rgb(188, 182, 238);}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 15px 0 6px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
img{
  width: 100px;

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
<div class="logo"><b>PS</b> CO<b>R</b>PS</div>
    <center>
<form action="qustion.jsp"; style="width: 700px;">
  <div class="imgcontainer">
    <img src="avatar.png" alt="Avatar" class="avatar">
  </div>

  <div class="container" style="width: 300px;">
    <label for="uname" style="color: azure;"><b>EmailId</b></label>
    <input type="text" placeholder="Enter Username" name="emailid" required>

    <label for="psw" style="color: azure;"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</a></button>
    <label style="color: azure;">
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>
 
  <div class="container" style="background-color:rgb(35, 35, 104);text-align: center; border-radius: 15px;">
    <center>
    <button type="button" class="cancelbtn"><a href="index.jsp" style="text-decoration:none;color:white;font-size: 25px;">Cancel</a></button>
</center>
    <label class="psw" style="color: azure;">Forgot <a href="#" style="color: rgb(155, 155, 252);text-decoration:none;">password?</a></label>
  </div>
  
</form>
</center>

</body>
</html>

