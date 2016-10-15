<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashboardOld.aspx.cs" Inherits="Dashboard" %>

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
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <link href="assets/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/AdminLTE.min.css" rel="stylesheet" />


    <link href="assets/css/skins/skin-blue.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="assets/css/style.css" />
</head>
<body class="skin-blue sidebar-mini">

    <form id="form1" runat="server">
        <div class="wrapper">
            <header class="main-header">

                <a href="Dashboard.aspx" class="logo">

                    <span class="logo-lg">
                        <img src="assets/images/logo.png" alt="Ink" /><b>Ink </b>Academy </span>

                </a>
                <nav class="navbar navbar-static-top">
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">

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
                            <a href="UserProfile.aspx">
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

                <div class="col-md-5">
                    <div class="featured-box">
                        <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Font-Bold="true" Text=" "></asp:Label>
                        <br />
                        <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-two" Width="150px" BorderWidth="2px" Text="Logout" OnClick="btnLogout_Click"></asp:Button>
                    </div>
                </div>

                <section class="content">

                    <div class="row">
                        <div class="col-md-12">
                            <div id="features">
                                <div>
                                    <h2>Features</h2>
                                    <div class="row">

                                        <div class="col-md-5">
                                            <div class="featured-box">
                                                <i class="fa fa-comments fa-2x"></i>
                                                <div class="text">
                                                    <h3>Real Time Chat</h3>
                                                    Maintains Chat History,
                            Never Miss Important Instructions.
                            Users Can Make Audio Chats for Better Learning.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="featured-box">
                                                <i class="fa fa-database fa-2x" aria-hidden="true"></i>
                                                <div class="text">
                                                    <h3>Share Notes</h3>
                                                    Upload and Download Lectures, Notes, Books...

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="featured-box">
                                                <i class="fa fa-search fa-2x"></i>
                                                <div class="text">
                                                    <h3>Fast Search</h3>
                                                    Search Users by Skills, Category, Course, Interest...

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="featured-box">
                                                <i class="fa fa-bar-chart fa-2x"></i>
                                                <div class="text">
                                                    <h3>User Stats Maintainig</h3>
                                                    Users Can Rate Others, Feedback, Rank...


                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="featured-box">
                                                <i class="fa fa-users fa-2x"></i>
                                                <div class="text">
                                                    <h3>Maintains Profile</h3>
                                                    Users can set Profile Pictures, Set their Interests, Education details, Work Experience, About me...

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="featured-box">
                                                <i class="fa fa-pencil-square-o fa-2x"></i>
                                                <div class="text">
                                                    <h3>E-Whiteboard</h3>
                                                    Teach by Writing or Drawing Collaboration Makes Learning Easy.
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
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
    <script src="dist/js/app.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/demo.js"></script>


</body>

</html>
