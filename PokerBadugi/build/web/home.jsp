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


        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
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

            User player1 = new User();
            player1.setHand(dealer.distributeCards(4));




            player1.setUsername("sharfan");



            String[] xx = player1.showHand();
            for (int i = 0; i < xx.length; i++) {
                out.println(xx[i]);
            }


        %>
        <!-- Header -->


        <div class="navbar navbar-default navbar-static-top" role="navigation">
            <div class="container">
                <a class="navbar-brand" href="#">
                    
                        <img alt="" id="img-logo" src="images/badugi3.png"  style='position: absolute;bottom: 5px;'/>
                        
                    </a>
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
        <div class="container" style="padding-bottom: 21px;">
            <div class="row">
        <div class="col-md-12" >
            <button type="button" class="btn btn-primary btn-lg btn-block"><span class="glyphicon glyphicon glyphicon-user"></span>&nbsp;Opponent</button>

        </div>
            </div>
        </div>



        <div class="container">
            <div class="row">
                <div class="col-md-2">

                    <input type="hidden" id="playerCards" value="<%
                        String[] b = player1.showHand();
                        out.println(b[0]);
                        for (int i = 1; i < b.length; i++) {
                            out.println("," + b[i]);
                        }%>">




                </div>
            </div>
                        <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default droppable"  style="height: 130px;background: url('images/wood.jpg')" >
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
                
                <div class="col-md-12">
                    <div class="panel panel-default" style='background-color: #6f7b84'>
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
                        <button type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Pass</button>
                    </div>  

                </div>
            </div>

        </div>			





    </body>
    <script type="text/javascript">
        var relativePath = 'images/cards/';
        var extension = '.png';

        $(document).ready(function() {
            var cardNames = $('#playerCards').val();
//            alert (cardNames);
            var cards = cardNames.split(",");
            for (var i = 0; i < cards.length; i++) {
                $('#imgCard' + (i + 1)).attr('src', relativePath + cards[i] + extension);
            }
        });
    </script>
</html>                      
