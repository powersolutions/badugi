<%-- 
    Document   : home
    Created on : Jul 21, 2014, 9:27:42 AM
    Author     : Asus-i5
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/jquery-ui.css" rel="stylesheet">
        <link href="css/home.css" rel="stylesheet">
        <!--font awesome-->
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/jquery-1.7.1.min.js"></script>
        <script src="js/jquery-ui-1.8.20.min.js"></script>

        <script>
            $(function() {
                $(".card").draggable();
                $(".droppable").droppable({
                    drop: function(event, ui) {
                        var draggableId = ui.draggable.attr("id");
                        $(this).addClass("ui-state-highlight");
                        // alert(draggableId);

                    }
                });
                $(".droppable").droppable({activeClass: "ui-state-highlight"});
            });

        </script>
    </head>
    <%@ page language="java" contentType="text/html"%>
    <%@ page import="resource.*" %>

    <body>
        <% Dealer dealer = new Dealer();
            dealer.readyCards();
            String x = dealer.display();
//            out.println(x);
            dealer.shuffleCards();
//            out.println("=======================================================");
            String y = dealer.display();
//            out.println(y);
        
            User player1=new User();
            player1.setHand(dealer.distributeCards(4));
            
            
            
            
            player1.setUsername("sharfan");
            
            
            
            String[] xx = player1.showHand();
            for (int i=0; i<xx.length; i ++) {
                out.println(xx[i]);
            }
            
            
        %>
        <!-- Header -->
        
        
        <div id="top-nav" class="navbar navbar-inverse navbar-static-top" style="background-color: #60829d; border-color: #60829d; min-height: 110px; margin-bottom: 0px;">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img alt="" id="img-logo" src="data:image/jpeg;base64,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
                             "  />
                    </a>
                </div>
            </div>
        </div>


        <div class="navbar navbar-default navbar-static-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> <span class="sr-only">Toggle navigation</span>

                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav  navbar-right">

                        <li class="menu-item active"><a href="#">Home </a></li>
                        <li class="menu-item"><a href="#" class="">Help </a></li>
                        <li class="menu-item"><a href="#" class="">LogOut </a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="btn-group-vertical" style="padding-left: 35px;">
            <button type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon glyphicon-user"></span>  Player 1</button>
            <button type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon glyphicon-user"></span>  Player 2</button> 
            <button type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon glyphicon-user"></span>  Player 3</button>



        </div>



        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    
                    <input type="text" id="playerCards" value="<%  
            String[] b = player1.showHand();
            out.println(b[0]);
            for (int i=1; i<b.length; i ++) {
                out.println("," +b[i]);
            } %>">
                    
                    
                    
                    
                </div>
                <div class="col-md-10">
                    <div class="panel panel-default droppable"  style="height: 130px;" >
                        <div class="panel-body" >
                            <div class="col-md-2"></div>
                            <div class="col-md-8">

                            </div>
                            <div class="col-md-2"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <div class="panel panel-default" >
                        <div class="panel-body" >
                            <div class="row">
                                <div class="col-md-3" >
                                    <a href="#" id="c1" class="thumbnail card">
                                        <img id="imgCard1" src="" alt="card1">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#" id="c2" class="thumbnail card">
                                        <img id="imgCard2" src="" alt="card2">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#" id="c3" class="thumbnail card">
                                        <img id="imgCard3" src="" alt="card3">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#" id="c4" class="thumbnail card">
                                        <img id="imgCard4" src=""  alt="card4">
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="navbar navbar-default navbar-fixed-bottom">
            <div class="container"  >

                <div class="btn-group btn-group-justified" >

                    <div class="btn-group">
                        <button type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;Call</button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-chevron-up"></span>&nbsp;Raise</button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-thumbs-down"></span>&nbsp;Fold</button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-transfer"></span>&nbsp;Exchange</button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Start Game</button>
                    </div>  

                </div>
            </div>

        </div>			





    </body>
    <script type="text/javascript">
        var relativePath = 'images/cards/';
        var extension = '.png';
        
        $(document).ready(function(){
            var cardNames = $('#playerCards').val();
//            alert (cardNames);
            var cards = cardNames.split(",");
            for (var i = 0; i <cards.length; i++) {
                $('#imgCard'+(i+1)).attr('src',relativePath+cards[i]+extension);
            }
        });
    </script>
</html>                      
