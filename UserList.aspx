<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>
    <link rel="shortcut icon" runat="server" href="~/assets/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" />
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
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-body table-responsive no-padding">
                                    <asp:Button ID="btnNew" Text=" New " CssClass="btn btn-two" runat="server" OnClick="btnNew_Click" Style="margin-left: 630px" /><br />

                                    <asp:GridView runat="server" ID="gridList" CssClass="table table-bordered table-striped" OnPageIndexChanging="gridList_PageIndexChanging" OnRowCommand="gridList_RowCommand" AutoGenerateColumns="False" AllowPaging="true" PageSize="5">
                                        <Columns>
                                            <asp:BoundField DataField="UserFirstName" HeaderText="First Name" />
                                            <asp:BoundField DataField="UserLastName" HeaderText="Last Name" />
                                            <asp:BoundField DataField="UserEmail" HeaderText="Email" />
                                            <asp:BoundField DataField="UserGender" HeaderText="Gender" />
                                            <asp:BoundField DataField="UserPhone" HeaderText="Phone" />
                                            <%--  <asp:BoundField DataField="UserPhi" HeaderText="StudentCode" />--%>

                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <span style="visibility: hidden;">..</span>
                                                    <asp:ImageButton ToolTip=" Edit " ID="Edit" runat="server" CssClass="btnLink" ImageUrl="~/assets/images/edit.png" CausesValidation="False" CommandName="Edt" CommandArgument='<%# Eval("UserId") %>' Text=" Edit "></asp:ImageButton>
                                                    <span style="visibility: hidden;">. .</span>
                                                    &nbsp;<asp:ImageButton ToolTip=" View " ID="View" runat="server" CssClass="btnLink" ImageUrl="~/assets/images/view.png" CausesValidation="False" CommandName="View" CommandArgument='<%# Eval("UserId") %>' Text=" View "></asp:ImageButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <HeaderStyle />
                                        <RowStyle />
                                        <PagerSettings FirstPageText="&amp;lt; &amp;lt;" LastPageText="&amp;gt; &amp;gt;" />
                                        <PagerStyle Font-Underline="False" />
                                    </asp:GridView>
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
    <script src="assets/js/dashboard2.js"></script>
    <script src="assets/js/dashboard.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/demo.js"></script>

</body>

</html>
