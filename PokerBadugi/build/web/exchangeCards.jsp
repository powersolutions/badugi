<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="resource.*" %>
<%
    User player1 =(User) session.getAttribute("p1");
    Dealer dealer = (Dealer) session.getAttribute("d1");
    
    
    String cardsToExchange = request.getQueryString();
//    cardsToExchange = cardsToExchange.replace(cardsToExchange.substring(cardsToExchange.length()-1), "");
    List<String> exchangeCardNames = Arrays.asList(cardsToExchange.split(","));
    
    String newCardNames = player1.exchangeCards(exchangeCardNames, dealer);
    
    
    
//    String newCards = "";
//    for (int i = 0; i <exchangeCardNames.size(); i++) {
//        newCards += "--"+exchangeCardNames.get(i)+"--";
//    }
    
    
    out.println(newCardNames);
  
   
    
    
    
   
%>
