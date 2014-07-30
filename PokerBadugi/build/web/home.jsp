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

    </head>
    <%@ page language="java" contentType="text/html"%>
    <%@ page import="resource.*" %>

    <body style="background-color: #c9c5c5">
        <% Dealer dealer = new Dealer();
            dealer.readyCards();
            dealer.shuffleCards();

            User player1 = new User();
            AIPlayer aiplayer = new AIPlayer();

            aiplayer.setHand(dealer.distributeCards(4));
            player1.setHand(dealer.distributeCards(4));
            player1.setUsername("sharfan");

            session.setAttribute("p1", player1);
            session.setAttribute("a1", aiplayer);
            session.setAttribute("d1", dealer);



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
                        <li class="menu-item"><a href="help.jsp" class="">Help </a></li>
                        <li class="menu-item"><a href="index.jsp" class="">LogOut </a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container" style="padding-bottom: 21px;">
            <div class="row">
                <div class="col-md-12" >
                    <button type="button" class="btn btn-primary btn-lg btn-block"><span class="glyphicon glyphicon glyphicon-user"></span>&nbsp;AI PLAYER</button>

                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <input type="hidden" id="playerCards" value="<%
                        String[] b = player1.showHand();
                        out.println(b[0]);
                        for (int i = 1; i < b.length; i++) {
                            out.println("," + b[i]);
                        }%>">

                    <input type="hidden" id="rounds" value="0">



                </div>
            </div>
            <div class="row">









                <div class="col-md-12">
                    <div class="panel panel-default droppable"  style="height: 130px;background: url('images/wood.jpg')"  >
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

                <div class="col-md-12" >
                    <div class="panel panel-default" style='background-color: #6f7b84'>
                        <div class="panel-body" >
                            <div id="imagesDiv" class="row">
                                <div class="col-md-3" >
                                    <a href="#" id="c1" class="thumbnail card">
                                        <img id="imgCard1" cardId="" src="" alt="card1">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#" id="c2" class="thumbnail card">
                                        <img id="imgCard2" cardId="" src="" alt="card2">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#" id="c3" class="thumbnail card">
                                        <img id="imgCard3" cardId="" src="" alt="card3">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a href="#" id="c4" class="thumbnail card">
                                        <img id="imgCard4" cardId="" src=""  alt="card4">
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div style="height:150px;border-color: #c9c5c5;font-family: sans-serif;background-color: #c9c5c5" id="windiv"  class="panel panel-primary">

                    </div>
                </div>
            </div>

        </div>

        <div class="navbar navbar-default navbar-fixed-bottom">
            <div class="container"  >

                <div class="btn-group btn-group-justified" >

                    <div class="btn-group">
                        <button id="winnerBtn" type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;Show Winner</button>
                    </div>

                    <div class="btn-group">
                        <button id="passBtn" type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-thumbs-down"></span>&nbsp;Pass</button>
                    </div>
                    <div class="btn-group">
                        <button id="exchangeBtn" type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-transfer"></span>&nbsp;Exchange</button>
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
                $('#imgCard' + (i + 1)).attr('cardid', cards[i]);
            }
            $('#playerCards').val(null);


        });


        $(function() {
            $(".card").draggable();
            $(".droppable").droppable({
                drop: function(event, ui) {
                    var draggableId = ui.draggable.find("img").attr('cardid');
                    ui.draggable.find("img").attr("class", "hidden");
                    var cardValues = $('#playerCards').val();
                    cardValues += draggableId + ",";
                    $('#playerCards').val(cardValues);
                    ui.draggable.hide();
                    $(this).addClass("ui-state-highlight");
                    // alert(draggableId);

                }
            });
            $(".droppable").droppable({activeClass: "ui-state-highlight"});
        });

        $('#exchangeBtn').click(function() {
//                alert($('#playerCards').val());
//                $.ajax({
//                    type:       "post",
//                    url:        "exchangeCards.jsp",
//                    dataType: "text",
//                    data:       "{'cardsToExchange':'"+ $('#playerCards').val()+"'}",
//                     success:    function(msg) {
//                            alert(msg);
//                     },
//                     error:function (xhr, ajaxOptions, thrownError){
//                     alert(xhr.status);
//                     alert(thrownError);
//                   }  
//               });

            $.ajax({
                dataType: "text",
                url: "exchangeCards.jsp",
                data: $('#playerCards').val(),
                success: function(msg) {
                    var cards = msg.split(",");
                    var i = 0;
                    $('#imagesDiv img').each(function() {
                        if ($(this).hasClass("hidden")) {
                            $(this).attr('src', relativePath + cards[i] + extension);
                            $(this).attr('cardid', cards[i]);
                            i++;
                            $(this).removeClass("hidden");
                            $(this).parent().show();
                        }
//                        alert($(this).attr('cardid'))
                    });
                    $('#playerCards').val(null);
                    AIPlayerMove();
                    var rounds = $('#rounds').val();
//                   var intermidiateValue = 0;
                    if (rounds == 3)
                    {
                        alert("End of Rounds");
//                           calculateBadugi()
                    }
                    else
                    {
                        rounds = $('#rounds').val();
                        rounds++;
                        $('#rounds').val(rounds);

                    }




                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                }
            });
            return false;
        });


        function AIPlayerMove() {
            $.ajax({
                dataType: "text",
                url: "AIPlayerMove.jsp",
                success: function(msg) {
                    var rounds = $('#rounds').val();
                    if (rounds == 3)
                    {

                        // alert("AI Player exchanged " + msg + " card/s");
//                           calculateBadugi()
                        var message = msg.split("$");
                        document.getElementById("windiv").innerHTML = "<h3 align='center'>AI Player exchanged " + message[0] + " card/s</h3>" + "<h3 align='center'>AI Players cards" + message[1] + "</h3>";
                    }
                    else
                    {
                        var message = msg.split("$");
                        document.getElementById("windiv").innerHTML = "<h3 align='center'>AI Player exchanged " + message[0] + " card/s</h3>";
//                    alert("AI Player exchanged " + msg + " card/s");
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                }
            });




        }

        function calculateBadugi() {
            $.ajax({
                dataType: "text",
                url: "calculateBadugi.jsp",
                success: function(msg) {
                    var message = msg.split("=");
                    document.getElementById('windiv').innerHTML = "<h3 align='center'>" + message[0] + "</h3>" + "<h3 align='center'>" + message[1] + "</h3>" + "<h3 align='center'>" + message[2] + "</h3>";

                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                }
            });

        }
        $('#winnerBtn').click(function() {
            calculateBadugi();
        });

        $('#passBtn').click(function() {
            AIPlayerMove();
//        calculateBadugi();

            var rounds = $('#rounds').val();
//                   var intermidiateValue = 0;
            if (rounds == 3)
            {
                document.getElementById('windiv').innerHTML = "<h3 align='center'>End Of Rounds</h3>";

//                           calculateBadugi()
            }
            else
            {
                rounds = $('#rounds').val();
                rounds++;
                $('#rounds').val(rounds);

            }
        });
    </script>
</html>                      
