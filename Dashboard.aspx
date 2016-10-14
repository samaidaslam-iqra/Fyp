<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

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

                <%-- <section class="content-header">
                    <h1>Dashboard
                               <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>--%>



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
                        <div class="col-md-6">
                            <!-- DIRECT CHAT -->
                            <%--    <div class="box box-warning direct-chat direct-chat-warning">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Direct Chat</h3>

                                    <div class="box-tools pull-right">
                                        <span data-toggle="tooltip" title="3 New Messages" class="badge bg-yellow">3</span>
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle">
                                            <i class="fa fa-comments"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="remove">
                                            <i class="fa fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <!-- Conversations are loaded here -->
                                    <div class="direct-chat-messages">
                                        <!-- Message. Default to the left -->
                                        <div class="direct-chat-msg">
                                            <div class="direct-chat-info clearfix">
                                                <span class="direct-chat-name pull-left">Alexander Pierce</span>
                                                <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                                            </div>
                                            <!-- /.direct-chat-info -->
                                            <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image"><!-- /.direct-chat-img -->
                                            <div class="direct-chat-text">
                                                Is this template really for free? That's unbelievable!
                     
                                            </div>
                                            <!-- /.direct-chat-text -->
                                        </div>
                                        <!-- /.direct-chat-msg -->

                                        <!-- Message to the right -->
                                        <div class="direct-chat-msg right">
                                            <div class="direct-chat-info clearfix">
                                                <span class="direct-chat-name pull-right">Sarah Bullock</span>
                                                <span class="direct-chat-timestamp pull-left">23 Jan 2:05 pm</span>
                                            </div>
                                            <!-- /.direct-chat-info -->
                                            <img class="direct-chat-img" src="dist/img/user3-128x128.jpg" alt="message user image"><!-- /.direct-chat-img -->
                                            <div class="direct-chat-text">
                                                You better believe it!
                     
                                            </div>
                                            <!-- /.direct-chat-text -->
                                        </div>
                                        <!-- /.direct-chat-msg -->

                                        <!-- Message. Default to the left -->
                                        <div class="direct-chat-msg">
                                            <div class="direct-chat-info clearfix">
                                                <span class="direct-chat-name pull-left">Alexander Pierce</span>
                                                <span class="direct-chat-timestamp pull-right">23 Jan 5:37 pm</span>
                                            </div>
                                            <!-- /.direct-chat-info -->
                                            <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image"><!-- /.direct-chat-img -->
                                            <div class="direct-chat-text">
                                                Working with AdminLTE on a great new app! Wanna join?
                     
                                            </div>
                                            <!-- /.direct-chat-text -->
                                        </div>
                                        <!-- /.direct-chat-msg -->

                                        <!-- Message to the right -->
                                        <div class="direct-chat-msg right">
                                            <div class="direct-chat-info clearfix">
                                                <span class="direct-chat-name pull-right">Sarah Bullock</span>
                                                <span class="direct-chat-timestamp pull-left">23 Jan 6:10 pm</span>
                                            </div>
                                            <!-- /.direct-chat-info -->
                                            <img class="direct-chat-img" src="dist/img/user3-128x128.jpg" alt="message user image"><!-- /.direct-chat-img -->
                                            <div class="direct-chat-text">
                                                I would love to.
                     
                                            </div>
                                            <!-- /.direct-chat-text -->
                                        </div>
                                        <!-- /.direct-chat-msg -->

                                    </div>
                                    <!--/.direct-chat-messages-->

                                    <!-- Contacts are loaded here -->
                                    <div class="direct-chat-contacts">
                                        <ul class="contacts-list">
                                            <li>
                                                <a href="#">
                                                    <img class="contacts-list-img" src="dist/img/user1-128x128.jpg" alt="User Image">

                                                    <div class="contacts-list-info">
                                                        <span class="contacts-list-name">Count Dracula
                                 
                                                            <small class="contacts-list-date pull-right">2/28/2015</small>
                                                        </span>
                                                        <span class="contacts-list-msg">How have you been? I was...</span>
                                                    </div>
                                                    <!-- /.contacts-list-info -->
                                                </a>
                                            </li>
                                            <!-- End Contact Item -->
                                            <li>
                                                <a href="#">
                                                    <img class="contacts-list-img" src="dist/img/user7-128x128.jpg" alt="User Image">

                                                    <div class="contacts-list-info">
                                                        <span class="contacts-list-name">Sarah Doe
                                 
                                                            <small class="contacts-list-date pull-right">2/23/2015</small>
                                                        </span>
                                                        <span class="contacts-list-msg">I will be waiting for...</span>
                                                    </div>
                                                    <!-- /.contacts-list-info -->
                                                </a>
                                            </li>
                                            <!-- End Contact Item -->
                                            <li>
                                                <a href="#">
                                                    <img class="contacts-list-img" src="dist/img/user3-128x128.jpg" alt="User Image">

                                                    <div class="contacts-list-info">
                                                        <span class="contacts-list-name">Nadia Jolie
                                 
                                                            <small class="contacts-list-date pull-right">2/20/2015</small>
                                                        </span>
                                                        <span class="contacts-list-msg">I'll call you back at...</span>
                                                    </div>
                                                    <!-- /.contacts-list-info -->
                                                </a>
                                            </li>
                                            <!-- End Contact Item -->
                                            <li>
                                                <a href="#">
                                                    <img class="contacts-list-img" src="dist/img/user5-128x128.jpg" alt="User Image">

                                                    <div class="contacts-list-info">
                                                        <span class="contacts-list-name">Nora S. Vans
                                 
                                                            <small class="contacts-list-date pull-right">2/10/2015</small>
                                                        </span>
                                                        <span class="contacts-list-msg">Where is your new...</span>
                                                    </div>
                                                    <!-- /.contacts-list-info -->
                                                </a>
                                            </li>
                                            <!-- End Contact Item -->
                                            <li>
                                                <a href="#">
                                                    <img class="contacts-list-img" src="dist/img/user6-128x128.jpg" alt="User Image">

                                                    <div class="contacts-list-info">
                                                        <span class="contacts-list-name">John K.
                                 
                                                            <small class="contacts-list-date pull-right">1/27/2015</small>
                                                        </span>
                                                        <span class="contacts-list-msg">Can I take a look at...</span>
                                                    </div>
                                                    <!-- /.contacts-list-info -->
                                                </a>
                                            </li>
                                            <!-- End Contact Item -->
                                            <li>
                                                <a href="#">
                                                    <img class="contacts-list-img" src="dist/img/user8-128x128.jpg" alt="User Image">

                                                    <div class="contacts-list-info">
                                                        <span class="contacts-list-name">Kenneth M.
                                 
                                                            <small class="contacts-list-date pull-right">1/4/2015</small>
                                                        </span>
                                                        <span class="contacts-list-msg">Never mind I found...</span>
                                                    </div>
                                                    <!-- /.contacts-list-info -->
                                                </a>
                                            </li>
                                            <!-- End Contact Item -->
                                        </ul>
                                        <!-- /.contatcts-list -->
                                    </div>
                                    <!-- /.direct-chat-pane -->
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <form action="#" method="post">
                                        <div class="input-group">
                                            <input type="text" name="message" placeholder="Type Message ..." class="form-control">
                                            <span class="input-group-btn">
                                                <button type="button" class="btn btn-warning btn-flat">Send</button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.box-footer-->
                            </div>--%>
                            <!--/.direct-chat -->
                        </div>
                    </div>
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

                    <!-- Box Comment -->
                    <%--      <div class="row">
                        <div class="col-md-6">
                          
                            <div class="box box-widget">
                                <div class="box-header with-border">
                                    <div class="user-block">
                                        <img class="img-circle" src="../dist/img/user1-128x128.jpg" alt="User Image">
                                        <span class="username"><a href="#">Jonathan Burke Jr.</a></span>
                                        <span class="description">Shared publicly - 7:30 PM Today</span>
                                    </div>
                                    <!-- /.user-block -->
                                    <div class="box-tools">
                                        <button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Mark as read">
                                            <i class="fa fa-circle-o"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <img class="img-responsive pad" src="../dist/img/photo2.png" alt="Photo">

                                    <p>I took this photo this morning. What do you guys think?</p>
                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i>Share</button>
                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i>Like</button>
                                    <span class="pull-right text-muted">127 likes - 3 comments</span>
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer box-comments">
                                    <div class="box-comment">
                                        <!-- User image -->
                                        <img class="img-circle img-sm" src="../dist/img/user3-128x128.jpg" alt="User Image">

                                        <div class="comment-text">
                                            <span class="username">Maria Gonzales
                       
                                                <span class="text-muted pull-right">8:03 PM Today</span>
                                            </span>
                                            <!-- /.username -->
                                            It is a long established fact that a reader will be distracted
                  by the readable content of a page when looking at its layout.
               
                                        </div>
                                        <!-- /.comment-text -->
                                    </div>
                                    <!-- /.box-comment -->
                                    <div class="box-comment">
                                        <!-- User image -->
                                        <img class="img-circle img-sm" src="../dist/img/user4-128x128.jpg" alt="User Image">

                                        <div class="comment-text">
                                            <span class="username">Luna Stark
                       
                                                <span class="text-muted pull-right">8:03 PM Today</span>
                                            </span>
                                            <!-- /.username -->
                                            It is a long established fact that a reader will be distracted
                  by the readable content of a page when looking at its layout.
               
                                        </div>
                                        <!-- /.comment-text -->
                                    </div>
                                    <!-- /.box-comment -->
                                </div>
                                <!-- /.box-footer -->
                                <div class="box-footer">
                                    <form action="#" method="post">
                                        <img class="img-responsive img-circle img-sm" src="../dist/img/user4-128x128.jpg" alt="Alt Text">
                                        <!-- .img-push is used to add margin to elements next to floating images -->
                                        <div class="img-push">
                                            <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                                        </div>
                                    </form>
                                </div>
                                <!-- /.box-footer -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                        <div class="col-md-6">
                            <!-- Box Comment -->
                            <div class="box box-widget">
                                <div class="box-header with-border">
                                    <div class="user-block">
                                        <img class="img-circle" src="../dist/img/user1-128x128.jpg" alt="User Image">
                                        <span class="username"><a href="#">Jonathan Burke Jr.</a></span>
                                        <span class="description">Shared publicly - 7:30 PM Today</span>
                                    </div>
                                    <!-- /.user-block -->
                                    <div class="box-tools">
                                        <button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Mark as read">
                                            <i class="fa fa-circle-o"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <!-- post text -->
                                    <p>
                                        Far far away, behind the word mountains, far from the
                countries Vokalia and Consonantia, there live the blind
                texts. Separated they live in Bookmarksgrove right at
                                    </p>

                                    <p>
                                        the coast of the Semantics, a large language ocean.
                A small river named Duden flows by their place and supplies
                it with the necessary regelialia. It is a paradisematic
                country, in which roasted parts of sentences fly into
                your mouth.
                                    </p>

                                    <!-- Attachment -->
                                    <div class="attachment-block clearfix">
                                        <img class="attachment-img" src="../dist/img/photo1.png" alt="Attachment Image">

                                        <div class="attachment-pushed">
                                            <h4 class="attachment-heading"><a href="http://www.lipsum.com/">Lorem ipsum text generator</a></h4>

                                            <div class="attachment-text">
                                                Description about the attachment can be placed here.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry... <a href="#">more</a>
                                            </div>
                                            <!-- /.attachment-text -->
                                        </div>
                                        <!-- /.attachment-pushed -->
                                    </div>
                                    <!-- /.attachment-block -->

                                    <!-- Social sharing buttons -->
                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i>Share</button>
                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i>Like</button>
                                    <span class="pull-right text-muted">45 likes - 2 comments</span>
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer box-comments">
                                    <div class="box-comment">
                                        <!-- User image -->
                                        <img class="img-circle img-sm" src="../dist/img/user3-128x128.jpg" alt="User Image">

                                        <div class="comment-text">
                                            <span class="username">Maria Gonzales
                       
                                                <span class="text-muted pull-right">8:03 PM Today</span>
                                            </span>
                                            <!-- /.username -->
                                            It is a long established fact that a reader will be distracted
                  by the readable content of a page when looking at its layout.
               
                                        </div>
                                        <!-- /.comment-text -->
                                    </div>
                                    <!-- /.box-comment -->
                                    <div class="box-comment">
                                        <!-- User image -->
                                        <img class="img-circle img-sm" src="../dist/img/user5-128x128.jpg" alt="User Image">

                                        <div class="comment-text">
                                            <span class="username">Nora Havisham
                       
                                                <span class="text-muted pull-right">8:03 PM Today</span>
                                            </span>
                                            <!-- /.username -->
                                            The point of using Lorem Ipsum is that it has a more-or-less
                  normal distribution of letters, as opposed to using
                  'Content here, content here', making it look like readable English.
               
                                        </div>
                                        <!-- /.comment-text -->
                                    </div>
                                    <!-- /.box-comment -->
                                </div>
                                <!-- /.box-footer -->
                                <div class="box-footer">
                                    <form action="#" method="post">
                                        <img class="img-responsive img-circle img-sm" src="../dist/img/user4-128x128.jpg" alt="Alt Text">
                                        <!-- .img-push is used to add margin to elements next to floating images -->
                                        <div class="img-push">
                                            <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                                        </div>
                                    </form>
                                </div>
                                <!-- /.box-footer -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>--%>
                    <!-- /.row		
		</div> -->
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
