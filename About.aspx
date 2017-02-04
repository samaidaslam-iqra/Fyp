<%@ Page Language="C#" EnableViewState="false" EnableSessionState="False"  AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>

  <link rel="shortcut icon" runat="server" href="~/assets/images/ico.png"  type="image/x-icon" />
    <link href="assets/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
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

                        <li><a href="Register.aspx">Register</a></li>
                        <li><a href="SignIn.aspx">Sign In</a></li>

                    </ul>

                </div>

                <!--/.nav-collapse -->
            </nav>
        </div>

    </div>
    <!-- /.navbar -->

    <!-- Header -->
    <header id="head">
        <div class="container">
            <div class="banner-content">
                <div id="da-slider" class="da-slider">
                    <div class="da-slide">
                        <h2>Teach</h2>
                        <p>
                            Doing Nothing For Others
                            <br />
                            Is The Undoing Of Ourselves
                        </p>
                        <div class="da-img"></div>
                    </div>


                    <div class="da-slide">
                        <h2>Learn</h2>
                        <p>
                            The Only Mistake You Can Make
                            <br />
                            Is Not Asking For Help
                        </p>
                        <div class="da-img"></div>
                    </div>
                    <div class="da-slide">
                        <h2>Super Success</h2>
                        <p>Give and Take, The Key to Success</p>
                        <div class="da-img"></div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- /Header -->


    <!-- container -->
    <section class="container">
        <div class="row">
            <!-- main content -->
            <section class="col-sm-8 maincontent">
                <h3>Our Institute</h3>
                <p>
                    <img src="assets/images/about1.jpg" alt="" class="img-rounded pull-right" width="300" />
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente.
                </p>
                <p>Consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente.</p>
                <h3>Our Achievements</h3>
                <strong>2014</strong>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente. consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam!</p>
                <strong>2013</strong>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente. consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam!</p>
                <strong>2012</strong>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente. consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam!</p>
                <strong>2011</strong>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente. consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam!</p>
            </section>
            <!-- /main -->

            <!-- Sidebar -->
            <aside class="col-sm-4 sidebar sidebar-right">

                <div class="panel">
                    <h4>Latest News</h4>
                    <ul class="list-unstyled list-spaces">
                        <li><a href="#">Responsive Design</a><br/>
                            <span class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, laborum.</span></li>
                        <li><a href="#">HTML5, CSS3 and JavaScript</a><br/>
                            <span class="small text-muted">Consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam</span></li>
                        <li><a href="#">Bootstrap</a><br/>
                            <span class="small text-muted">Eveniet, consequuntur eius repellendus eos aliquid molestiae ea</span></li>
                        <li><a href="#">Clean Template</a><br/>
                            <span class="small text-muted">Sed, mollitia earum debitis est itaque esse reiciendis amet cupiditate.</span></li>
                        <li><a href="#">Premium Quality</a><br/>
                            <span class="small text-muted">Voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia.</span></li>
                    </ul>
                </div>

            </aside>
            <!-- /Sidebar -->

        </div>
    </section>
    <!-- /container -->
    <section class="team-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>Meet Teachers</h3>
                    <p>Voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia.Voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia.Voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia.</p>
                    <br />
                </div>
            </div>
            <div class="row">

                <div class="col-md-4 col-sm-4 col-xs-4">
                    <!-- Team Member -->
                    <div class="team-member">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="assets/images/p1.jpg" alt="" />
                        </div>
                        <!-- Member Details -->
                        <h4>Samaid Aslam</h4>
                        <!-- Designation -->
                        <span class="pos">Senior Developer</span>
                        <div class="team-socials">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-github"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-4 col-xs-4">
                    <!-- Team Member -->
                    <div class="team-member pDark">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="assets/images/p2.jpg" alt="" />
                        </div>
                        <!-- Member Details -->
                        <h4>Shahzad Iqbal</h4>
                        <!-- Designation -->
                        <span class="pos">Manager</span>
                        <div class="team-socials">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-github"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <!-- Team Member -->
                    <div class="team-member pDark">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="assets/images/p3.jpg" alt="" />
                        </div>
                        <!-- Member Details -->
                        <h4>Muhammad Haisam</h4>
                        <!-- Designation -->
                        <span class="pos">Creative</span>
                        <div class="team-socials">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-github"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



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

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.cslider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/modernizr-latest.js"></script>

</body>

</html>
