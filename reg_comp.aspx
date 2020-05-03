<%@ Page Language="VB" AutoEventWireup="false" CodeFile="reg_comp.aspx.vb" Inherits="reg_comp" %>

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
                        <h1>Company Registration Form</h1>
                    </div>
                </div>
            </header>
            <div class="gtco-section border-bottom">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12">
                            <form id="Form1" action="#" runat="server">
                                <div class="col-md-6 animate-box">
                                    <h3>NAME AND EMAIL</h3>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label41" runat="server" Text="Company Name :"></asp:Label>
                                            <asp:TextBox ID="companyname" runat="server" class="form-control" TabIndex="1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Value Required" ControlToValidate="companyname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%;">
                                            <asp:Label ID="Label1" runat="server" Text="Company Email :"></asp:Label>
                                            <asp:TextBox ID="companyemail" runat="server" class="form-control" TabIndex="2"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field Value Required" ControlToValidate="companyemail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="companyemail" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>

                                        <div class="col-md-12" style="width: 50%;">
                                            <asp:Label ID="Label2" runat="server" Text="Care Email :"></asp:Label>

                                            <asp:TextBox ID="careemail" runat="server" class="form-control" TabIndex="3"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="careemail" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
													<div class="col-md-12" style="width:50%">
														<asp:Label ID="Label42" runat="server" Text="Password"></asp:Label>
                                                        <asp:TextBox ID="pswd" runat="server" CssClass="form-control" TabIndex="4" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Enter the Password" ControlToValidate="pswd" Display="Dynamic" ForeColor="Red">Enter your Password</asp:RequiredFieldValidator>
                                                    </div>
													<div class="col-md-12" style="width:50%">
														<asp:Label ID="Label43" runat="server" Text="Confirm Password"></asp:Label>
                                                        <asp:TextBox ID="cpswd" runat="server" CssClass="form-control" TabIndex="5" TextMode="Password"></asp:TextBox>
                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not Match" ControlToCompare="pswd" ControlToValidate="cpswd" Display="Dynamic" ForeColor="Red">Password doesnot Match</asp:CompareValidator>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Confirm Your Password" ControlToValidate="cpswd" Display="Dynamic" ForeColor="Red">Confirm Your Password</asp:RequiredFieldValidator>
													</div>
												</div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label3" runat="server" Text="Company Registered ID:"></asp:Label>

                                            <asp:TextBox ID="cmp_id" runat="server" class="form-control" TabIndex="6"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field Value Required" ControlToValidate="cmp_id" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <br />
                                    <h3>ADDRESS AND CONTACT DETAILS</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label4" runat="server" Text="State :"></asp:Label>

                                            <%--<textarea name="message" id="state" cols="10" rows="10" class="form-control"></textarea>--%>
                                            <asp:DropDownList ID="state" class="form-control" runat="server" TabIndex="7">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Gujarat</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ControlToValidate="state" ID="RequiredFieldValidator30" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label5" runat="server" Text="City :"></asp:Label>


                                            <asp:DropDownList ID="city" class="form-control" runat="server" TabIndex="8">
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
                                            <asp:RequiredFieldValidator ControlToValidate="city" ID="RequiredFieldValidator29" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group" tabindex="7">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label6" runat="server" Text="Is your office in Urban Area? :"></asp:Label>
                                            <%--<input type="text" class="form-control" id="Text1"/>--%>
                                                        &nbsp;
                                                        <asp:RadioButtonList ID="urban" TabIndex="9" runat="server" Width="62px">
                                                            <asp:ListItem>Yes</asp:ListItem>
                                                            <asp:ListItem>No</asp:ListItem>

                                                        </asp:RadioButtonList>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label7" runat="server" Text="Taluka :"></asp:Label>

                                            <asp:TextBox ID="taluka" runat="server" class="form-control" TabIndex="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="taluka" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">

                                            <asp:Label ID="Label9" runat="server" Text="Area/Village :"></asp:Label>
                                            <asp:TextBox ID="areavillage" runat="server" class="form-control" TabIndex="11"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="areavillage" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label8" runat="server" Text="Address1 : "></asp:Label>

                                            <%--<input type="text" class="form-control" id="emailid"/>--%>
                                            <asp:TextBox ID="address1" runat="server" class="form-control" TextMode="MultiLine" Rows="10" Columns="10" TabIndex="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="address1" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12" style="width: 50%">
                                            <asp:Label ID="Label10" runat="server" Text="PinCode :"></asp:Label>

                                            <asp:TextBox ID="pincode" runat="server" class="form-control" TabIndex="14"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="pincode" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                       
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label11" runat="server" Text="Telephone1 :"></asp:Label>
                                            <asp:TextBox ID="telephone1" runat="server" class="form-control" MaxLength="10" TextMode="Number" TabIndex="16"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="telephone1" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label12" runat="server" Text="Website : "></asp:Label>

                                            <asp:TextBox ID="website" runat="server" class="form-control" TabIndex="18"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="website" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <br>
                                    <h3>KEY PERSON DETAILS</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label13" runat="server" Text="Main Person :"></asp:Label>

                                            <asp:TextBox ID="mainperson" runat="server" class="form-control" TabIndex="19"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="mainperson" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label14" runat="server" Text="Main Person Phone:"></asp:Label>

                                            <asp:TextBox ID="mainpersonphone" runat="server" class="form-control" MaxLength="10" TextMode="Number" TabIndex="26"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label15" runat="server" Text="Main Person Email : "></asp:Label>
                                            <asp:TextBox ID="mainpersonemail" runat="server" class="form-control" TabIndex="28"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="mainpersonemail" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="mainpersonemail" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label16" runat="server" Text="Contact Person : "></asp:Label>

                                            <asp:TextBox ID="contactperson" runat="server" class="form-control" TabIndex="24"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="contactperson" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label17" runat="server" Text="Contact Person Phone : "></asp:Label>

                                            <asp:TextBox ID="contactpersonphone" runat="server" class="form-control" MaxLength="10" TextMode="Number" TabIndex="26"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label18" runat="server" Text="Contact Person Email :"></asp:Label>

                                            <asp:TextBox ID="contactpersonemail" runat="server" class="form-control" TabIndex="28"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="contactpersonemail" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="contactpersonemail" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label19" runat="server" Text="Employer Registration No :"></asp:Label>

                                            <asp:TextBox ID="employerregistrationno" runat="server" class="form-control" TabIndex="30"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="employerregistrationno" ID="RequiredFieldValidator16" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <h3>WORK DETAILS</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label20" runat="server" Text="Category of Employer :"></asp:Label>
                                            <asp:DropDownList ID="categoryofemployer" class="form-control" runat="server" TabIndex="32">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Central Goverment</asp:ListItem>
                                                <asp:ListItem>Central Quasi Goverment</asp:ListItem>
                                                <asp:ListItem>Local Bodies</asp:ListItem>
                                                <asp:ListItem>Private Sector</asp:ListItem>
                                                <asp:ListItem>State Goverment</asp:ListItem>
                                                <asp:ListItem>State Quasi Goverment</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ControlToValidate="categoryofemployer" ID="RequiredFieldValidator31" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label21" runat="server" Text="Description of Business (type of Jobs) : "></asp:Label>
                                            <asp:TextBox ID="descriptionofbusiness" runat="server" class="form-control" TextMode="MultiLine" Rows="10" Columns="10" TabIndex="34"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="descriptionofbusiness" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label22" runat="server" Text="Total Male Employees :"></asp:Label>

                                            <asp:TextBox ID="totalmaleemployees" runat="server" class="form-control" TabIndex="36"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="totalmaleemployees" ID="RequiredFieldValidator18" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label23" runat="server" Text="Total Employees :"></asp:Label>

                                            <asp:TextBox ID="totalemployees" runat="server" class="form-control" TabIndex="38"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="totalemployees" ID="RequiredFieldValidator19" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label24" runat="server" Text="Upload Comapany Profile:"></asp:Label>
                                            <br/>
                                            <asp:FileUpload ID="File1" runat="server" TabIndex="40" />
                                            <%--<br>
                                            <asp:Button ID="Button4" runat="server" Text="upload" />--%>
                                        </div>
                                    </div>
                                    <br />
                                <%--<div class="row form-group">
                                        <div class="col-md-12" style="margin-left:300px;">
                                            <br />
                                           <asp:Button ID="Submit" runat="server" Text="Register" class="btn btn-primary" TabIndex="42" />
                                      </div>
                                    </div>--%>



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
                                    <br />

                                    <div style="height:41px;">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label26" runat="server" Text="Address2 :"></asp:Label>

                                            <%--<input type="text" class="form-control" id="emailid"/>--%>
                                            <asp:TextBox ID="address2" runat="server" class="form-control" TextMode="MultiLine" Rows="10" Columns="10" TabIndex="13"></asp:TextBox>

                                        </div>
                                    </div>


                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label27" runat="server" Text="Fax : "></asp:Label>

                                            <asp:TextBox ID="fax" runat="server" class="form-control" TabIndex="15"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="fax" ID="RequiredFieldValidator22" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div style="height: 4px;">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label28" runat="server" Text="Telephone 2 : "></asp:Label>

                                            <asp:TextBox ID="telephone2" runat="server" class="form-control" MaxLength="10" TextMode="Number" TabIndex="17"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div style="height: 164px;">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label29" runat="server" Text="Main Person Designation : "></asp:Label>

                                            <asp:DropDownList ID="mainpersondesignation" class="form-control" runat="server" TabIndex="20">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                                <asp:ListItem>MD</asp:ListItem>
                                                <asp:ListItem>HR Manager</asp:ListItem>
                                                <asp:ListItem>CEO</asp:ListItem>
                                                <asp:ListItem>Proprietor</asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ControlToValidate="mainpersondesignation" ID="RequiredFieldValidator32" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label30" runat="server" Text="Main Person Mobile : "></asp:Label>

                                            <asp:TextBox ID="mainpersonmobile" runat="server" class="form-control" MaxLength="10" TextMode="Number" TabIndex="22"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="mainpersonmobile" ID="RequiredFieldValidator24" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <br />
                                    <div style="height: 61px;">
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label31" runat="server" Text="Contact Person Designation : "></asp:Label>

                                            <asp:DropDownList ID="contactpersondesignation" class="form-control" runat="server" TabIndex="25">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                                <asp:ListItem>MD</asp:ListItem>
                                                <asp:ListItem>HR Manager</asp:ListItem>
                                                <asp:ListItem>CEO</asp:ListItem>
                                                <asp:ListItem>Proprietor</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ControlToValidate="contactpersondesignation" ID="RequiredFieldValidator33" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label32" runat="server" Text="Contact Person Mobile : "></asp:Label>

                                            <asp:TextBox ID="contactpersonmobile" runat="server" class="form-control" MaxLength="10" TextMode="Number" TabIndex="27"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="contactpersonmobile" ID="RequiredFieldValidator25" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label33" runat="server" Text="Pan Card No : "></asp:Label>

                                            <asp:TextBox ID="pancardno" runat="server" class="form-control" TabIndex="29"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="pancardno" ID="RequiredFieldValidator26" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label34" runat="server" Text="Sales Tax Registration No : "></asp:Label>

                                            <asp:TextBox ID="salestaxregistrationno" runat="server" class="form-control" TabIndex="31"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="salestaxregistrationno" ID="RequiredFieldValidator27" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div style="height: 45px;">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label35" runat="server" Text="Sector : "></asp:Label>

                                            <asp:DropDownList ID="sector" class="form-control" runat="server" TabIndex="33">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Manufacturing</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                                <asp:ListItem>Service</asp:ListItem>
                                                <asp:ListItem>Trading</asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ControlToValidate="sector" ID="RequiredFieldValidator34" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label36" runat="server" Text="Key Sector : "></asp:Label>

                                            <asp:DropDownList ID="keysector" class="form-control" runat="server" TabIndex="35">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Airlines</asp:ListItem>
                                                <asp:ListItem>Aluminium</asp:ListItem>
                                                <asp:ListItem>Auto Ancillaries</asp:ListItem>
                                                <asp:ListItem>Automobiles</asp:ListItem>
                                                <asp:ListItem>Banks (Private)</asp:ListItem>
                                                <asp:ListItem>Banks (PSU)</asp:ListItem>
                                                <asp:ListItem>Cement</asp:ListItem>
                                                <asp:ListItem>Ceramic</asp:ListItem>
                                                <asp:ListItem>Chemicals</asp:ListItem>
                                                <asp:ListItem>Education</asp:ListItem>
                                                <asp:ListItem>Energy Sources</asp:ListItem>
                                                <asp:ListItem>Engineering</asp:ListItem>
                                                <asp:ListItem>Fertilizer</asp:ListItem>
                                                <asp:ListItem>FMCG</asp:ListItem>
                                                <asp:ListItem>Food</asp:ListItem>
                                                <asp:ListItem>Goverment</asp:ListItem>
                                                <asp:ListItem>Hotels</asp:ListItem>
                                                <asp:ListItem>Indian Pharma</asp:ListItem>
                                                <asp:ListItem>Inv. Finance</asp:ListItem>
                                                <asp:ListItem>Media</asp:ListItem>
                                                <asp:ListItem>Mining</asp:ListItem>
                                                <asp:ListItem>MNC</asp:ListItem>
                                                <asp:ListItem>MNC Pharma</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                                <asp:ListItem>Packaging</asp:ListItem>
                                                <asp:ListItem>Paints</asp:ListItem>
                                                <asp:ListItem>Paper</asp:ListItem>
                                                <asp:ListItem>Power</asp:ListItem>
                                                <asp:ListItem>Private</asp:ListItem>
                                                <asp:ListItem>PSU</asp:ListItem>
                                                <asp:ListItem>Rating Agencies</asp:ListItem>
                                                <asp:ListItem>Real Estate</asp:ListItem>
                                                <asp:ListItem>Retailing</asp:ListItem>
                                                <asp:ListItem>Shipping</asp:ListItem>
                                                <asp:ListItem>Software (Large)</asp:ListItem>
                                                <asp:ListItem>Software (Others)</asp:ListItem>
                                                <asp:ListItem>Steel</asp:ListItem>
                                                <asp:ListItem>Sugar</asp:ListItem>
                                                <asp:ListItem>Telecom</asp:ListItem>
                                                <asp:ListItem>Textiles</asp:ListItem>


                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ControlToValidate="keysector" ID="RequiredFieldValidator35" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div style="height: 197px;">
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label37" runat="server" Text="Total Female Employees : "></asp:Label>

                                            <asp:TextBox ID="totalfemaleemployees" runat="server" class="form-control" TabIndex="37"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="totalfemaleemployees" ID="RequiredFieldValidator28" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label38" runat="server" Text="NIC Head : "></asp:Label>

                                            <asp:DropDownList ID="nichead" class="form-control" runat="server" TabIndex="39">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>AGRICULTURE, FORESTY AND FISHING</asp:ListItem>
                                                <asp:ListItem>MINING AND QUARRYING</asp:ListItem>
                                                <asp:ListItem>MANUFACTURING</asp:ListItem>
                                                <asp:ListItem>ELECTRICITY, GAS, STEAM AND AIRCONDITION SUPPLY</asp:ListItem>
                                                <asp:ListItem>WATER SUPPLY; SEWERAGE, WASTE MANAGEMENT AND REMEDIATION ACTIVITIES</asp:ListItem>
                                                <asp:ListItem>CONSTRUCTION</asp:ListItem>
                                                <asp:ListItem>WHOLESALE AND RETAIL TRADE; REPAIR OF MOTOR VEHICLES AND MOTORCYCLES</asp:ListItem>
                                                <asp:ListItem>TRANSPORT AND STORAGE</asp:ListItem>
                                                <asp:ListItem>ACCOMODATION AND FOOD SERVICE ACTIVITIES</asp:ListItem>
                                                <asp:ListItem>INFORMATION AND COMMUNICATION</asp:ListItem>
                                                <asp:ListItem>FINANCIAL AND INSURANCE ACTIVITIES</asp:ListItem>
                                                <asp:ListItem>REAL ESTATE ACTIVITIES</asp:ListItem>
                                                <asp:ListItem>PROFESSIONAL, SCIENTIFIC AND TECHNICAL ACTIVITIES</asp:ListItem>
                                                <asp:ListItem>ADMINISTRATIVE AND SUPPORT SERVICE ACTIVITIES</asp:ListItem>
                                                <asp:ListItem>PUBLIC ADMINISTRATION AND DEFENCE; COMPULSORY SOCIAL SECURITY</asp:ListItem>
                                                <asp:ListItem>EDUCATION</asp:ListItem>
                                                <asp:ListItem>Human health and social work activities</asp:ListItem>
                                                <asp:ListItem>Arts, entertainment and recreation</asp:ListItem>
                                                <asp:ListItem>OTHER SERVICE ACTIVITIES</asp:ListItem>
                                                <asp:ListItem>ACTIVITIES OF EXTRATERRITORIAL ORGANISATIONS AND BODIES</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ControlToValidate="nichead" ID="RequiredFieldValidator36" runat="server" ErrorMessage="Field Value Required" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    
                                     <div class="row form-group">
                                        <div class="col-md-12">
                                    
                                    <asp:CheckBox ID="CheckBox1" runat="server" TabIndex="42" />
                                    <asp:Label ID="Label40" runat="server" Text="I Agree, Information I have provided is correct"></asp:Label>
                                  </div>
                                         </div>
                                        
                                   <%-- <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label39" runat="server" Text="Upload Another Document for Verification"></asp:Label>
                                            <br/>
                                            <asp:FileUpload ID="File2" runat="server" TabIndex="41" />
                                          <%--  <br>
                                            <asp:Button ID="Button6"   runat="server" Text="upload" />--%>
                                                                         
                                </div>
                          <div>   <h3><br /></h3> </div> 
                                <div class="row form-group" style="">
                                      <div class="col-md-6" style="width:50%; margin-left:350px;">
                                          <asp:Button ID="Submit" runat="server" Text="Register" CssClass="btn btn-primary" style="margin-left:0px;" TabIndex="42" />
                                           <asp:Button ID="Button1" runat="server" Text="Reset" CssClass="btn btn-primary" style="margin-left:100px; padding-left:35px; padding-right:35px;" TabIndex="43" />
                                        </div>
                                    </div>
                               

                            </form>
                            
                        </div>


                    </div>
                    <br />
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
