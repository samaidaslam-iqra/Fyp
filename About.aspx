<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

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
                <h3>Over view</h3>
                <p>
                    <img src="assets/images/about1.jpg" alt="" class="img-rounded pull-right" width="300" />
                    After great effort we have reached the result with the grace of Allah that Our project named “INK” has been developed. We will never forget the teachings and support of our respected project supervisor DR. Syed Hasan adil as they assist in every huddle faced during development tenure.
                </p>
                <p>The name of our Final Year Project (FYP) is ‘INK (INNOVATION AND KNOWLEDGE)' by which you can conduct class of multiple students by broadcasting feature of web application. Anyone who is skilled in any specific domain can educate people by using e-white board feature and other major tools, major objective is to provide people a platform through which they can get education by sitting on their stations, Promoting e-learning system is the core aim of this project.</p>
                <h2><b>Detailed Model</b></h2>
                <strong>MOTIVATION</strong>
                <p>Our project scope is to target virtual education system. The idea is to make feasibility for people to get home based education; it is an opportunity to promote online education system in our society. Everyone wants to get education but some of them cannot afford the fee of courses so it’s an educational tool to get benefit.</p>
                <strong>SCOPE</strong>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente. consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam!</p>
                <strong>STATEMENT</strong>
                <p>We create this application because we want to make deliverance of education easier and feasible. In locality everyone use to go physically in institutes to get education but if education comes to you then what better than this, so focusing these problems a virtual system is required to make education uncomplicated and comfortable for all.</p>
                <strong>SOLUTION</strong>
                <p>Everyone wish to get quality education so for this purpose we created a dynamic platform where everyone can utilize his/her skills by educating society. Both student and teacher can play role to enhance the system of education in different colors. Meetings and conferences can be made easily through online communication.</p>
            </section>
            <!-- /main -->

            <!-- Sidebar -->
            <aside class="col-sm-4 sidebar sidebar-right">

                <div class="panel">
                    <h4>Behaviour</h4>
                    <ul class="list-unstyled list-spaces">
                        <li><a href="#">Responsive Design</a><br/>
                            <span class="small text-muted">The development platform used in this project is ASP.Net, SQL SERVER and Signal-R API to integrate path to communicate.</span></li>
                        <li><a href="#">HTML5, CSS3 and JavaScript</a><br/>
                            <span class="small text-muted">This phase get completed when all the data collected from different sources. R&D performed and visited different web Applications to complete analysis. </span></li>
                        <li><a href="#">Bootstrap</a><br/>
                            <span class="small text-muted">The application involves user friendly environment as the friendly environment is created to interact with the system.</span></li>
                        <li><a href="#">Clean Template</a><br/>
                            <span class="small text-muted">App works efficiently. Multiple tools are used to build communication between users. Library and lecture sharing feature is included.</span></li>
                        <li><a href="#">Premium Quality</a><br/>
                            <span class="small text-muted">Capturing students and their difficulties regarding education is the major background of this project which lead us to make this online education system. </span></li>
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
                    <h3>Contribution</h3>
                    <p> As the big picture of this project reflects the idea of e-learning system, work with efficient manner is done by the team. At each level research and development was a major role to defend the features of application.</p>
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