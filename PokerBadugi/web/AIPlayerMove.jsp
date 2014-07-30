<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="resource.*" %>
<%
    
    AIPlayer aiplayer =(AIPlayer) session.getAttribute("a1");
    Dealer dealer = (Dealer) session.getAttribute("d1");
    String cardsReplaced = aiplayer.checkHandAndReplace(dealer);
    out.println(cardsReplaced);
%>

