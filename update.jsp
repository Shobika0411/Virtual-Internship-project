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
    String regno = request.getParameter("regno");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String course = request.getParameter("course");
    String year = request.getParameter("year");
    String clg = request.getParameter("clg");
    String city = request.getParameter("city");
    Connection con = null;
    PreparedStatement pstmt = null;

    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database", "root", "");
        String updateQuery = "UPDATE tab SET name=?, gender=?, email=?, mobile=?, course=?,year=?,clg=?,city=? WHERE regno=?";
        pstmt = con.prepareStatement(updateQuery);
        pstmt.setString(1, name);
        pstmt.setString(2, gender);
        pstmt.setString(3, email);
        pstmt.setString(4, mobile);
        pstmt.setString(5, course);
        pstmt.setString(6, year);
        pstmt.setString(7, clg);
        pstmt.setString(8, city);
        pstmt.setString(9, regno);
        
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

<%@ include file="fetch.jsp" %>
