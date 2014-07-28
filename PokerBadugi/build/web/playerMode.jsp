<%-- 
    Document   : playerMode
    Created on : Jul 28, 2014, 3:29:03 PM
    Author     : Asus-i5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">

        <link href="css/playerMode.css" rel="stylesheet">




        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>


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

                        <li class="menu-item active"><a href="#">Mode</a></li>
                        <li class="menu-item"><a href="help.jsp" class="">Help </a></li>
                        <li class="menu-item"><a href="#" class="">LogOut </a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <button id="btnSinglePlayer" type="button" style="margin-top: 70px;" class="btn btn-custom btn-lg btn-block">SINGLE PLAYER</button>
                    <a class='open-ClubDialog btn btn-custom btn-lg btn-block' style="margin-top: 70px;" href='#modMultiPlayer'>MULTI PLAYER</a>
                </div>
            </div>
        </div>

        <!--Modal-->
        <div class="modal fade" id="modMultiPlayer" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="position: absolute; top: 108px; left: auto; right: 400px;" aria-hidden="true">
            <div class="modal-dialog" >
                <div class="modal-content">
                    <div class="modal-header" style="color: #fff;background-color: #2c3e50">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="HModTitle">Multi Player Mode</h4>
                    </div>
                    <div class="modal-body" style="color: #000">
                        <h1 align='center'>Hang in there...</h1>
                        <h3 align='center'>Multi Player Mode Is Coming Soon</h3>
                    </div>
                    <div class="modal-footer" style="background-color: #2c3e50">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                </div>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#btnSinglePlayer").click(function() {
                //alert('login');
                window.location.href = "home.jsp"
            });
        });

        $(document).ready(function() {
            $("#btnMultiPlayer").click(function() {
                //alert('login');
                //window.location.href = "home.jsp"
            });
        });

        $(document).on("click", ".open-ClubDialog", function(e) {

            e.preventDefault();

            var _self = $(this);
            $(_self.attr('href')).modal('show');
        });

    </script>
</html>
