<%@ Page Language="VB" AutoEventWireup="false" CodeFile="create_job.aspx.vb" Inherits="create_job" %>


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
                            <form id="Form1" runat="server">
                                <ul>
                                    <li class="active"><a href="industry_dashboard.aspx">Dashboard</a></li>
                                    <li><a href="job_create.aspx">Create Job</a></li>
                                    <asp:Button ID="comp_logout" Text="Logout" CssClass="btn btn-primary" runat="server" />
                                </ul>
                            </form>
                        </div>
                    </div>

                </div>
            </nav>

            <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/ind_dash.jpg);">
                <div class="overlay"></div>
            </header>


            <div class="gtco-section border-bottom">
                <div class="gtco-container">
                    <div class="row">
                        <form id="form2" runat="server">
                            <div>

                                <div class="col-md-6 animate-box">
                                    <h3>Requirements:</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="company_id" runat="server" Text="Job ID"></asp:Label>
                                            <asp:TextBox ID="job_id" runat="server" TabIndex="1" CssClass="form-control"></asp:TextBox>

                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter Company id" ControlToValidate="job_id" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                            <asp:Label ID="Label2" runat="server" Text="Job Discription"></asp:Label>
                                            <asp:TextBox ID="job_des" runat="server" TabIndex="3" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter Company email id" ControlToValidate="job_des" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please enter correct email id" Display="Dynamic" ControlToValidate="job_des" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>

                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label3" runat="server" Text="Industry Type:"></asp:Label>
                                            <asp:TextBox ID="inds_type" runat="server" TabIndex="4" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter Company mobile number" ControlToValidate="inds_type" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>


                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label4" runat="server" Text="Functional Area"></asp:Label>
                                            <asp:TextBox ID="f_area" runat="server" TabIndex="4" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="please enter Company mobile number" ControlToValidate="f_area" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label7" runat="server" Text="Functional Area"></asp:Label>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Perment Job</asp:ListItem>
                                                <asp:ListItem>part time</asp:ListItem>
                                                <asp:ListItem>Full Time</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="please enter Company mobile number" ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                            <asp:Label ID="Label6" runat="server" Text="Desired Candidate Profile"></asp:Label>
                                            <textarea id="d_candidate" name="discription"></textarea>
                                        </div>
                                    </div>

                                </div>

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource2" Width="811px">
                                    <Columns>
                                        <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                        <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                                        <asp:BoundField DataField="s_caste" HeaderText="s_caste" SortExpression="s_caste" />
                                        <asp:BoundField DataField="basic_edu" HeaderText="basic_edu" SortExpression="basic_edu" />
                                        <asp:BoundField DataField="detail_edu" HeaderText="detail_edu" SortExpression="detail_edu" />
                                        <asp:BoundField DataField="pass_yr" HeaderText="pass_yr" SortExpression="pass_yr" />
                                        <asp:BoundField DataField="percentage" HeaderText="percentage" SortExpression="percentage" />
                                        <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
                                        <asp:BoundField DataField="field" HeaderText="field" SortExpression="field" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT emp_basic.email, emp_basic.name, emp_contact.city, emp_contact.mobile_no, emp_discrim.s_caste, emp_edu.basic_edu, emp_edu.detail_edu, emp_edu.pass_yr, emp_edu.percentage, emp_edu.exp, emp_edu.field FROM emp_basic INNER JOIN emp_contact ON emp_basic.email = emp_contact.email INNER JOIN emp_discrim ON emp_basic.email = emp_discrim.email INNER JOIN emp_edu ON emp_basic.email = emp_edu.email"></asp:SqlDataSource>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Button" />
                        </form>
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
