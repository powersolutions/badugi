<%-- 
    Document   : help
    Created on : Jul 28, 2014, 4:54:34 PM
    Author     : Asus-i5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- bootstrap css -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/bootstrap-modal.css" rel="stylesheet" />
        <!-- /bootstrap css -->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- /bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-modal.js"></script>
        <!-- /bootstrap js -->


    </head>   
    <body>

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


                        <li class="menu-item active"><a href="#" class="">Help </a></li>
                        <li class="menu-item"><a href="index.jsp" class="">LogOut </a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div class="panel panel-default">

                        <div class="panel-body">

                            <div class="page-header">

                                <h1><center>Help...</center></h1>

                            </div>
                            <img class="featureimg"  src="images/helpImg.jpg" width="100%">
                            <p><h2>It's all about making the smallest badugi hand.</h2></p>
                            <h4><strong>How to play the game</strong></h4>
                            <P></P>
                            <p>You will be given four cards at the beginning of the game.<br>
                                Then you have the option to either go with your hand or exchange the cards and get new cards from the dealer.<br>
                                After four rounds, if you have the smallest hand, then you will be the winner. 
                            </p>
                            <h4><strong>Badugi hands</strong></h4>
                            <p><h5>One card hands</h5>
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/qd_jd_8d_5d.jpg" height="63" width="182" alt="" class="default"/><p>[5-x-x-x] (three of the diamonds are ignored)</p>
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/ks_js_9s_4s.jpg" height="63" width="182" alt="" class="default"/><p>[4-x-x-x] (three of the spades are ignored)</p>
                            <!--<img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/Ac_As_Ad_Ah.jpg" height="63" width="182" alt="" class="default"/><p>[A-x-x-x] (three of the Aces are ignored)</p>-->
                            <p><h5>Two-card hands</h5></p>
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/qs_jd_js_jc.jpg" height="63" width="182" alt="" class="default"/><p>[Q-J-x-x] (the Js and another Jack are ignored)</p>
                            <!--<img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/Tc_Td_9c_9d.jpg" height="63" width="182" alt="" class="default"/><p>[T-9-x-x] (one Ten and the Nine of the other suit are ignored)</p>-->
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/9s_8s_7s_6c.jpg" height="63" width="182" alt="" class="default"/><p>[7-6-x-x] (the two highest spades are ignored)</p>
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/3c_2c_as_ad.jpg" height="63" width="182" alt="" class="default"/><p>[2-A-x-x] (the 3c and one Ace are ignored)</p>
                            </p>

                            <p><strong>Three-card hands</strong></p>
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/kc_kd_2d_ah.jpg" height="63" width="182" alt="" class="default"/><p>[K-2-A-x] (the Kd is ignored)</p>
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/qc_qs_2d_ah.jpg" height="63" width="182" alt="" class="default"/><p>[Q-2-A-x] (a Queen is ignored)</p>
                            <!--<img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/qs_js_tc_9d.jpg" height="0" width="0" alt="" class="default"/><p>[J-T-9-x] (the Qs is ignored)</p>-->
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/qs_js_tc_6d.jpg" height="63" width="182" alt="" class="default"/><p>[J-T-6-x] (the Qs is ignored)</p>
                            <!--<img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/Ks_Js_8c_6d.jpg" height="63" width="182" alt="" class="default"/><p>[J-8-6-x] (the Ks is ignored)</p>-->
                            <!--<img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/4d_3c_2c_As.jpg" height="0" width="0" alt="" class="default"/><p>[4-2-A-x] (the 3c is ignored)</p>-->
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/3d_3c_2s_ah.jpg" height="63" width="182" alt="" class="default"/><p>[3-2-A-x] (a Three is ignored)</p>
                            <p><strong>Badugi</strong></p>
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/kc_qd_js_th.jpg" height="63" width="182" alt="" class="default"/><p>[K-Q-J-T] (the worst Badugi)</p>
                            <!--<img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/8c_7s_2h_Ad.jpg" height="63" width="182" alt="" class="default"/><p>[8-7-2-A]</p>-->
                            <img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/8c_5s_4h_2d.jpg" height="63" width="182" alt="" class="default"/><p>[8-5-4-2]</p>
                            <!--<img src="http://www.pokerstars.com/assets/common/images/how-to-play/games/badugi/4s_3h_2d_Ac.jpg" height="63" width="182" alt="" class="default"/><p>[4-3-2-A] (the best Badugi)</p>-->

                        </div> 
                    </div>
                </div> 
            </div>
        </div>        



    </body>


</html>   

