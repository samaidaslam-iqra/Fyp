<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>

    
  <link rel="shortcut icon" runat="server" href="~/assets/images/favicon.ico"  type="image/x-icon" />
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


    <div class="container">

        <div class="col-md-6">

            <form runat="server" class="form-light mt-20" role="form">

                <h3 class="section-title">Register Now For Free!!!
                </h3>
                <p>
                </p>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>First Name</label>
                            <asp:TextBox ID="txtFName" runat="server" class="form-control" placeholder="Your name" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First name missing" ControlToValidate="txtFName" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Last Name</label>
                            <asp:TextBox runat="server" ID="txtLName" class="form-control" placeholder="Your name" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last name missing" ControlToValidate="txtLName" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Your Password" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password missing" ControlToValidate="txtPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Confirm Password</label>
                            <asp:TextBox runat="server" ID="txtConfirmPassword" class="form-control" placeholder="Confirm Password" TextMode="Password" />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Miss match Password" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" EnableClientScript="False" ForeColor="Red"></asp:CompareValidator>
                            <br>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Confirm Password missing" ControlToValidate="txtConfirmPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Email</label>

                            <asp:TextBox runat="server" ID="txtEmail" class="form-control" placeholder="Email address" TextMode="Email" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email missing" ControlToValidate="txtEmail" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email format invalid" ControlToValidate="txtEmail" EnableClientScript="False" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Phone</label>

                            <asp:TextBox runat="server" ID="txtPhone" class="form-control" placeholder="Phone number" TextMode="Number" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone no missing" ControlToValidate="txtPhone" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Gender</label>
                            <asp:DropDownList ID="ddlGender" runat="server" class="form-control" placeholder="Gender">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                                <asp:ListItem Selected="True">Gender</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Country</label>
                            <asp:DropDownList ID="ddlCountry" runat="server" class="form-control" placeholder="Country">
                                <asp:ListItem Selected="True">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Date Of Birth</label>
                            <asp:TextBox ID="txtDob" runat="server" class="form-control" placeholder="mm/dd/yyyy" TextMode="DateTime" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="DOB missing" ControlToValidate="txtDob" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>

                <asp:Button runat="server" ID="btnRegister" Text="Register" class="btn btn-two" OnClick="btnRegister_Click"></asp:Button>
                <p>
                    <br />
                </p>

            </form>
        </div>


    </div>
    <!-- /container -->






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
                                Copyright &copy; 2016 Design By  Samaid Aslam
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
