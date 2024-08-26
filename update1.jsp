<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="praveen.spcorporate" %>
<%@ page import="praveen.spcorporate" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource
    var="ds"
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/database"
    user="root"
    password=""
></sql:setDataSource>

<%
    String workerid = request.getParameter("workerid");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String course = request.getParameter("course");
    String year = request.getParameter("year");
    String com = request.getParameter("com");
    String city = request.getParameter("city");
    Connection con = null;
    PreparedStatement pstmt = null;

    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database", "root", "");
        String updateQuery = "UPDATE worker SET name=?, gender=?, email=?, mobile=?, course=?,year=?,com=?,city=? WHERE workerid=?";
        pstmt = con.prepareStatement(updateQuery);
        pstmt.setString(1, name);
        pstmt.setString(2, gender);
        pstmt.setString(3, email);
        pstmt.setString(4, mobile);
        pstmt.setString(5, course);
        pstmt.setString(6, year);
        pstmt.setString(7, com);
        pstmt.setString(8, city);
        pstmt.setString(9, workerid);
        
        pstmt.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

<%@ include file="fetchupdate2.jsp" %>
