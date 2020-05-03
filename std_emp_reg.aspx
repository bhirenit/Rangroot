<%@ Page Language="VB" AutoEventWireup="false" CodeFile="std_emp_reg.aspx.vb" Inherits="_Default" %>

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
    <form id="Form1" action="#" runat="server">
        
        <div id="page">


            <div class="page-inner">
                <nav class="gtco-nav" role="navigation">
                    <div class="gtco-container">

                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div id="gtco-logo" style="font-size: 30px;"><a href="Student_dashboard.aspx">Convo<em>Rangroot </em></a></div>
                            </div>
                            <div class="col-xs-8 text-right menu-1">
                                <ul>
                                    <li><a href="student_dashboard.aspx">Dashboard</a></li>
                                    <li><a href="convocation.aspx">Convocation</a></li>
                                    <li class="active"><a href="std_emp_reg.aspx">Employment Registration Form</a></li>
                                    <li><asp:Button ID="std_logout" runat="server" CssClass="btn btn-primary" Text="Logout" /></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </nav>

                <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_4.jpg); height: 300px;">
                    <div class="overlay"></div>
                    <div class="gtco-container" style="margin-top: 0px; text-align: center; color: #f54c53;">
                        <div style="margin-top: 10em; color: #f54c53;">
                            <h1>Employment Registration Form</h1>
                        </div>
                    </div>
                </header>
                <div class="gtco-section border-bottom">
                    <div class="gtco-container">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="col-md-6 animate-box">
                                    <h3>Basic Details:-</h3>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_sname" runat="server" Text="First Name"></asp:Label>
                                            <asp:TextBox ID="txt_fname" TabIndex="1" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="please enter name.." ControlToValidate="txt_fname" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_date" runat="server" Text="Date of Birth"></asp:Label>
                                            <asp:TextBox ID="txt_date" TabIndex="3" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Please enter date.." ControlToValidate="txt_date" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_gender" runat="server" Text="Gender"></asp:Label>
                                            <asp:RadioButtonList ID="r_gender" TabIndex="4" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>&nbsp; &nbsp;Male &nbsp;</asp:ListItem>
                                                <asp:ListItem>&nbsp;&nbsp;Female&nbsp;</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" Text="please enter gender" ControlToValidate="r_gender" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="l_dis" runat="server" Text="City"></asp:Label>
                                            <asp:DropDownList ID="d_district" TabIndex="7" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Ahmedabad</asp:ListItem>
                                                <asp:ListItem>Amreli</asp:ListItem>
                                                <asp:ListItem>Anand</asp:ListItem>
                                                <asp:ListItem>Aravali</asp:ListItem>
                                                <asp:ListItem>Banaskantha</asp:ListItem>
                                                <asp:ListItem>Bharuch</asp:ListItem>
                                                <asp:ListItem>Bhavnagar</asp:ListItem>
                                                <asp:ListItem>Dahod</asp:ListItem>
                                                <asp:ListItem>Dang</asp:ListItem>
                                                <asp:ListItem>Gandhinagar</asp:ListItem>
                                                <asp:ListItem>Jamnagar</asp:ListItem>
                                                <asp:ListItem>Junagadh</asp:ListItem>
                                                <asp:ListItem>Kutch</asp:ListItem>
                                                <asp:ListItem>Kheda</asp:ListItem>
                                                <asp:ListItem>Mehsana</asp:ListItem>
                                                <asp:ListItem>Narmada</asp:ListItem>
                                                <asp:ListItem>Navsari</asp:ListItem>
                                                <asp:ListItem>Patan</asp:ListItem>
                                                <asp:ListItem>Panchmahal</asp:ListItem>
                                                <asp:ListItem>Porbandar</asp:ListItem>
                                                <asp:ListItem>Rajkot</asp:ListItem>
                                                <asp:ListItem>Sabarkantha</asp:ListItem>
                                                <asp:ListItem>Surendranagar</asp:ListItem>
                                                <asp:ListItem>Surat</asp:ListItem>
                                                <asp:ListItem>Tapi</asp:ListItem>
                                                <asp:ListItem>Vadodara</asp:ListItem>
                                                <asp:ListItem>Valsad</asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" Text="Please Select district" InitialValue="Select" ControlToValidate="d_district" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="l_area" runat="server" Text="State"></asp:Label>

                                            <asp:DropDownList ID="txt_state" TabIndex="8" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Gujarat</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" Text="Please enter your state" ControlToValidate="txt_state" Display="Dynamic" InitialValue="Select"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_tel" runat="server" Text="Telephone"></asp:Label>
                                            <asp:TextBox ID="txt_tele" TabIndex="10" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" Text="Please enter telephone number" ControlToValidate="txt_tele" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_email" runat="server" Text="Email"></asp:Label>
                                            <asp:TextBox ID="txt_email" TabIndex="12" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_email" Display="Dynamic" Text="Please enter valid email ID"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" initialvalue="" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="Please enter valid email id..." Display="Dynamic" ControlToValidate="txt_email"></asp:RegularExpressionValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_bpl" runat="server" Text="BPL NO"></asp:Label>
                                            <asp:TextBox ID="txt_bpl" TabIndex="14" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="txt_bpl"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label1" runat="server" Text="Is your residency in urban area?"></asp:Label>
                                            <asp:RadioButtonList ID="radio_area" TabIndex="15" runat="server" TextAlign="Left" RepeatDirection="Horizontal">
                                                <asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yes&nbsp;</asp:ListItem>
                                                <asp:ListItem>&nbsp;&nbsp;No&nbsp;</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="radio_area" Display="Dynamic" Text="Please enter your area"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_in" runat="server" Text="Intersted In :"></asp:Label>
                                            <asp:RadioButtonList ID="interest" TabIndex="16" runat="server" TextAlign="Left" RepeatDirection="Horizontal">
                                                <asp:ListItem> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Government&nbsp;</asp:ListItem>
                                                <asp:ListItem> &nbsp; &nbsp; Private &nbsp;</asp:ListItem>
                                                <asp:ListItem> &nbsp; &nbsp;Both &nbsp;</asp:ListItem>
                                            </asp:RadioButtonList>

                                        </div>
                                    </div>
                                    <h3>CATEGORY INFORMATION:-</h3>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_ccaste" runat="server" Text="State Caste"></asp:Label><br />
                                            <asp:DropDownList ID="s_caste" TabIndex="17" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>S.C.</asp:ListItem>
                                                <asp:ListItem>S.T.</asp:ListItem>
                                                <asp:ListItem>S.E.B.C.</asp:ListItem>
                                                <asp:ListItem>GENERAL</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="s_caste" Display="Dynamic" Text="Please enter caste" InitialValue="Select"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_category" runat="server" Text="State Category"></asp:Label><br />
                                            <asp:DropDownList ID="s_category" TabIndex="18" class="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>None</asp:ListItem>
                                                <asp:ListItem>Ex-Service Man</asp:ListItem>
                                                <asp:ListItem>PH UL(40-59%)</asp:ListItem>
                                                <asp:ListItem>PH UL(60-79%)</asp:ListItem>
                                                <asp:ListItem>PH UL(80-99%)</asp:ListItem>
                                                <asp:ListItem>PH LL(40-59%)</asp:ListItem>
                                                <asp:ListItem>PH LL(60-79%)</asp:ListItem>
                                                <asp:ListItem>PH LL(80-99%)</asp:ListItem>
                                                <asp:ListItem>PH Khundh</asp:ListItem>
                                                <asp:ListItem>PH Partial blind</asp:ListItem>
                                                <asp:ListItem>PH Deaf&Dumb</asp:ListItem>
                                                <asp:ListItem>Widow or Divorced</asp:ListItem>
                                                <asp:ListItem>PH UL & LL(40-59%)</asp:ListItem>
                                                <asp:ListItem>PH UL & LL(40-59%)</asp:ListItem>
                                                <asp:ListItem>PH UL & LL(80-99%)</asp:ListItem>
                                                <asp:ListItem>Mental Ret(40-59%)</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="s_category" Display="Dynamic" InitialValue="Select" Text="Please Select category"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_priority" runat="server" Text="State Priority"></asp:Label><br />
                                            <asp:DropDownList ID="s_priority" TabIndex="19" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Land Looser for Govt. Project</asp:ListItem>
                                                <asp:ListItem>Ex-Serviceman</asp:ListItem>
                                                <asp:ListItem>None</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_min" runat="server" Text="Minority"></asp:Label><br />
                                            <asp:DropDownList ID="minority" TabIndex="20" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>None</asp:ListItem>
                                                <asp:ListItem>Muslim</asp:ListItem>
                                                <asp:ListItem>Christian</asp:ListItem>
                                                <asp:ListItem>Parsi</asp:ListItem>
                                                <asp:ListItem>Sikh</asp:ListItem>
                                                <asp:ListItem>Jeurastrian</asp:ListItem>
                                                <asp:ListItem>Buddhist</asp:ListItem>
                                                <asp:ListItem>Yahudi</asp:ListItem>
                                                <asp:ListItem>Jain</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="minority" Display="Dynamic" InitialValue="Select" Text="Please Select minority..."></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <h3>Education Details:-</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%;">
                                            <asp:Label ID="l_edu" runat="server" Text="Basic Education/Degree"></asp:Label>
                                            <asp:DropDownList ID="s_edudetails" TabIndex="24" CssClass="form-control" runat="server" ControlToValidate="s_edudetails">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>10th pass</asp:ListItem>
                                                <asp:ListItem>12th pass</asp:ListItem>
                                                <asp:ListItem>BE</asp:ListItem>
                                                <asp:ListItem>ME</asp:ListItem>
                                                <asp:ListItem>Phd</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="s_edudetails" Display="Dynamic" Text="Please enter educational details.." InitialValue="Select"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="Label4" runat="server" Text="Basic Education Field"></asp:Label>
                                            <asp:DropDownList ID="field" TabIndex="24" CssClass="form-control" runat="server" ControlToValidate="s_edudetails">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Information Technology </asp:ListItem>
                                                <asp:ListItem>Computer Engineering</asp:ListItem>
                                                <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                                <asp:ListItem>Civil Engineering</asp:ListItem>
                                                <asp:ListItem>Electrical Engineering</asp:ListItem>
                                                <asp:ListItem>Environment Engineering</asp:ListItem>
                                                <asp:ListItem>Chemical Engineering</asp:ListItem>
                                                <asp:ListItem>Automobile Engineering</asp:ListItem>
                                                <asp:ListItem>Plastic Engineering</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="s_edudetails" Display="Dynamic" Text="Please enter educational details.." InitialValue="Select"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="l_pass" runat="server" Text="Passing Month"></asp:Label>
                                            <asp:DropDownList ID="p_month" TabIndex="25" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>January</asp:ListItem>
                                                <asp:ListItem>February</asp:ListItem>
                                                <asp:ListItem>March</asp:ListItem>
                                                <asp:ListItem>April</asp:ListItem>
                                                <asp:ListItem>May</asp:ListItem>
                                                <asp:ListItem>June</asp:ListItem>
                                                <asp:ListItem>July</asp:ListItem>
                                                <asp:ListItem>August</asp:ListItem>
                                                <asp:ListItem>September</asp:ListItem>
                                                <asp:ListItem>October</asp:ListItem>
                                                <asp:ListItem>November</asp:ListItem>
                                                <asp:ListItem>December</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="p_month" Display="Dynamic" InitialValue="Select" Text="Please enter passing month"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="l_year" runat="server" Text="Passing Year"></asp:Label>
                                            <asp:DropDownList ID="p_year" TabIndex="26" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>2010</asp:ListItem>
                                                <asp:ListItem>2011</asp:ListItem>
                                                <asp:ListItem>2012</asp:ListItem>
                                                <asp:ListItem>2013</asp:ListItem>
                                                <asp:ListItem>2014</asp:ListItem>
                                                <asp:ListItem>2015</asp:ListItem>
                                                <asp:ListItem>2016</asp:ListItem>
                                                <asp:ListItem>2017</asp:ListItem>
                                                <asp:ListItem>2018</asp:ListItem>
                                                <asp:ListItem>2019</asp:ListItem>
                                                <asp:ListItem>2020</asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="p_year" InitialValue="Select" Text="Please enter passing year"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%;">
                                            <asp:Label ID="Label2" runat="server" Text="Percentage"></asp:Label>
                                            <asp:TextBox ID="perc" TabIndex="27" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ForeColor="Red" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="perc" Text="Please enter percentage"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-12" style="width: 50%;">
                                            <asp:Label ID="Label3" runat="server" Text="Specialization"></asp:Label>
                                            <asp:TextBox ID="txt_spec" TabIndex="27" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="perc" Text="Please enter percentage"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <br />
                                    <h3>EXPERIENCE DETAILS</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_exp" runat="server" Text="Do you have experience?"></asp:Label>&nbsp&nbsp&nbsp
                                                        <asp:RadioButtonList ID="experience" TabIndex="30" RepeatDirection="Horizontal" TextAlign="Left" runat="server">
                                                            <asp:ListItem>&nbsp;&nbsp;Yes&nbsp;</asp:ListItem>
                                                            <asp:ListItem>&nbsp;&nbsp;No&nbsp;</asp:ListItem>
                                                        </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="experience" Display="Dynamic" Text="Please enter experience"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="row form-group">
                                        <div class="col-md-6" style="margin-left: 200px;">
                                            <asp:Button ID="submit" runat="server" TabIndex="32" CssClass="btn btn-primary" Text="Submit" />
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 animate-box">
                                    <h3>
                                        <br />
                                    </h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_name" runat="server" Text="Last Name"></asp:Label>
                                            <asp:TextBox ID="txt_surname" TabIndex="2" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" InitialValue="" Text="please enter employment status" ControlToValidate="txt_surname"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                   <%-- <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_status" runat="server" Text="Employment status"></asp:Label><br />
                                            <asp:DropDownList ID="status" TabIndex="5" class="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Employed</asp:ListItem>
                                                <asp:ListItem>Partially employed</asp:ListItem>
                                                <asp:ListItem>Self Employed</asp:ListItem>
                                                <asp:ListItem>UnEmployed</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="status" Display="Dynamic" InitialValue="Select" Text="please enter employment status"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>--%>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_address" runat="server" Text="Address"></asp:Label>
                                            <asp:TextBox ID="txt_add" TabIndex="6" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="10" Columns="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ForeColor="Red" runat="server" Text="Please enter your address.." ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_add" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_pin" runat="server" Text="Pincode"></asp:Label>
                                            <asp:TextBox ID="txt_pin" TabIndex="9" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ForeColor="Red" runat="server" Text="Please enter pincode" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_pin" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_mobile" runat="server" Text="Mobile"></asp:Label>
                                            <asp:TextBox ID="txt_mob" TabIndex="11" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ForeColor="Red" runat="server" Text="Please enter mobile number.." ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_mob" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_salary" runat="server" Text="Expected Salary"></asp:Label>
                                            <asp:TextBox ID="txt_sal" TabIndex="13" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ForeColor="Red" runat="server" Text="Please enter expected salary.." ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="txt_sal"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">

                                    </div>
                                    <h3>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </h3>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_caste" runat="server" Text="Central Caste"></asp:Label>
                                            <asp:DropDownList ID="central_caste" TabIndex="21" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>S.C.</asp:ListItem>
                                                <asp:ListItem>S.T.</asp:ListItem>
                                                <asp:ListItem>S.E.B.C.</asp:ListItem>
                                                <asp:ListItem>GENERAL</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="central_caste" Display="Dynamic" InitialValue="Select" Text="Please Select caste.."></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_cc" runat="server" Text="Central Category"></asp:Label>
                                            <asp:DropDownList ID="caste" TabIndex="22" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>None</asp:ListItem>
                                                <asp:ListItem>Ex-Service Man</asp:ListItem>
                                                <asp:ListItem>PH UL(40-59%)</asp:ListItem>
                                                <asp:ListItem>PH UL(60-79%)</asp:ListItem>
                                                <asp:ListItem>PH UL(80-99%)</asp:ListItem>
                                                <asp:ListItem>PH LL(40-59%)</asp:ListItem>
                                                <asp:ListItem>PH LL(60-79%)</asp:ListItem>
                                                <asp:ListItem>PH LL(80-99%)</asp:ListItem>
                                                <asp:ListItem>PH Khundh</asp:ListItem>
                                                <asp:ListItem>PH Partial blind</asp:ListItem>
                                                <asp:ListItem>PH Deaf&Dumb</asp:ListItem>
                                                <asp:ListItem>Widow or Divorced</asp:ListItem>
                                                <asp:ListItem>PH UL & LL(40-59%)</asp:ListItem>
                                                <asp:ListItem>PH UL & LL(40-59%)</asp:ListItem>
                                                <asp:ListItem>PH UL & LL(80-99%)</asp:ListItem>
                                                <asp:ListItem>Mental Ret(40-59%)</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="caste" Display="Dynamic" Text="Please Select category caste.." InitialValue="Select"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="L_cp" runat="server" Text="Central Priority"></asp:Label>
                                            <asp:DropDownList ID="c_prior" TabIndex="23" CssClass="form-control" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Land Looser for Govt. Project</asp:ListItem>
                                                <asp:ListItem>Ex-Serviceman</asp:ListItem>
                                                <asp:ListItem>None</asp:ListItem>
                                            </asp:DropDownList>


                                        </div>
                                    </div>
                                    <h3>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="l_special" runat="server" Text="Detail Education"></asp:Label>
                                            <asp:TextBox ID="detail" TabIndex="29" TextMode="MultiLine" Columns="10" Rows="9" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ForeColor="Red" Text="Please enter details about your education or speciliazation" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="detail" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <h3>
                                        <br />
                                    </h3>
                                    <div style="height: 15px;"></div>
                                    <div class="row form-group">

                                        <div class="col-md-10">
                                            <asp:Label ID="l_photo" runat="server" Text="Upload Your Resume:"></asp:Label>
                                            <asp:FileUpload ID="File1" TabIndex="31" runat="server" />
                                            <%-- <asp:Button ID="Button2" runat="server" Text="Upload" />--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ForeColor="Red" Text="Please upload your resume.." runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="File1" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <h3>
                                        <br />
                                        <br />
                                    </h3>
                                    <div class="row form-group">
                                        <div class="col-md-6" style="margin-left: 200px;">
                                            <asp:Button ID="reset" TabIndex="33" runat="server" CssClass="btn btn-primary" Text="Reset" />
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
    </form>
</body>
</html>
