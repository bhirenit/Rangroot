<%@ Page Language="VB" AutoEventWireup="false" CodeFile="reg_std.aspx.vb" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" />

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

    <div class="gtco-loader"></div>
    <div id="page">
        <div class="page-inner">
            <nav class="gtco-nav" role="navigation">
                <div class="gtco-container">

                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <div id="gtco-logo" style="font-size: 30px;"><a href="home.aspx">Convo<em>Rangroot</em></a></div>
                        </div>
                        <div class="col-xs-8 text-right menu-1">
                            <ul>
                            </ul>
                        </div>
                    </div>

                </div>
            </nav>

            <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_4.jpg); height: 300px;">
                <div class="overlay"></div>
                <div class="gtco-container" style="margin-top: 0px; text-align: center; color: #f54c53;">
                    <div style="margin-top: 10em; color: #f54c53;">
                        <h1>Registration</h1>
                    </div>
                </div>
            </header>
            <div class="gtco-section border-bottom">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12" style="margin-left: 290px;">
                            <div class="col-md-6 animate-box">
                                <h3 style="text-align: center">Student Registration</h3>
                                <form method="post" runat="server">
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                                            <asp:TextBox ID="uname" AutoPostBack="true" ValidationGroup="1" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:Button ID="Button1" ValidationGroup="1" runat="server" Text="Check Username Availability" />
                                            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>                
                                            <asp:RequiredFieldValidator ValidationGroup="2" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your UserName" ControlToValidate="uname" Display="Dynamic" ForeColor="Red">UserName Required</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                                            <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ValidationGroup="2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Name" Display="Dynamic" ControlToValidate="name" ForeColor="Red">Your Name Required</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                                            <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Valid Email ID" ControlToValidate="email" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red">Enter Valid Email ID</asp:RegularExpressionValidator>
                                            <asp:RequiredFieldValidator ValidationGroup="2" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your Email ID" ControlToValidate="email" Display="Dynamic" ForeColor="Red">Your Email ID Required</asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="Label4" runat="server" Text="Mobile Number"></asp:Label>
                                            <asp:TextBox ID="mob_no" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ValidationGroup="2" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Email ID" ControlToValidate="mob_no" Display="Dynamic" ForeColor="Red">Your Email ID</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label5" runat="server" Text="University"></asp:Label>
                                            <asp:DropDownList ID="uni" runat="server" CssClass="form-control">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Gujarat Technological University</asp:ListItem>
                                                <asp:ListItem>Gujarat University</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ValidationGroup="2" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Your University" ControlToValidate="uni" Display="Dynamic" InitialValue="Select" ForeColor="Red">Select Your University</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label6" runat="server" Text="Enrollment Number"></asp:Label>
                                            <asp:TextBox ID="eno" runat="server" CssClass="form-control" MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ValidationGroup="2" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Your Enrollment Number" ControlToValidate="eno" Display="Dynamic" ForeColor="Red">umber Required</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                                            <asp:TextBox ID="pswd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ValidationGroup="2" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter the Password" ControlToValidate="pswd" Display="Dynamic" ForeColor="Red">Enter your Password</asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
                                            <asp:TextBox ID="cpswd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                            <asp:CompareValidator ValidationGroup="2" ID="CompareValidator1" runat="server" ErrorMessage="Password doesnot Match" ControlToCompare="pswd" ControlToValidate="cpswd" Display="Dynamic" ForeColor="Red">Password doesnot Match</asp:CompareValidator>
                                            <asp:RequiredFieldValidator ValidationGroup="2" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm Your Password" ControlToValidate="cpswd" Display="Dynamic" ForeColor="Red">Confirm Your Password</asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12" style="margin-left: 200px;">
                                            <br />
                                            <asp:Button ID="submit" ValidationGroup="2" CssClass="btn btn-primary" runat="server" Text="Submit" />
                                        </div>
                                    </div>
                                </form>
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
</body>
</html>
