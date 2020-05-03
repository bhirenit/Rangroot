<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Uni_placement.aspx.vb" Inherits="Uni_placement" %>


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

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet"/>

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
     <form id="Form1" action="#" runat="server">
    <div class="gtco-loader"><a href="std_emp_reg.aspx">std_emp_reg.aspx</a></div>

    <div id="page">


        <div class="page-inner">
            <nav class="gtco-nav" role="navigation">
                <div class="gtco-container">

                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <div id="gtco-logo" style="font-size: 30px;"><a href="home.aspx">Convo<em>Rangroot </em></a></div>
                        </div>
                        <div class="col-xs-8 text-right menu-1">
                            <ul>
                                <li><a href="University_Dashboard.aspx">Dashboard</a></li>
                                <li><a href="View_convo.aspx">View-Convocation-details</a></li>
                                <li class="active"><a href="Uni_placement.aspx">Placement Details</a></li>
                                <asp:Button ID="uni_logout" Text="Logout"  CssClass="btn btn-primary" runat="server" />
                         </ul>
                        </div>
                    </div>

                </div>
            </nav>

            <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_4.jpg); height: 300px;">
                <div class="overlay"></div>
                <div class="gtco-container" style="margin-top: 0px; text-align: center; color: #f54c53;">
                    <div style="margin-top: 10em; color: #f54c53;">
                        <h1>Placement Details</h1>
                    </div>
                </div>
            </header>
            <div class="gtco-section border-bottom">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12">
                           
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [placement_details]"></asp:SqlDataSource>
                                <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="eno_no" DataSourceID="SqlDataSource1" ForeColor="Black">
                                    <Columns>
                                        <asp:BoundField DataField="eno_no" HeaderText="eno_no" ReadOnly="True" SortExpression="eno_no" />
                                        <asp:BoundField DataField="stud_name" HeaderText="stud_name" SortExpression="stud_name" />
                                        <asp:BoundField DataField="institute" HeaderText="institute" SortExpression="institute" />
                                        <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                                        <asp:BoundField DataField="comp_name" HeaderText="comp_name" SortExpression="comp_name" />
                                        <asp:BoundField DataField="comp_addr" HeaderText="comp_addr" SortExpression="comp_addr" />
                                        <asp:BoundField DataField="comp_city" HeaderText="comp_city" SortExpression="comp_city" />
                                        <asp:BoundField DataField="comp_state" HeaderText="comp_state" SortExpression="comp_state" />
                                        <asp:BoundField DataField="package" HeaderText="package" SortExpression="package" />
                                        <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                                        <asp:BoundField DataField="month_of_visit" HeaderText="month_of_visit" SortExpression="month_of_visit" />
                                        <asp:BoundField DataField="yr_of_visit" HeaderText="yr_of_visit" SortExpression="yr_of_visit" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>--%>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Font-Bold="False" Font-Italic="True" Font-Names="Times New Roman" Font-Size="Medium" Width="938px" Height="100%" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">

                                    <AlternatingRowStyle BackColor="#DCDCDC" />

                                    <Columns>
                                        <asp:BoundField DataField="eno_no" HeaderText="Enrollment No" ReadOnly="True" SortExpression="eno_no" />
                                        <asp:BoundField DataField="stud_name" HeaderText="Student Name" SortExpression="stud_name" />
                                        <asp:BoundField DataField="institute" HeaderText="Institute" SortExpression="institute" />
                                        <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                                        <asp:BoundField DataField="comp_name" HeaderText="Company Name" SortExpression="comp_name" />
                                        <asp:BoundField DataField="comp_addr" HeaderText="Company Address" SortExpression="comp_addr" />
                                        <asp:BoundField DataField="comp_city" HeaderText="Company City" SortExpression="comp_city" />
                                        <asp:BoundField DataField="comp_state" HeaderText="Company State" SortExpression="comp_state" />
                                        <asp:BoundField DataField="package" HeaderText="Package" SortExpression="package" />
                                        <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
                                        <asp:BoundField DataField="month_of_visit" HeaderText="Visited Month" SortExpression="month_of_visit" />
                                        <asp:BoundField DataField="yr_of_visit" HeaderText="Visited Year" SortExpression="yr_of_visit" />
                                    </Columns>

                                    <EditRowStyle Font-Names="Times New Roman" Font-Size="Small" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="60px" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" Font-Names="Times New Roman" Font-Size="Small" Height="50px" HorizontalAlign="Justify" VerticalAlign="Middle" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />

                                </asp:GridView>

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
        <!-- jQuery Easing -
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
