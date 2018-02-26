<%-- 
    Document   : login
    Created on : Feb 25, 2018, 9:04:39 PM
    Author     : dativa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
               username: <input type="text" name="name" required="">
        <br>
        password: <input type="password" name="password" required="">
        <br>
        
        
        </form>

     
    </body>
</html>
