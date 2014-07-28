<%-- 
    Document   : index
    Created on : Jul 19, 2014, 1:52:04 PM
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
        
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
        <link href="css/index.css" rel="stylesheet" />
        <link href="css/bootstrap-modal.css" rel="stylesheet" />
        <!-- /bootstrap css -->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- /bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-modal.js"></script>
        <!-- /bootstrap js -->

        <script src="js/login.js"></script>
         <!-- Script to Activate the Carousel -->
   
    </head>
    <body>


        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <a class="navbar-brand" href="#">
                    
                        <img alt="" id="img-logo" src="images/badugi3.png"  style='position: absolute;bottom: 5px;'/>
                        
                    </a>
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>

                        <span
                            class="icon-bar"></span> <span class="icon-bar"></span>

                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">

                    <!-- DROPDOWN LOGIN STARTS HERE -->
                    <ul id="signInDropdown" class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-info navbar-btn dropdown-toggle"><i class="glyphicon glyphicon-user"></i> Login <span class="caret"></span>

                            </button>
                            <ul class="dropdown-menu">
                                <li style="width: 250px;">
                                    <form class="navbar-form form" role="form" action="checkCredentials.jsp" method="POST">
                                        <div class="form-group">
                                            <div class="input-group" style="padding-bottom: 12px;"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>

                                                <!--EMAIL
                                                ADDRESS-->
                                                <input id="emailInput" style="padding-bottom: 12px;" placeholder="email address" name="emailInput"  class="form-control"
                                                       oninvalid="setCustomValidity('Please enter a valid email address!')" onchange="try {
                                                                   setCustomValidity('')
                                                               } catch (e) {
                                                               }"
                                                       required="" type="email">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group" style="padding-bottom: 12px;"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>

                                                <!--PASSWORD-->
                                                <input id="passwordInput" style="padding-bottom: 12px;" placeholder="password" name="passwordInput" class="form-control"
                                                       oninvalid="setCustomValidity('Please enter a password!')" onchange="try {
                                                                   setCustomValidity('')
                                                               } catch (e) {
                                                               }"
                                                       required="" type="password">
                                            </div>
                                        </div>
                                        <!-- BASIC ERROR MESSAGE <div class="form-group">
                                            <label class="error-message color-red">*Email &amp; password don't match!</label>
                                            </div>
                                        -->
                                        <div class="form-group">
                                            <!--BUTTON-->
                                            <button id="btnLogin" type="submit" class="btn btn-primary form-control">Login</button>
                                        </div>
                                        <div class="form-group">
                                            <!--RESET PASSWORD LINK--> <span class="pull-right"><a href="#" class="">Forgot Password?</a></span>

                                        </div>
                                    </form>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- DROPDOWN LOGIN ENDS HERE -->
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-6">

                    <form class="form-horizontal" action="welcome.jsp" method="POST">
                        <fieldset>
                            <div id="legend">
                                <legend class="">Register</legend>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="username">Username</label>
                                <div class="controls">
                                    <input type="text" id="username" name="username" placeholder="" class="form-control input-lg">
                                    <p class="help-block">Username can contain any letters or numbers, without spaces</p>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="email">E-mail</label>
                                <div class="controls">
                                    <input type="email" id="email" name="email" placeholder="" class="form-control input-lg">
                                    <p class="help-block">Please provide your E-mail</p>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="password">Password</label>
                                <div class="controls">
                                    <input type="password" id="password" name="password" placeholder="" class="form-control input-lg">
                                    <p class="help-block">Password should be at least 6 characters</p>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="password_confirm">Password (Confirm)</label>
                                <div class="controls">
                                    <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="form-control input-lg">
                                    <p class="help-block">Please confirm password</p>
                                </div>
                            </div>

                            <div class="control-group">
                                <!-- Button -->
                                <div class="controls">
                                    <button  class="btn btn-success">Register</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>

                </div>
                <div class="col-md-6">
                    <!--Carousel-->
<div id="carousel1" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel1" data-slide-to="0" class="active"></li>
    <li data-target="#carousel1" data-slide-to="1"></li>
    <li data-target="#carousel1" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="..." alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="..." alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel1" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel1" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>     	
                    <!--/Carousel-->
                </div>
            </div>
        </div>
    </form>

   
</body>
</html>
