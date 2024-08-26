<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="praveen.spcorporatedao"%>
<%@ page import="praveen.spcorporate"%>

<jsp:useBean class="praveen.spcorporate" id="spc" scope="session"></jsp:useBean>
    
<jsp:setProperty property="*" name="spc"></jsp:setProperty>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource
    var="ds"
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/database"
    user="root"	
    password=""
></sql:setDataSource>
<sql:query dataSource="${ds}" var="rs">
    SELECT * FROM tab;
</sql:query>
<html>
    <style>
        .box{
    border: 3px solid #9980f5;
    border-radius: 15px;
    box-shadow: 0 0 20px rgb(188, 182, 238);}
    .btn:hover {
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
<body style="background-color:rgb(35, 35, 104)">
<table>
  <tr>
    <td><a href="course.jsp" class="lin"><img src="back.jpg" class="back"></a></td>
    <td><a href="index.jsp" class="link">Home</a></td>
    <td><a href="aboutus.jsp" class="link">About Us</a></td>
    <td><a href="contactus.jsp" class="link">Contact Us</a></td>
  </tr>
</table>
<div class="logo"><b>PS</b> CO<b>R</b>PS</div><br>
        <h1 style="text-align:center;color: blanchedalmond;">Student Data Saved Successfully in Database!..</h1>
    <form>
        <table border="1" style="width:60%;margin-left:auto;margin-right:auto;background-color:rgb(196, 196, 247);">
            <thead>
                <tr>
                  <th>Regno</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Course</th>
                    <th>Year</th>
                    <th>College</th>
                    <th>City</th>
                    <th>Edit</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var='row' items="${rs.rows}">
                    <tr>
                         <td><c:out value='${row.regno}'/></td>
                        <td><c:out value='${row.name}'/></td>
                        <td><c:out value='${row.gender}'/></td>
                        <td><c:out value='${row.email}'/></td>
                        <td><c:out value='${row.mobile}'/></td>
                        <td><c:out value='${row.course}'/></td>
                        <td><c:out value='${row.year}'/></td>
                        <td><c:out value='${row.clg}'/></td>
                        <td><c:out value='${row.city}'/></td>
                        <td>
  						<input type="button" class="btn" value="Select"  onclick="edittab(<c:out value='${row.regno}'/>, '<c:out value='${row.name}'/>', '<c:out value='${row.gender}'/>','<c:out value='${row.email}'/>','<c:out value='${row.mobile}'/>','<c:out value='${row.course}'/>','<c:out value='${row.year}'/>','<c:out value='${row.clg}'/>','<c:out value='${row.city}'/>')">
                                                 </td>
                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>
<center>
 <fieldset class="box"style="border: 1;border-radius: 50px;width: 20px;border-color:darkgray,lightblue,lightcoral,lightgreen,lightpink;width: 400px;background-color: midnightblue;">
    <form action="delete.jsp">
        <h2 style="position:relative;color: blanchedalmond;">Student Deletion Form</h2>
        <center>
        <table style="position:relative;" ><b>
            <tr>
                <td style="color: azure;"><b>Regno  :</b></td>
                <td><input type="text" name="regno" id="editRegno" ></td>
            </tr>
            <tr>
                <td style="color: azure;"><b> Name  :</b></td>
                <td><input type="text" name="name" id="editName"></td>
            </tr>
            <tr>
                <td style="color: azure;"><b>Gender :</b></td>
                <td><input type="text" name="gender" id="editGender"></td>
            </tr>
            <tr>
                <td style="color: azure;"><b>Email  :</b></td>
                <td><input type="text" name="email" id="editEmail"></td>
            </tr>
            <tr>
                <td style="color: azure;"><b>Mobile :</b></td>
                <td><input type="text" name="mobile" id="editMobile" ></td>
            </tr>
            <tr>
                <td style="color: azure;"><b>Course :</b></td>
                <td><input type="text" name="course" id="editCourse"></td>
            </tr>
            <tr>
                <td style="color: azure;"><b>Year   :</b></td>
                <td><input type="text" name="year" id="editYear"></td>
            </tr>
            <tr>
                <td style="color: azure;"><b>College :</b></td>
                <td><input type="text" name="clg" id="editClg"></td>
            </tr>
            <tr>
                <td style="color: azure;"><b>City   :</b></td>
                <td><input type="text" name="city" id="editCity"></td>
            </tr></b>
        </table><br>	
    </center>     
             <input class="btn" type="submit" value="Delete" style="width:80px;height:40px; position:relative;background-color: rgb(196, 196, 247) ;">
        
    </form>
</fieldset>
</center>
    <script>
    function edittab(regno, name, gender, email, mobile, course, year, clg, city) {
        document.getElementById("editRegno").value = regno;
        document.getElementById("editName").value = name;
        document.getElementById("editGender").value = gender;
        document.getElementById("editEmail").value = email;
        document.getElementById("editMobile").value = mobile;
        document.getElementById("editCourse").value = course;
        document.getElementById("editYear").value = year;
        document.getElementById("editClg").value = clg;
        document.getElementById("editCity").value = city;
    }
     
        
    </script>
</body>
</html>
