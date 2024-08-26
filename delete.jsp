<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    // Assuming you have received the ID to delete as a request parameter
    String regnoToDelete = request.getParameter("regno");

    // JDBC Connection parameters
    String url = "jdbc:mysql://localhost:3306/database";
    String user = "root";
    String password = "";

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Establishing a database connection
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        // SQL query to delete the record with the specified ID
        String deleteQuery = "DELETE FROM tab WHERE regno=?";
        pstmt = conn.prepareStatement(deleteQuery);
        pstmt.setString(1, regnoToDelete);

        // Execute the query
        pstmt.executeUpdate();
    } catch ( ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        // Closing resources
        try {
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    // Redirect back to the original page after deletion
    response.sendRedirect("fetch1.jsp");
%>
