﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="reg_uni.aspx.vb" Inherits="reg_uni" %>

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
    <link rel="stylesheet" href="css/animate.css">
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
                        <div class="col-md-12">
                            <form id="Form1" runat="server">
                                <div class="col-md-6 animate-box">
                                    <h3>NAME AND EMAIL</h3>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="uni_name" runat="server" Text="University Name :"></asp:Label><br />
                                            <asp:TextBox ID="u_name" runat="server" Class="form-control" TabIndex="1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter university name" ControlToValidate="u_name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%;">
                                            <asp:Label ID="uni_email" runat="server" Text="University Email:"></asp:Label>
                                            <asp:TextBox ID="u_email" runat="server" Class="form-control" TabIndex="2"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="please enter your email id" ControlToValidate="u_email" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="u_email" ValidationExpression="\w([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>

                                        <div class="col-md-12" style="width: 50%;">
                                            <asp:Label ID="c_email" runat="server" Text="Care Email:"></asp:Label>
                                           
                                            <asp:TextBox ID="careEmail" runat="server" Class="form-control" TabIndex="3" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row form-group">
													<div class="col-md-12" style="width:50%">
														<asp:Label ID="Label28" runat="server" Text="Password"></asp:Label>
                                                        <asp:TextBox ID="pswd" runat="server" CssClass="form-control" TabIndex="4" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the Password" ControlToValidate="pswd" Display="Dynamic" ForeColor="Red">Enter your Password</asp:RequiredFieldValidator>
                                                    </div>
													<div class="col-md-12" style="width:50%">
														<asp:Label ID="Label29" runat="server" Text="Confirm Password"></asp:Label>
                                                        <asp:TextBox ID="cpswd" runat="server" CssClass="form-control" TabIndex="5" TextMode="Password"></asp:TextBox>
                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesnot Match" ControlToCompare="pswd" ControlToValidate="cpswd" Display="Dynamic" ForeColor="Red">Password doesnot Match</asp:CompareValidator>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Confirm Your Password" ControlToValidate="cpswd" Display="Dynamic" ForeColor="Red">Confirm Your Password</asp:RequiredFieldValidator>
													</div>
												</div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="uni_id" runat="server" Text="University Registered ID: "></asp:Label><br />
                                            <asp:TextBox ID="u_id" runat="server" Class="form-control" TabIndex="6"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  Display="Dynamic" runat="server" ControlToValidate="u_id" ErrorMessage="please enter registered ID" ForeColor="Red">*</asp:RequiredFieldValidator>


                                        </div>
                                    </div>
                                    <br />
                                    <h3>ADDRESS AND CONTACT DETAILS</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label1" runat="server" Text="State :"></asp:Label><br />
                                            <%--<textarea name="message" id="state" cols="10" rows="10" class="form-control"></textarea>--%>
                                            <asp:DropDownList ID="u_state" runat="server" CssClass="form-control" TabIndex="7">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Gujarat</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" Display="Dynamic" ControlToValidate="u_state" ErrorMessage="select state" InitialValue="Select"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label2" runat="server" Text="City : "></asp:Label>
                                            <asp:DropDownList ID="u_city" runat="server" CssClass="form-control" TabIndex="8">
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="select your city" InitialValue="Select" ControlToValidate="u_city" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label3" runat="server" Text="Is your office in Urban Area? :"></asp:Label>
                                            <%--<input type="text" class="form-control" id="Text1"/>--%>
                                            <asp:RadioButtonList ID="u_area" runat="server" RepeatDirection="Horizontal" TabIndex="9">
                                                <asp:ListItem>&nbsp;&nbsp;Yes&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                                <asp:ListItem>&nbsp;&nbsp;No</asp:ListItem>

                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ErrorMessage="select any one" InitialValue="" ControlToValidate="u_area" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label4" runat="server" Text="Taluka :"></asp:Label>
                                            <asp:TextBox ID="u_taluka" runat="server" CssClass="form-control" TabIndex="10"></asp:TextBox>
                                            
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label5" runat="server" Text="Area/Village :"></asp:Label>
                                            <asp:TextBox ID="u_areaVillage" runat="server" CssClass="form-control" TabIndex="11"></asp:TextBox>
                                           
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label6" runat="server" Text="Address1 : "></asp:Label>
                                            <%--<input type="text" class="form-control" id="emailid"/>--%>
                                            <asp:TextBox ID="u_address1" runat="server" CssClass="form-control" Rows="10" Columns="10" TextMode="MultiLine" TabIndex="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red" ErrorMessage="Enter  your address" ControlToValidate="u_address1" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="Label7" runat="server" Text="PinCode :"></asp:Label>
                                            <asp:TextBox ID="pincode" runat="server" CssClass="form-control" TabIndex="14"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ForeColor="Red" ErrorMessage="enter your pincode" ControlToValidate="pincode" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                      </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label8" runat="server" Text="Telephone1 :"></asp:Label>
                                            <asp:TextBox ID="telephone1" runat="server" CssClass="form-control" TabIndex="16"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ForeColor="Red" ErrorMessage="Enter your number" ControlToValidate="telephone1" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label9" runat="server" Text="Website :"></asp:Label>
                                            <asp:TextBox ID="website" runat="server" CssClass="form-control" TabIndex="18"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ForeColor="Red" ErrorMessage="Enter website" ControlToValidate="website" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <br />
                                    <h3>KEY PERSON DETAILS</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label10" runat="server" Text="Main Person : "></asp:Label>
                                            <asp:TextBox ID="mainperson" runat="server" CssClass="form-control" TabIndex="19"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ForeColor="Red" ErrorMessage="this field cant be null" ControlToValidate="mainperson" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label11" runat="server" Text="Main Person Phone:"></asp:Label>
                                            <asp:TextBox ID="mainpersonphone" runat="server" CssClass="form-control" TabIndex="21"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ForeColor="Red" ErrorMessage="This field cant be null" ControlToValidate="mainpersonphone" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label12" runat="server" Text="Main Person Email :"></asp:Label>
                                            <asp:TextBox ID="mainpersonemail" runat="server" CssClass="form-control" TabIndex="23"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ForeColor="Red" ErrorMessage="please enter email" ControlToValidate="mainpersonemail" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label13" runat="server" Text="Contact Person : "></asp:Label>
                                            <asp:TextBox ID="contactperson" runat="server" CssClass="form-control" TabIndex="24"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="This field cant be null" ControlToValidate="contactperson" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label14" runat="server" Text="Contact Person Phone :"></asp:Label>
                                            <asp:TextBox ID="contactpersonphone" runat="server" CssClass="form-control" TabIndex="26"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="enter phone" ControlToValidate="contactpersonphone" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label15" runat="server" Text="Contact Person Email :"></asp:Label>
                                            <asp:TextBox ID="contactpersonemail" runat="server" CssClass="form-control" TabIndex="28"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Enter email" ForeColor="Red" ControlToValidate="contactpersonemail" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>


                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label16" runat="server" Text="Upload Comapany Profile:"></asp:Label>
                                            <asp:FileUpload ID="File" runat="server" TabIndex="30" />
                                            <%--<asp:Button ID="uni_upload" runat="server" Text="Upload" />--%>
                                        </div>
                                    </div>
                                    </div>

                                <div class="col-md-6 animate-box">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />

                                    <div style="height:35px;">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label18" runat="server" Text="Address2 :"></asp:Label>
                                            <%--<input type="text" class="form-control" id="emailid"/>--%>
                                            <asp:TextBox ID="address2" class="form-control" runat="server" TextMode="MultiLine" TabIndex="13" Rows="10" Columns="10" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>


                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label19" runat="server" Text="Fax : "></asp:Label>
                                            <asp:TextBox ID="fax" CssClass="form-control" runat="server" TabIndex="15"></asp:TextBox>
                                            

                                        </div>
                                    </div>
                                    <div style="height: 4px;">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label20" runat="server" Text="Telephone 2 :"></asp:Label>
                                            <asp:TextBox ID="telephone2" CssClass="form-control" runat="server" TabIndex="17"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div style="height: 163px;">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label21" runat="server" Text="Main Person Designation :"></asp:Label>
                                            <asp:DropDownList ID="mainpersondesignation" CssClass="form-control" TabIndex="20" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                                <asp:ListItem>MD</asp:ListItem>
                                                <asp:ListItem>HR Manager</asp:ListItem>
                                                <asp:ListItem>CEO</asp:ListItem>
                                                <asp:ListItem>Propietor</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ForeColor="Red" runat="server" ErrorMessage="select any one" ControlToValidate="mainpersondesignation" Display="Dynamic" InitialValue="Select"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label22" runat="server" Text="Main Person Mobile :"></asp:Label>
                                            <asp:TextBox ID="mainpersonmobile" CssClass="form-control" TabIndex="22" runat="server"></asp:TextBox>
                                            

                                        </div>
                                    </div>
                                    <br />
                                    <div style="height: 60px;">
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label23" runat="server" Text="Contact Person Designation :"></asp:Label>
                                            <asp:DropDownList ID="contactpersondesignation" CssClass="form-control" TabIndex="25" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                                <asp:ListItem>MD</asp:ListItem>
                                                <asp:ListItem>HR Manager</asp:ListItem>
                                                <asp:ListItem>CEO</asp:ListItem>
                                                <asp:ListItem>Propietor</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ForeColor="Red" ErrorMessage="select any one" InitialValue="Select" ControlToValidate="contactpersondesignation" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label24" runat="server" Text="Contact Person Mobile :"></asp:Label>
                                            <asp:TextBox ID="contactpersonmobile" CssClass="form-control" TabIndex="27" runat="server"></asp:TextBox>
                                            

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label25" runat="server" Text="Aadhar Card No :"></asp:Label>
                                            <asp:TextBox ID="adharcardno" CssClass="form-control" TabIndex="29" runat="server"  MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ForeColor="Red" ErrorMessage="Please enter adhar card no." ControlToValidate="adharcardno" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                  <div class="row form-group">
                                        <div class="col-md-12">
                                    
                                    <asp:CheckBox ID="CheckBox1" runat="server" TabIndex="42" />
                                    <asp:Label ID="Label40" runat="server" Text="I Agree, Information I have provided is correct"></asp:Label>
                                  </div>
                                         </div>
                                </div>
                                 <div>   <h3><br /></h3> </div> 
                                <div class="row form-group" style="">
                                      <div class="col-md-6" style="width:50%; margin-left:350px;">
                                           <asp:Button ID="Button1" runat="server" Text="Reset" CssClass="btn btn-primary" style="margin-left:100px; padding-left:35px; padding-right:35px;" TabIndex="43" />
                                        </div>
                                    </div>
                               

                            
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
