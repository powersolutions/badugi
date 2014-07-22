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
        <link href="css/bootstrap-modal.css" rel="stylesheet" />
        <!-- /bootstrap css -->
        
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- /bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-modal.js"></script>
        <!-- /bootstrap js -->
        
        <script src="js/login.js"></script>
       
        
    </head>
    <body>
      <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
         
          <!-- Image Logo  -->
         <a class="navbar-brand" href="#">
            <img class="img-responsive" src="data:image/jpeg;base64,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
">
         </a>
           
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> <span class="sr-only">Toggle navigation</span>
 <span class="icon-bar"></span>

                <span
                class="icon-bar"></span> <span class="icon-bar"></span>

            </button>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li class="menu-item active"><a href="#" class="">About </a>

                </li>
                <ul class="nav navbar-nav">
                    <li class="menu-item"><a href="#" class="">Contact </a>

                    </li>
                    <ul class="nav navbar-nav">
                        <li class="menu-item"><a href="#" class="">Support <i class="fa fa-support"></i></a>

                        </li>
                        <ul class="nav navbar-nav">
                            <li class="menu-item"></li>
                            <li class="menu-item dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <b class="caret"></b></a>

                                <ul
                                class="dropdown-menu">
                                    <li class="menu-item dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Notifications <i class="fa fa-wrench"></i></a>

                                    </li>
                                    <li class="menu-item dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Edit Account </a>

                                        <ul
                                        class="dropdown-menu">
                                            <li class="menu-item "><a href="#" class="">Page with comments</a>

                                            </li>
                                            <li class="menu-item "><a href="#" class="">Page with comments disabled</a>

                                            </li>
                                            <li class="menu-item dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">More</a>

                                                <ul
                                                class="dropdown-menu">
                                                    <li><a href="#" class="">3rd level link more options</a>

                                                    </li>
                                                    <li><a href="#" class="">3rd level link</a>

                                                    </li>
                        </ul>
                        </li>
                    </ul>
                    </li>
                    <li class="divider"></li>
                    <li class="menu-item dropdown"><i class="fa"></i><a href="#" class="dropdown-toggle" data-toggle="dropdown">Logout <i class="fa fa-power-off padding-left-ten-px red-text"></i></a>

                    </li>
                </ul>
                </li>
            </ul>
    
            </ul>
            </ul>
            </ul>
            <!-- DROPDOWN LOGIN STARTS HERE -->
            <ul id="signInDropdown" class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-info navbar-btn dropdown-toggle"><i class="glyphicon glyphicon-user"></i> Login <span class="caret"></span>

                    </button>
                    <ul class="dropdown-menu">
                        <li style="width: 250px;">
                            <form class="navbar-form form" role="form">
                                <div class="form-group">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>

                                        <!--EMAIL
                                        ADDRESS-->
                                        <input id="emailInput" placeholder="email address" class="form-control"
                                        oninvalid="setCustomValidity('Please enter a valid email address!')" onchange="try{setCustomValidity('')}catch(e){}"
                                        required="" type="email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>

                                        <!--PASSWORD-->
                                        <input id="passwordInput" placeholder="password" class="form-control"
                                        oninvalid="setCustomValidity('Please enter a password!')" onchange="try{setCustomValidity('')}catch(e){}"
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
        <br><br><br><br><br>
     <div class="container">
  <div class="row">
  	<div class="col-md-6">
    
          <form class="form-horizontal" action="" method="POST">
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
  </div>
</div>
    </body>
</html>
