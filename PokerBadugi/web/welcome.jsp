<%-- 
    Document   : welcome
    Created on : Jul 26, 2014, 9:55:30 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
         <%@ page language="java" contentType="text/html"%>
         <%@ page import="resource.*" %>
         <%@ page import="businessLogic.*" %>
         
         
         
    </head>
    <body>
       <%
        User user=new User();
        user.setUsername(request.getParameter("username"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));

        UserRegisterService urc=new UserRegisterService();
        urc.registerUser(user);
       
       
       out.println(request.getParameter("username"));
       
       response.sendRedirect("playerMode.jsp");
       %>
    </body>
</html>
