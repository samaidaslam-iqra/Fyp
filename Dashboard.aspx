<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>
    <link rel="favicon" href="assets/images/favicon.png" />
    <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="assets/css/da-slider.css" />
    <link rel="stylesheet" href="assets/css/style.css" />


</head>
<body>
    <!-- Fixed navbar -->
    <form id="form1" runat="server">

        <div id="wrapper"></div>
        <div class="navbar navbar-inverse">

            <div class="container">
                <nav class="navbar navbar-default top-navbar" role="navigation">


                    <div class="navbar-header">
                        <!-- Button for smallest screens -->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                        <a class="navbar-brand" href="home.aspx">
                            <img src="assets/images/logoicon.png" alt="Ink" />
                        </a>
                    </div>

                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav pull-right mainNav">
                            <li class="active"><a href="Home.aspx">Home</a></li>



                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                    <i class="fa fa-envelope fa-fw"></i><i class="fa fa-caret-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-messages">
                                    <li>
                                        <a href="#">
                                            <div>
                                                <strong>Haisam</strong>
                                                <span class="pull-right text-muted">
                                                    <em>Today</em>
                                                </span>
                                            </div>
                                            <div>Hey can you give me some of your time?? I want to learn C#??</div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <div>
                                                <strong>Shezy</strong>
                                                <span class="pull-right text-muted">
                                                    <em>Yesterday</em>
                                                </span>
                                            </div>
                                            <div>Thanks for your help.. Really appreciate that..</div>
                                        </a>
                                    </li>

                                    <li class="divider"></li>
                                    <li>
                                        <a class="text-center" href="#">
                                            <strong>Read All Messages</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                                <!-- /.dropdown-messages -->


                            </li>
                            <!-- /.dropdown -->
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                    <i class="fa fa-bell fa-fw"></i><i class="fa fa-caret-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-alerts">
                                    <li>
                                        <a href="#">
                                            <div>
                                                <i class="fa fa-db fa-fw"></i>Haisam Uploaded a New File
                                            <span class="pull-right text-muted small">4 min</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <div>
                                                <i class="fa fa-twitter fa-fw"></i>3 New Followers
                                            <span class="pull-right text-muted small">12 min</span>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="divider"></li>
                                    <li>
                                        <a class="text-center" href="#">
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                                <!-- /.dropdown-alerts -->
                            </li>
                            <!-- /.dropdown -->
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                    <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li>
                                        <a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <asp:LinkButton ID="linkbtnLogout" runat="server" OnClick="btnLogout_Click"><i class="fa fa-sign-out fa-fw"> </i> LogOut</asp:LinkButton>

                                    </li>
                                </ul>
                                <!-- /.dropdown-user -->
                            </li>
                            <!-- /.dropdown 
  
                
                <!--/.nav-collapse -->
                        </ul>

                    </div>

                </nav>
            </div>

        </div>
        <!-- /.navbar -->
        <nav class="navbar navbar-inverse sidebar" role="navigation">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brand</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home<span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
                        <li><a href="#">Profile<span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
                        <li><a href="#">Messages<span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
                            <ul class="dropdown-menu forAnimate" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Home<span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
                        <li><a href="#">Profile<span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
                        <li><a href="#">Messages<span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
                            <ul class="dropdown-menu forAnimate" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                        <asp:Button ID="btnLogout" runat="server" class="btn btn-two" Text="Logout" OnClick="btnLogout_Click"></asp:Button>
                    </div>
                </div>

            </div>
        </div>

        <footer id="footer">
            <div class="container">
                <div class="social text-center">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-flickr"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>
                </div>

                <div class="clear"></div>
                <!--CLEAR FLOATS-->
            </div>
            <div class="footer2">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="simplenav">
                                    <a href="Home.aspx">Home</a> |
                                <a href="About.aspx">About</a> |
                                <a href="#">Contact</a> |
                        <%--        <a href="Register.aspx">Register</a> |
                                <a href="SignIn.aspx">Sign In</a>--%>
                                </p>
                            </div>
                        </div>

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="text-right">
                                    Copyright &copy; 2016 Design By  Samaid Aslam
                                </p>
                            </div>
                        </div>

                    </div>
                    <!-- /row of panels -->
                </div>
            </div>
        </footer>
    </form>


    <script src="assets/js/modernizr-latest.js"></script>
    <script src="ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/jquery.cslider.js"></script>

</body>

</html>
