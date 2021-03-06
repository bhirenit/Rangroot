﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="uni_verify.aspx.vb" Inherits="uni_verify" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

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
      <form runat ="server" >
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
                                <li><a href="view_employ.aspx">View Employment Registration Details</a></li>
                                <li><a href="View_placement.aspx">Placement Details</a></li>
                               <asp:Button ID="emp_logout" Text="Logout"  CssClass="btn btn-primary" runat="server" />
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
                    <div id="gtco-counter" class="gtco-section">
                        <div class="gtco-container">

                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                    <h2>Request From Company</h2>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uni_reg_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="count" HeaderText="count" InsertVisible="False" ReadOnly="True" SortExpression="count" />
                                            <asp:BoundField DataField="uni_reg_id" HeaderText="uni_reg_id" ReadOnly="True" SortExpression="uni_reg_id" />
                                            <asp:BoundField DataField="uni_name" HeaderText="uni_name" SortExpression="uni_name" />
                                            <asp:BoundField DataField="uni_email" HeaderText="uni_email" SortExpression="uni_email" />
                                            <asp:BoundField DataField="care_email" HeaderText="care_email" SortExpression="care_email" />
                                            <asp:BoundField DataField="pswd" HeaderText="pswd" SortExpression="pswd" />
                                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="" Text="Accept"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [uni_basic] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="pending" Name="status" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="row">
                            </div>
                        </div>


                        s</div>
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
							<li><a href="#"><i class="icon-phone"></i> +91 9876543210</a></li>
							<li><a href="#"><i class="icon-mail2"></i> sgh_05@gmail.com</a></li>
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
    <!-- Bootstrap -->0
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
    </form>
</body>
</html>
