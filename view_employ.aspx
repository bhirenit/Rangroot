<%@ Page Language="VB" AutoEventWireup="false" CodeFile="view_employ.aspx.vb" Inherits="view_employ" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>
<%@ Import Namespace="System.Web.UI.ScriptManager" %>
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

    <div class="gtco-loader"></div>

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
                                 <li><a href="EmployOffice_Dashboard.aspx">Dashboard</a></li>
                                <li class="active"><a href="view_employ.aspx">Employment Registration Details</a></li>
                                <li ><a href="view_placement.aspx">Placement Details</a></li>
                                  <li> <asp:Button ID="emp_logout" Text="Logout"  CssClass="btn btn-primary" runat="server" /></li>
                              </ul>
                             </div>
                    </div>

                </div>
            </nav>

            <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_4.jpg); height: 300px;">
                <div class="overlay"></div>
                <div class="gtco-container" style="margin-top: 0px; text-align: center; color: #f54c53;">
                    <div style="margin-top: 10em; color: #f54c53;">
                        <h1>Employment Registration Details</h1>
                    </div>
                </div>
            </header>
            <div class="gtco-section border-bottom">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12">
                            <form id="Form1" runat="server">
                                <div class="row form-group" style="margin-left:350px;">
                                        <div class="col-md-12" style="width:40%;">
                                            <asp:DropDownList ID="search_cat" runat="server" CssClass="form-control">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Caste</asp:ListItem>
                                                <asp:ListItem>Basic Education</asp:ListItem>
                                                <asp:ListItem>Department</asp:ListItem>
                                                <asp:ListItem>Percentage</asp:ListItem>
                                                <asp:ListItem>Year</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    <div class="col-md-12" style="width:40%;">

                                        <asp:TextBox ID="search_txt" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6" style="width:20%;">
                                        <asp:Button ID="search" runat="server" CssClass="btn btn-primary" Text="Search" />
                                    </div>
                                </div>
                                <br />
                                <br />
                                <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM emp_basic INNER JOIN emp_contact ON emp_basic.email = emp_contact.email INNER JOIN emp_discrim ON emp_basic.email = emp_discrim.email INNER JOIN emp_edu ON emp_basic.email = emp_edu.email"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="Email" /><asp:BoundField />
                                        <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="Email" /><asp:BoundField />
                                        <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="Email" /><asp:BoundField />
                                        <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="Email" /><asp:BoundField />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>--%>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT emp_basic.email, emp_basic.name, emp_basic.emp_status, emp_contact.city, emp_discrim.s_caste, emp_edu.basic_edu, emp_edu.exp, emp_edu.percentage, emp_edu.interest, emp_edu.special, emp_edu.pass_yr, emp_edu.field FROM emp_basic INNER JOIN emp_contact ON emp_basic.email = emp_contact.email INNER JOIN emp_discrim ON emp_basic.email = emp_discrim.email INNER JOIN emp_edu ON emp_basic.email = emp_edu.email"></asp:SqlDataSource>
                               
                                <asp:GridView ID="GridView1" runat="server" Style="text-align: center;" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="emp_status" HeaderText="Employee Status" SortExpression="emp_status" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="s_caste" HeaderText="Caste" SortExpression="s_caste" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="basic_edu" HeaderText="Basic Education" SortExpression="basic_edu" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="exp" HeaderText="Experience" SortExpression="exp" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="percentage" HeaderText="Percentage" SortExpression="percentage" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="interest" HeaderText="Interest" SortExpression="interest" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="special" HeaderText="Specialization" SortExpression="special" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="pass_yr" HeaderText="Year" SortExpression="pass_yr" HeaderStyle-CssClass="gridCss" />
                                        <asp:BoundField DataField="field" HeaderText="Department" SortExpression="field" HeaderStyle-CssClass="gridCss"/>
                                    </Columns>
                                </asp:GridView>
                                <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                                <br/><br/>
                                &emsp;&emsp;&emsp;&emsp;
                                <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary"/>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                         <asp:ListItem>Select</asp:ListItem>
                                         <asp:ListItem>Export as PDF</asp:ListItem>
                                         <asp:ListItem>Export as Excel</asp:ListItem>
                                </asp:DropDownList>
                            </form>
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

