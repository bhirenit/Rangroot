<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE HTML>
<%--<script runat="server">

    Protected Sub login_Click(sender As Object, e As EventArgs)
        Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True")
        
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select * from login where u_name='" + email.Text + "' and pswd = '" + pswd.Text + "'", con)
        
        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.Read Then
            If utype.SelectedValue = "Student" Then
                Response.Redirect("Student_dashboard.aspx")
            ElseIf utype.SelectedValue = "University" Then
                Response.Redirect("University_Dashboard.aspx")
            ElseIf utype.SelectedValue = "Office" Then
                Response.Redirect("EmployOffice_Dashboard.aspx")
            ElseIf utype.SelectedValue = "Company" Then
                Response.Redirect("industry_dashboard.aspx")
            End If
        End If
        
        Session("u_name") = email.Text
        Session("pswd") = pswd.Text
        
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub
</script>--%>



<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Convo-RangRoot </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">
    <!-- Themify Icons-->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="css/style.css">

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
                <div class="gtco-container">lvv66
                    ...
                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <div id="gtco-logo" style="font-size: 30px; font-family: 'Times New Roman';"><a href="home.aspx">Convo<em>Rangroot</em></a></div>
                        </div>
                    </div>
                </div>
            </nav>

            <header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(images/home.jpg)">
                <div class="overlay"></div>
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12 col-md-offset-0 text-left">


                            <div class="row row-mt-15em">
                                <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                                    <span class="intro-text-small">Welcome to RANGROOT</span>
                                    <h1>A place of connection.</h1>
                                </div>
                                <div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
                                    <div class="form-wrap">
                                        <div class="tab">
                                            <ul class="tab-menu">
                                                <li class="active gtco-first"><a href="#" data-tab="signup">Sign up</a></li>

                                                <li class="gtco-second"><a href="#" data-tab="login">Login</a></li>
                                            </ul>
                                            <div class="tab-content">
                                                <form id="Form1" method="post" runat="server">
                                                    <div class="tab-content-inner active" data-content="signup">

                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <a href="reg_std.aspx">
                                                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Student Registration" Style="width: 275px;" PostBackUrl="~/reg_std.aspx" /></a>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <a href="reg_uni.aspx">
                                                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="University Registration" Style="width: 275px;" PostBackUrl="~/reg_uni.aspx" />
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <a href="reg_comp.aspx">
                                                                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="Company Registration" Style="width: 275px;" PostBackUrl="~/reg_comp.aspx" /></a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="tab-content-inner" data-content="login">
                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <a href="reg_std.aspx">
                                                                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary" Text="Student Login" Style="width: 275px;" PostBackUrl="~/login_std.aspx" /></a>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <a href="reg_uni.aspx">
                                                                    <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary" Text="University Login" Style="width: 275px;" PostBackUrl="~/login_uni.aspx" />
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <a href="reg_comp.aspx">
                                                                    <asp:Button ID="Button6" runat="server" CssClass="btn btn-primary" Text="Company Login" Style="width: 275px;" PostBackUrl="~/login_comp.aspx" /></a>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <a href="reg_comp.aspx">
                                                                    <asp:Button ID="Button7" runat="server" CssClass="btn btn-primary" Text="Office Login" Style="width: 275px;" PostBackUrl="~/login_office.aspx" /></a>
                                                            </div>
                                                        </div>
                                                        <%--<div class="row form-group">
                                                            <div class="col-md-12">
                                                                <asp:Label ID="Label1" runat="server" Text="Username or Email"></asp:Label>
                                                                <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                                                            </div>
                                                            <div>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter email id" ControlToValidate="email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please enter correct email id" Display="Dynamic" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                                                <asp:TextBox ID="pswd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                            </div>
                                                            <div>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter Password" ControlToValidate="pswd" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col-md-12">
                                                                <asp:Button ID="login" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="login_Click" />
                                                            </div>

                                                        </div>--%>
                                                        <%--<div class="row form-group">
													<div class="col-md-12">
														<a href="#"><input type="button" class="btn btn-primary"  style="width:275px;" value="Student Login">
													</div>
												</div>
                                                <div class="row form-group">
													<div class="col-md-12">
														<input type="button" class="btn btn-primary" value="University Login"  style="width:275px;">
													</div>
												</div>
                                                <div class="row form-group">
													<div class="col-md-12">
														<input type="button" class="btn btn-primary" value="Employement Office Login"  style="width:275px;">
													</div>
												</div>
                                                <div class="row form-group">
													<div class="col-md-12">
														<input type="button" class="btn btn-primary" value="Company Login"  style="width:275px;">
													</div>
												</div>--%>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

            </header>
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
                                <%--<small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small>--%>
                                <small class="block">Designed by VGEC_SGH_05.co</small>
                            </p>
                            <%--<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>--%>
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

