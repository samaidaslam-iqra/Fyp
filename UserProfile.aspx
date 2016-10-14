<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>

    <link rel="shortcut icon" runat="server" href="~/assets/images/favicon.ico" type="image/x-icon" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />

    <link href="assets/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/AdminLTE.min.css" rel="stylesheet" />


    <link href="assets/css/skins/skin-blue.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="assets/css/style.css" />
</head>
<body class="hold-transition skin-blue sidebar-mini">

    <form id="form1" runat="server">
        <div class="wrapper">
            <header class="main-header">

                <a href="Dashboard.aspx" class="logo">

                    <span class="logo-lg">
                        <img src="assets/images/logo.png" alt="Ink" /><b>Ink </b>Academy </span>

                </a>
                <nav class="navbar navbar-static-top">
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <%-- <li class="dropdown messages-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success">4</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 4 messages</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <!-- start message -->
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>Support Team
                       
                                                        <small><i class="fa fa-clock-o"></i>5 mins</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <!-- end message -->
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>AdminLTE Design Team
                       
                                                        <small><i class="fa fa-clock-o"></i>2 hours</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>Developers
                       
                                                        <small><i class="fa fa-clock-o"></i>Today</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>Sales Department
                       
                                                        <small><i class="fa fa-clock-o"></i>Yesterday</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>Reviewers
                       
                                                        <small><i class="fa fa-clock-o"></i>2 days</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">See All Messages</a></li>
                                </ul>
                            </li>--%>
                            <!-- Notifications: style can be found in dropdown.less -->
                            <%--      <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">10</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 10 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-aqua"></i>5 new members joined today
                    </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-warning text-yellow"></i>Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-red"></i>5 new members joined
                    </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-shopping-cart text-green"></i>25 sales made
                    </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-user text-red"></i>You changed your username
                    </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">View all</a></li>
                                </ul>
                            </li>--%>
                            <!-- Tasks: style can be found in dropdown.less -->
                            <%--  <li class="dropdown tasks-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-flag-o"></i>
                                    <span class="label label-danger">9</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 9 tasks</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <!-- Task item -->
                                                <a href="#">
                                                    <h3>Design some buttons
                       
                                                        <small class="pull-right">20%</small>
                                                    </h3>
                                                    <div class="progress xs">
                                                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">20% Complete</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <!-- end task item -->
                                            <li>
                                                <!-- Task item -->
                                                <a href="#">
                                                    <h3>Create a nice theme
                       
                                                        <small class="pull-right">40%</small>
                                                    </h3>
                                                    <div class="progress xs">
                                                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">40% Complete</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <!-- end task item -->
                                            <li>
                                                <!-- Task item -->
                                                <a href="#">
                                                    <h3>Some task I need to do
                       
                                                        <small class="pull-right">60%</small>
                                                    </h3>
                                                    <div class="progress xs">
                                                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">60% Complete</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <!-- end task item -->
                                            <li>
                                                <!-- Task item -->
                                                <a href="#">
                                                    <h3>Make beautiful transitions
                       
                                                        <small class="pull-right">80%</small>
                                                    </h3>
                                                    <div class="progress xs">
                                                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">80% Complete</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <!-- end task item -->
                                        </ul>
                                    </li>
                                    <li class="footer">
                                        <a href="#">View all tasks</a>
                                    </li>
                                </ul>
                            </li>--%>
                            <!-- User Account: style can be found in dropdown.less -->

                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="assets/images/p1.jpg" class="user-image" alt="User Image" />
                                    <span id="span1" runat="server" class="hidden-xs"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="assets/images/p1.jpg" class="img-circle" alt="User Image" />

                                        <p id="p2" runat="server">


                                            <%--   <small></small>--%>
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <li class="user-body">
                                        <div class="row">
                                            <div class="col-xs-4 text-center">
                                                <a href="#">Followers</a>
                                            </div>
                                            <div class="col-xs-4 text-center">
                                                <a href="#">Chats</a>
                                            </div>
                                            <div class="col-xs-4 text-center">
                                                <a href="#">Friends</a>
                                            </div>
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <asp:LinkButton runat="server" ID="linkbtnLogout" CssClass="btn btn-default btn-flat" OnClick="btnLogout_Click">Sign out</asp:LinkButton>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>

            <aside class="main-sidebar">
                <section class="sidebar">
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="assets/images/p1.jpg" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p id="p1" runat="server"></p>
                            <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                        </div>
                    </div>
                    <div class="sidebar-form">
                        <div class="input-group">
                            <asp:TextBox runat="server" ID="txtSearch" CssClass="form-control" />
                            <span class="input-group-btn">
                                <asp:LinkButton runat="server" ID="btnSearch" CssClass="btn btn-flat"> <i class="fa fa-search"></i></asp:LinkButton>
                            </span>
                        </div>
                    </div>
                    <ul class="sidebar-menu">
                        <li class="header"></li>
                        <li class="active treeview">
                            <a href="dashboard.aspx">
                                <i class="fa fa-dashboard"></i><span>Dashboard</span>
                            </a>
                        </li>

                        <li class="treeview">
                            <a href="UserList.aspx">
                                <i class="fa fa-files-o"></i>
                                <span>Users List</span>
                                <span class="pull-right-container">
                                    <span class="label label-primary pull-right"></span>
                                </span>
                            </a>

                        </li>
                        <li>
                            <a href="Profile.aspx">
                                <i class="fa fa-th"></i><span>Profile</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-green"></small>
                                </span>
                            </a>
                        </li>
                    </ul>

                </section>

            </aside>

            <div class="content-wrapper">
                <section class="content">
                    <div class="row">
                        <div class="col-md-6">

                            <div class="featured-box">
                                <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Font-Bold="true" Text=" "></asp:Label>
                                <br />
                                <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-two" Width="150px" BorderWidth="2px" Text="Logout" OnClick="btnLogout_Click"></asp:Button>
                            </div>

                        </div>
                    </div>

                    <div class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-header">Samaid Aslam <small>Profile</small>
                            </h1>
                        </div>
                    </div>
                    <!-- /. ROW  -->

                    <div class="row">


                        <div class="panel-footer back-footer-brown">
                            About Me
                        </div>
                        <div class="panel panel-primary text-center no-boder bg-color-brown">
                            About Me
                            
                       
                        </div>
                        <div class="panel-footer back-footer-green">
                            Education
                        </div>
                        <div class="panel panel-primary text-center no-boder bg-color-green">
                            <li>Intermediate</li>
                            <li>Bachelors</li>
                            <li>Masters</li>
                        </div>

                        <div class="panel-footer back-footer-blue">
                            Fields Of Interest
                        </div>
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <li>Computer Sciences</li>
                            <li>Android Programming</li>
                            <li>Physics</li>
                        </div>
                    </div>
                        </div>

                </section>
            </div>

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Ink </b>Online Academy
                </div>
                <strong>Copyright &copy; 2016 <a href="#">Samaid Aslam</a>.</strong> All rights reserved.
            </footer>
        </div>

    </form>
    <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="assets/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="assets/js/dashboard2.js"></script>
    <script src="assets/js/dashboard.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/demo.js"></script>

</body>

</html>
