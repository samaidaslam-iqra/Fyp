<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>
    <link href="plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />
   
  <link rel="shortcut icon" runat="server" href="~/assets/images/favicon.ico"  type="image/x-icon" />
    <link href="assets/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link href="assets/css/AdminLTE.min.css" rel="stylesheet" />

</head>
<body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse">

        <div class="container">
            <nav class="navbar navbar-default top-navbar" role="navigation">


                <div class="navbar-header">
                    <!-- Button for smallest screens -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
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
                    </ul>

                </div>

                <!--/.nav-collapse -->
            </nav>
        </div>

    </div>
    <!-- /.navbar -->


    <form id="form1" runat="server">
        <div class="box">
            <div class="box-body">
                <asp:Button ID="btnNew" Text=" New " CssClass="btn btn-two" runat="server" OnClick="btnNew_Click" Style="margin-left: 630px" /><br />
                <asp:GridView runat="server" ID="gridList" CssClass="table table-bordered table-striped" RowStyle-CssClass="rows" HeaderStyle-CssClass="header" OnRowCommand="gridList_RowCommand" AutoGenerateColumns="False" Width="830px">
                    <Columns>
                        <asp:BoundField DataField="UserFirstName" HeaderText="First Name" />
                        <asp:BoundField DataField="UserLastName" HeaderText="Last Name" />
                        <asp:BoundField DataField="UserEmail" HeaderText="Email" />
                        <asp:BoundField DataField="UserGender" HeaderText="Gender" />
                        <asp:BoundField DataField="UserPhone" HeaderText="Phone" />
                        <%--  <asp:BoundField DataField="UserPhi" HeaderText="StudentCode" />--%>

                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                 <span style="visibility:hidden;">..</span>
                                <asp:ImageButton ToolTip=" Edit "  ID="Edit" runat="server" CssClass="btnLink"  ImageUrl="~/assets/images/edit.png" CausesValidation="False" CommandName="Edt" CommandArgument='<%# Eval("UserId") %>' Text=" Edit "> </asp:ImageButton>
                                <span style="visibility:hidden;">. .</span>
                                &nbsp;<asp:ImageButton ToolTip=" View "  ID="View" runat="server" CssClass="btnLink" ImageUrl="~/assets/images/view.png"  CausesValidation="False" CommandName="View" CommandArgument='<%# Eval("UserId") %>' Text=" View "></asp:ImageButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle />
                    <RowStyle />
                </asp:GridView>
            </div>
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
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>

</html>
