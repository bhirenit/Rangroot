<%@ Page Language="VB" AutoEventWireup="false" CodeFile="company_requirement.aspx.vb" Inherits="company" %>

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
    <form id="Form1" runat="server">

    <div class="gtco-loader"></div>

    <div id="page">


        <div class="page-inner">
            <nav class="gtco-nav" role="navigation">
                <div class="gtco-container">

                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <div id="gtco-logo" style="font-size: 30px;"><a href="industry_dashboard.aspx">Convo<em>Rangroot</em></a></div>
                        </div>
                        <div class="col-xs-8 text-right menu-1">
                            <ul>
                             <%--   <li><a href="#">Convocation</a></li>--%>
                                <li><a href="industry_dashboard.aspx">Dashboard</a></li>
                                <li class="active"><a href="company_requirement.aspx">Company-Requirement-Form</a></li>
                                <asp:Button ID="comp_logout" runat="server" CssClass="btn-primary" Text="Logout" />
                            </ul>
                            
                        </div>
                    </div>

                </div>
            </nav>

            <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_4.jpg); height: 300px;">
                <div class="overlay"></div>
                <div class="gtco-container" style="margin-top: 0px; text-align: center; color: #f54c53;">
                    <div style="margin-top: 10em; color: #f54c53;">
                        <h1>Requirement Form</h1>
                    </div>
                </div>
            </header>
            <div class="gtco-section border-bottom">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12">
                            
                                <div class="col-md-6 animate-box">
                                    <h3>Requirements:</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="company_id" runat="server" Text="Company ID"></asp:Label>
                                            <asp:TextBox ID="Comp_id" runat="server" TabIndex="1" CssClass="form-control"></asp:TextBox>

                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter Company id" ControlToValidate="Comp_id" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
                                            <asp:TextBox ID="Comp_name" runat="server" TabIndex="2" CssClass="form-control"></asp:TextBox>
                                            <div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter Company name " ControlToValidate="Comp_name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label2" runat="server" Text="Email Id"></asp:Label>
                                            <asp:TextBox ID="Comp_email" runat="server" TabIndex="3" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter Company email id" ControlToValidate="Comp_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please enter correct email id" Display="Dynamic" ControlToValidate="Comp_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>

                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label3" runat="server" Text="Mobile number"></asp:Label>
                                            <asp:TextBox ID="Comp_mono" runat="server" TabIndex="4" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter Company mobile number" ControlToValidate="Comp_mono" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label4" runat="server" Text="Industry Type"></asp:Label>
                                            <asp:DropDownList ID="inst_type" TabIndex="5" runat="server" CssClass="form-control">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Private</asp:ListItem>
                                                <asp:ListItem>Goverment</asp:ListItem>
                                                <asp:ListItem>PSU</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="please select Industry Type " ControlToValidate="inst_type" InitialValue="Select" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group" tabindex="5">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label5" runat="server" Text="Role"></asp:Label>
                                            <asp:TextBox ID="role" runat="server" TabIndex="6" CssClass="form-control"></asp:TextBox>
                                            <div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please enter Company role" ControlToValidate="role" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label6" runat="server" Text="Salary"></asp:Label>
                                            <asp:TextBox ID="salary" runat="server" TabIndex="7" CssClass="form-control"></asp:TextBox>

                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="please enter salary" ControlToValidate="salary" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>



                                </div>

                                <div class="col-md-6 animate-box">
                                    <h3>
                                        <br />
                                    </h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label7" runat="server" Text="Qualification"></asp:Label>

                                            <asp:TextBox ID="qualification" runat="server" TabIndex="8" CssClass="form-control" cols="20" Rows="10" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="please enter Company qualification " ControlToValidate="qualification" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label8" runat="server" Text="Experience"></asp:Label>
                                            <asp:TextBox ID="experience" runat="server" TabIndex="9" CssClass="form-control" cols="20" Rows="10" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="please enter experience " ControlToValidate="experience" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label9" runat="server" Text="Working Hours :"></asp:Label>

                                            <asp:RadioButtonList ID="working_hour" runat="server" TabIndex="10" TextAlign="Left" RepeatDirection="Horizontal">
                                                <asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PartTime &nbsp;</asp:ListItem>
                                                <asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FullTime&nbsp;</asp:ListItem>
                                                <asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Both &nbsp;</asp:ListItem>
                                            </asp:RadioButtonList>

                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="please select one option " ControlToValidate="working_hour" InitialValue="" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="row form-group" style="margin-left: 500px; margin-right: 400px;">
                                    <div class="col-md-12">
                                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary" />
                                    </div>
                                </div>
                           
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

</body>
</html>

