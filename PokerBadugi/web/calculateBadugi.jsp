<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="resource.*" %>
<%
    
    AIPlayer aiplayer =(AIPlayer) session.getAttribute("a1");
    User uplayer =(User) session.getAttribute("p1");
    
   
    
   //  String s= "AI Players Hand : "+aiplayer.getHand().calculateBadugi()+"---Your Hand :  "+uplayer.getHand().calculateBadugi();
    
     
     String s="";
     String aiHand=aiplayer.getHand().calculateBadugi();
     String uHand=uplayer.getHand().calculateBadugi();
     
     int aiplayerWeigth=aiplayer.getHand().getWinWeight();
     int uplayerWeigth=uplayer.getHand().getWinWeight(); 
     
     
     
     if(aiplayerWeigth > uplayerWeigth)
     {
       s= "AI Players Hand : "+aiHand+"=Your Hand :  "+uHand+"=Winner is AIPlayer" ;
    
     
     }
     else if(uplayerWeigth > aiplayerWeigth )
     {
        s= "AI Player's Hand : "+aiHand+"=Your Hand :  "+uHand+"=You Win" ;
    
     
     }
     
       else
      {
       
       s= "AI Players Hand : "+aiHand+"=Your Hand :  "+uHand+"=Fame is Drawn" ;
    
       }
    out.println(s);
%>
