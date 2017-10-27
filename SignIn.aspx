<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>

    <link rel="shortcut icon" runat="server" href="~/assets/images/favicon.ico" type="image/x-icon" />

    <link href="assets/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" />
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
                        <li><a href="Register.aspx">Register</a></li>
                        <li><a href="SignIn.aspx">Sign In</a></li>

                    </ul>
                </div>
                <!--/.nav-collapse -->
            </nav>
        </div>
    </div>
    <!-- /.navbar -->

    <div class="login">
        <%--  <div class="login-triangle"></div>--%>

        <h2 class="login-header">Log in</h2>

        <form runat="server" class="login-container">
            <p>
                <asp:TextBox runat="server" ID="txtEmail" placeholder="Email" TextMode="Email" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email missing" ControlToValidate="txtEmail" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

            </p>
            <p>
                <asp:TextBox runat="server" ID="txtPassword" placeholder="Password" TextMode="Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password missing" ControlToValidate="txtPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Button runat="server" UseSubmitBehavior="true" ID="btnLogin" Text="Log in" OnClick="btnLogin_Click" />
                <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>

            </p>

        </form>
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
                                                           <a href="Register.aspx">Register</a> |
                                <a href="SignIn.aspx">Sign In</a>
                            </p>
                        </div>
                    </div>

                    <div class="col-md-6 panel">
                        <div class="panel-body">
                            <p class="text-right">
                                Copyright &copy; 2016 Design By Samaid Aslam
                            </p>
                        </div>
                    </div>

                </div>
                <!-- /row of panels -->
            </div>
        </div>
    </footer>


    <script src="assets/js/custom.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>


</html>
