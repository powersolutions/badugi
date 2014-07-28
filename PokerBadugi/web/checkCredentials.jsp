<%-- 
    Document   : checkCredentials
    Created on : Jul 26, 2014, 11:16:48 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <%@ page language="java" contentType="text/html"%>
         <%@ page import="resource.*" %>
         <%@ page import="businessLogic.*" %>
        
    </head>
    <body>
        <%
             User user=new User();
        
        user.setEmail(request.getParameter("emailInput"));
        user.setPassword(request.getParameter("passwordInput"));

        UserRegisterService urc=new UserRegisterService();
      
        int i =  urc.checkCredentials(user);
        if(i==1)
        {
        response.sendRedirect("playerMode.jsp");
        }
        else
        {
            out.println("<h2>InCorrect Credentials Provided</h2>");
            
        }
     
      
        
        
        
        %>
        
    </body>
</html>
