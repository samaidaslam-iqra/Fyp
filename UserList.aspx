<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

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
                        <li><a href="About.aspx">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="Register.aspx">Register</a></li>
                        <li><a href="SignIn.aspx">Sign In</a></li>

                        <%--         <comment>
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
                                    <a href="#"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                                </li>
                            </ul>
                            <!-- /.dropdown-user -->
                        </li>
                        <!-- /.dropdown 
    </comment> --%>
                    </ul>

                </div>

                <!--/.nav-collapse -->
            </nav>
        </div>

    </div>
    <!-- /.navbar -->


    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnNew" Text=" New " CssClass="btn btn-two" runat="server" OnClick="btnNew_Click" Style="margin-left: 630px" />
            <asp:GridView runat="server" ID="gridList" CssClass="grid" RowStyle-CssClass="rows" HeaderStyle-CssClass="header" OnRowCommand="gridList_RowCommand" AutoGenerateColumns="False" Width="830px">
                <Columns>
                    <asp:BoundField DataField="UserFirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="UserLastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="UserEmail" HeaderText="Email" />
                    <asp:BoundField DataField="UserGender" HeaderText="Gender" />
                    <asp:BoundField DataField="UserPhone" HeaderText="Phone" />
                    <%--  <asp:BoundField DataField="UserPhi" HeaderText="StudentCode" />--%>

                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:ImageButton ToolTip="Edit" ImageUrl="~/images/edit.png" ID="Edit" runat="server" CssClass="btnLink" CausesValidation="False" CommandName="Edt" CommandArgument='<%# Eval("UserId") %>' Text="Edit"></asp:ImageButton>
                            &nbsp;<asp:ImageButton ToolTip="View" ImageUrl="~/images/view.png" ID="View" runat="server" CssClass="btnLink" CausesValidation="False" CommandName="View" CommandArgument='<%# Eval("UserId") %>' Text="View"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle />
                <RowStyle />
            </asp:GridView>
        </div>
    </form>
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
                                <a href="Register.aspx">Register</a> |
                                <a href="SignIn.aspx">Sign In</a>
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

    <script src="assets/js/modernizr-latest.js"></script>
    <script src="ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/jquery.cslider.js"></script>

</body>

</html>
