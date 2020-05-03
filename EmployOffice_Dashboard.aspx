<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EmployOffice_Dashboard.aspx.vb" Inherits="EmployOffice_Dashboard" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <style>
        body {
            font-family: "Lato", sans-serif;
            transition: background-color .5s;
        }

        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

                .sidenav a:hover {
                    color: #f1f1f1;
                }

            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

        #main {
            transition: margin-left .5s;
            padding: 16px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
        }
    </style>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Convo-RangRoot </title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
    <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
    <meta name="author" content="FreeHTML5.co" />
    <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="css/animate.css" />
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css" />
    <!-- Themify Icons-->
    <link rel="stylesheet" href="css/themify-icons.css" />
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css" />

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.css" />

    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />

    <!-- Theme style  -->
    <link rel="stylesheet" href="css/style.css" />

    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
    <form runat="server">
        <div class="gtco-loader"></div>

        <div id="page">


            <div class="page-inner">
                <nav class="gtco-nav" role="navigation">
                    <div class="gtco-container">

                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div id="gtco-logo" style="font-size: 30px;"><a href="EmployOffice_Dashboard.aspx">Convo<em>Rangroot</em></a></div>
                            </div>
                            <div class="col-xs-8 text-right menu-1">
                                <ul>
                                    <li class="active"><a href="Employoffice_dashboard.aspx">Dashboard</a></li>
                                      <li><a href="create_user.aspx">Create User</a></li>
                                       <li><a href="view_employ.aspx">View Employment Registration Details</a></li>
                                    <li><a href="View_placement.aspx">Placement Details</a></li>
                               <%--     <li><a href="uni_verify.aspx">University Verification</a></li>
                                    <li><a href="company_verify.aspx">Company Verification</a></li>--%>

                                    <asp:Button ID="emp_logout" Text="Logout" CssClass="btn btn-primary" runat="server" />
                                </ul>
                            </div>
                        </div>

                    </div>
                </nav>

                <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/eeo_dash.jpeg);">
                    <div class="overlay"></div>
                </header>

                <div class="gtco-section border-bottom">
                    <div class="gtco-container">
                           <span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776; open</span>
                                    <div id="mySidenav" class="sidenav">
                                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                                        <a href="Re_BasicEdu1.aspx">Basic Education</a>
                                        <a href="Re_year1.aspx">Year</a>
                                        <a href="Re_Caste1.aspx">Caste</a>
                                        <a href="Re_Field1.aspx">Field</a>
                                        <a href="Re_Active.aspx">Overall Review</a>
                                    </div>

                        <div id="gtco-counter" class="gtco-section">
                            <div class="gtco-container">
                                <div class="row">
                                 
                                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                        <div class="feature-center">
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                        <div class="feature-center">
                                            <span class="icon">
                                                <i class="ti-face-smile"></i>
                                            </span>
                                            <%--<span class="counter js-counter" data-speed="5000" data-refresh-interval="50"></span>--%>
                                            <asp:Label runat="server" CssClass="counter" data-speed="5000" ID="CountConvoLabel" Text=""></asp:Label>
                                            <span class="counter-label">Convocation Form Filled</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                        <div class="feature-center">
                                            <span class="icon">
                                                <i class="ti-briefcase"></i>
                                            </span>
                                            <%--<span class="counter js-counter" data-from="0" data-to="475" data-speed="5000" data-refresh-interval="50">1</span>--%>
                                            <asp:Label runat="server" CssClass="counter" data-speed="5000" ID="CountPlacementLabel" Text=""></asp:Label>
                                            <span class="counter-label">Students Selected In Placement</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                        <div class="feature-center">
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer id="gtco-footer" role="contentinfo">
                    <div class="gtco-container">
                        <div class="row row-p	b-md">
                            <div class="col-md-4">
                                <div class="gtco-widget">
                                    <h3>About <span class="footer-logo">Convo RangRoot</span>.<span></span></h3>
                                    <p>A place of connection between students, universities and employemnet exchange office. Mainly for submitting Convocation Details and Employement Registration Form or Placement Details.</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-push-1">
                                <div class="gtco-widget">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="gtco-widget">
                                    <h3>Get In Touch</h3>
                                    <ul class="gtco-quick-contact">
                                        <li><a href="#"><i class="icon-phone"></i>+91 9876543210</a></li>
                                        <li><a href="#"><i class="icon-mail2"></i>sgh_05@gmail.com</a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                        <div class="row copyright">
                            <div class="col-md-12">
                                <p class="pull-left">
                                    <small class="block">Designed by VGEC_SGH_05.co</small>
                                </p>
                            </div>
                        </div>

                    </div>
                </footer>

            </div>
        </div>



        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
        </div>
    </form>
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Carousel -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- countTo -->
    <script src="js/jquery.countTo.js"></script>
    <!-- Magnific Popup -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/magnific-popup-options.js"></script>
    <!-- Main -->
    <script src="js/main.js"></script>
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").style.marginLeft = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginLeft = "0";
            document.body.style.backgroundColor = "white";
        }
    </script>
</body>
</html>
