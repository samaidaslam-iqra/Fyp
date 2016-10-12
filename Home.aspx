<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>

  <link rel="favicon" href="assets/images/favicon.png" />
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

    <div id="features">
        <div class="container">
            <h2>Features</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="featured-box">
                        <i class="fa fa-pencil-square-o fa-2x"></i>
                        <div class="text">
                            <h3>E-Whiteboard</h3>
                            Teach by Writing or Drawing Collaboration Makes Learning Easy.
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
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
                <div class="col-md-4">
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
                <div class="col-md-4">
                    <div class="featured-box">
                        <i class="fa fa-search fa-2x"></i>
                        <div class="text">
                            <h3>Fast Search</h3>
                            Search Users by Skills, Category, Course, Interest...

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="featured-box">
                        <i class="fa fa-bar-chart fa-2x"></i>
                        <div class="text">
                            <h3>User Stats Maintainig</h3>
                            Users Can Rate Others, Feedback, Rank...


                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="featured-box">
                        <i class="fa fa-users fa-2x"></i>
                        <div class="text">
                            <h3>Maintains Profile</h3>
                            Users can set Profile Pictures, Set their Interests, Education details, Work Experience, About me...

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- container -->
    <section class="container">
        <div class="heading">
            <!-- Heading -->
            <h2>Our Aim</h2>
        </div>
        <div class="row">
            <div class="col-md-4">
                <img src="assets/images/1.jpg" alt="" class="img-responsive" />
            </div>
            <div class="col-md-8">
                <p>The purpose of this website is to provide a platform where anyone can volunteers by teaching, guiding, or helping those who do not have enough resources to afford quality education or private tuitions or coaching classes.</p>
                <blockquote class="blockquote-1">
                    <p>
                        •	Volunteering is an opportunity to share your skills, knowledge, and enthusiasm, while immersing yourself in a unique culture, and contributing to a good cause.
                        <br />
                        •	Ideally volunteers are independent, self-motivated, like working with kids, culturally sensitive, eager to learn, energetic and want to make a positive impact.<br />
                        •	For younger volunteers, this web brings a great chance to build confidence, independence and social awareness.
                        <br />
                        •	Whether you are new to volunteering, or a relatively experienced volunteer, we believe that everyone has a part to play, as long as you have the desire to help.
                    </p>
                    <!-- 	<small>Someone famous in <cite title="Source Title">Source Title</cite></small> -->
                </blockquote>
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
