<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="praveen.spcorporatedao, praveen.spcorporate"%>

<jsp:useBean class="praveen.spcorporate" id="spc" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="spc"></jsp:setProperty>

<body style="background-color:powderblue">
Email Id: <jsp:getProperty name="spc" property="emailid"></jsp:getProperty>
Password:<jsp:getProperty name="spc" property="password"></jsp:getProperty>

<%
spcorporatedao ob=new spcorporatedao();
int count=ob.loginrecord(spc);
if(count>0)
{
	out.print("<h3>Record saved successfully in Database table</h3>");
	
}
else
{
	out.print("<h3>Record not saved in Database table</h3>");

}
%>
</body>



