<%@ Page Language="VB" AutoEventWireup="false" CodeFile="convocation.aspx.vb" Inherits="convocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <%--<script>
        function printpage() {

            var getpanel = document.getElementById("<%= Form1.ClientID%>");
         var MainWindow = window.open('', '', 'height=500,width=800');
         MainWindow.document.write('<html><head><title>Print Page</title>');
         MainWindow.document.write('</head><body>');
         MainWindow.document.write(getpanel.innerHTML);
         MainWindow.document.write('</body></html>');
         MainWindow.document.close();
         setTimeout(function () {
             MainWindow.print();
         }, 500);
         return false;

     }
 </script>--%>
<head>
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
                                <li><a href="student_dashboard.aspx">Dashboard</a></li>
                                <li class="active"><a href="convocation.aspx">Convocation</a></li>
                                <li><a href="std_emp_reg.aspx">Emloyment-Registration-Form</a></li>
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
                        <h1>Convocation Form</h1>
                    </div>
                </div>
            </header>
            <div class="gtco-section border-bottom">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12">
                            
                                <div class="col-md-6 animate-box">

                                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Style="margin-left: 450px;" BorderColor="Black" BorderWidth="2px" Height="130px" Width="110px" ImageUrl='<%# Eval("image")%>' ImageAlign="Middle" />
                                        </ItemTemplate>
                                    </asp:DataList><br /><br />
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image] FROM [convo_img] WHERE ([email_id] = @email_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="email_id" SessionField="uname" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="eno" DataSourceID="SqlDataSource1">

                                        <ItemTemplate>
                                            Enrollment No.:
                                            <asp:Label ID="enoLabel" runat="server" Text='<%# Eval("eno") %>' />
                                            <br />
                                            Name:
                                            <asp:Label ID="std_nameLabel" runat="server" Text='<%# Bind("std_name") %>' />
                                            <br />
                                            Institute:
                                            <asp:Label ID="inst_nameLabel" runat="server" Text='<%# Bind("inst_name") %>' />
                                            <br />
                                            Course Type:
                                            <asp:Label ID="course_typeLabel" runat="server" Text='<%# Bind("course_type") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [eno], [std_name], [inst_name], [course_type] FROM [student_details] WHERE ([email_id] = @email_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="email_id" SessionField="uname" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br /><br />
                                    <h3>Correspondence:</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                                            <asp:TextBox ID="address_std" TextMode="MultiLine" Columns="10" Rows="10" CssClass="form-control" runat="server" TabIndex="4"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="address_std" Text="Please enter Address here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="city_lbl" runat="server" Text="City"></asp:Label>
                                            <asp:DropDownList ID="City" class="form-control" runat="server" TabIndex="5">
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="City" Text="Please enter City here" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="state_lbl" runat="server" Text="State"></asp:Label>
                                            <asp:DropDownList ID="state" class="form-control" runat="server" TabIndex="6">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Gujarat</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="state" Text="Please enter State here" Display="Dynamic" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="pin" runat="server" Text="Pincode"></asp:Label>
                                            <asp:TextBox ID="pincode" CssClass="form-control" runat="server" TabIndex="7"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="pincode" Text="Please enter Pincode here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="email" runat="server" Text="Email Id"></asp:Label>
                                            <asp:TextBox ID="email_id" CssClass="form-control" runat="server" TabIndex="8"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="email_id" Text="Please enter Email id here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="phn_no" runat="server" Text="Phone Number"></asp:Label>
                                            <asp:TextBox ID="ph_no" CssClass="form-control" runat="server" TabIndex="9"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ph_no" Text="Please enter Phone no. here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="mob_num" runat="server" Text="Mobile number"></asp:Label>
                                            <asp:TextBox ID="mob_no" CssClass="form-control" runat="server" TabIndex="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="mob_no" Text="Please enter Mobile no. here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="aadhar" runat="server" Text="Aadhar Number"></asp:Label>
                                            <asp:TextBox ID="aadhar_no" CssClass="form-control" runat="server" TabIndex="11"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="aadhar_no" Text="Please enter Aadhar no. here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 animate-box">
                                    <br /><br />
                                    <div style="height:130px;">

                                    </div>
                                    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource3" style="margin-left:200px;">
                                        <EditItemTemplate>
                                            Branch:
                                            <asp:TextBox ID="std_branchTextBox" runat="server" Text='<%# Bind("std_branch") %>' />
                                            <br />
                                            Passing Year:
                                            <asp:TextBox ID="pass_yearTextBox" runat="server" Text='<%# Bind("pass_year") %>' />
                                            <br />
                                            Passing Month:
                                            <asp:TextBox ID="pass_monthTextBox" runat="server" Text='<%# Bind("pass_month") %>' />
                                            <br />
                                            CGPA:
                                            <asp:TextBox ID="cgpaTextBox" runat="server" Text='<%# Bind("cgpa") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                     
                                            Branch:
                                            <asp:TextBox ID="std_branchTextBox" runat="server" Text='<%# Bind("std_branch") %>' />
                                            <br />
                                            Passing Year:
                                            <asp:TextBox ID="pass_yearTextBox" runat="server" Text='<%# Bind("pass_year") %>' />
                                            <br />
                                            Passing Month:
                                            <asp:TextBox ID="pass_monthTextBox" runat="server" Text='<%# Bind("pass_month") %>' />
                                            <br />
                                            CGPA:
                                            <asp:TextBox ID="cgpaTextBox" runat="server" Text='<%# Bind("cgpa") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            Branch:
                                            <asp:Label ID="std_branchLabel" runat="server" Text='<%# Bind("std_branch") %>' />
                                            <br />
                                            Passing Year:
                                            <asp:Label ID="pass_yearLabel" runat="server" Text='<%# Bind("pass_year") %>' />
                                            <br />
                                            Passing Month:
                                            <asp:Label ID="pass_monthLabel" runat="server" Text='<%# Bind("pass_month") %>' />
                                            <br />
                                            CGPA:
                                            <asp:Label ID="cgpaLabel" runat="server" Text='<%# Bind("cgpa") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [course_type], [std_branch], [pass_year], [pass_month], [cgpa] FROM [student_details] WHERE ([email_id] = @email_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="email_id" SessionField="uname" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br /><br />
                                    <h3>Payment Details</h3>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="c_num2" runat="server" Text="Challan/Transaction Number"></asp:Label>
                                            <asp:TextBox ID="du_no" CssClass="form-control" runat="server" TabIndex="16"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="du_no" Text="Please enter DU no. here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="bbname2" runat="server" Text="Bank Branch name"></asp:Label>
                                            <asp:TextBox ID="b_name1" CssClass="form-control" runat="server" TabIndex="17"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="b_name1" Text="Please enter Bank Name here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="trans_date" runat="server" Text="Challan/ Transaction date"></asp:Label>
                                            <asp:TextBox ID="c_date1" CssClass="form-control" runat="server" TabIndex="18"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="c_date1" Text="Please enter Challan date here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="wnt_alumini" runat="server" Text="Want to be Alumini? "></asp:Label>
                                            <asp:RadioButton ID="alumini_yes" GroupName="wnt_alumini" onclick="javascript:yesnoalumini();" runat="server" Text="Yes" TabIndex="19" />
                                            <asp:RadioButton ID="alumini_no" GroupName="wnt_alumini" onclick="javascript:yesnoalumini();" runat="server" Text="No" TabIndex="20" />

                                        </div>
                                    </div>
                                    <div id="alumini" style="display: none;">
                                        <div class="row form-group">
                                            <div class="col-md-12">
                                                <asp:Label ID="c_num" runat="server" Text="Challan/Transaction Number"></asp:Label>
                                                <asp:TextBox ID="du_no2" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="du_no2" Text="Please enter DU no. here" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-md-12">
                                                <asp:Label ID="bbname" runat="server" Text="Bank Branch name"></asp:Label>
                                                <asp:TextBox ID="brname2" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="brname2" Text="Please enter Branch Name here" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-md-12">
                                                <asp:Label ID="c_date" runat="server" Text="Challan/Transcation date"></asp:Label>
                                                <asp:TextBox ID="c_date2" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="c_date2" Text="Please enter Challan Date here" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12" style="position: relative;">
                                            <asp:Label ID="rec_deg" runat="server" Text="Whether Willing to receive degree(tick) ?"></asp:Label>
                                            &nbsp;
                                            <asp:RadioButton ID="deg_yes" GroupName="rec_deg" onclick="javascript:yesnodegree();" runat="server" Text="Present" TabIndex="21" />
                                            <asp:RadioButton ID="deg_no" GroupName="rec_deg" onclick="javascript:yesnodegree();" runat="server" Text="Absent" TabIndex="22" />


                                        </div>
                                    </div>

                                    <div id="degree" style="display: none;">

                                        <div class="row form-group">
                                            <div class="col-md-12">
                                                <asp:Label ID="with_prnt" runat="server" Text="Coming with parents? "></asp:Label>
                                                &nbsp;<asp:RadioButtonList ID="RadioButtonList2" runat="server" TabIndex="23">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="RequiredFieldValidator" InitialValue="" ControlToValidate="RadioButtonList2" Text="Please Select one option" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="row form-group">
                                            <div class="col-md-12">
                                                <asp:Label ID="pass" runat="server" Text="No of passes for parents :"></asp:Label>
                                                &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" TabIndex="24">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="RequiredFieldValidator" InitialValue="" ControlToValidate="RadioButtonList1" Text="Please Select one option" Display="Dynamic"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>

                                    </div>


                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <asp:Label ID="Label1" runat="server" Text="Whether you have been selected in placement ?"></asp:Label>&nbsp;
                                            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" TabIndex="25">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:RadioButtonList>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="RequiredFieldValidator" InitialValue="" ControlToValidate="RadioButtonList4" Text="Please Select one option" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                     <div class="row form-group">
                                             <div class="col-md-12">
                                                 <asp:Label ID="Label7" runat="server" Text="Aadhar Card :-"></asp:Label>&nbsp;
                                                 <asp:FileUpload ID="FileUpload1" runat="server" />
                                                  </div>
                                        </div>
                                     </div>
                                <div class="row form-group">
                                    <div class="col-md-12" style="margin-left: 475px; margin-top: 50px;">
                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="Button1_Click" Text="Submit" TabIndex="26" />

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

            </form>

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
    <script type="text/javascript">
        function yesnodegree() {
            if (document.getElementById('deg_yes').checked) {
                document.getElementById('degree').style.display = "block";
            }
            else if (document.getElementById('deg_no').checked) {
                document.getElementById('degree').style.display = "none";
            }
        }
    </script>
    <script type="text/javascript">


        function yesnoalumini() {
            if (document.getElementById('alumini_yes').checked) {
                document.getElementById('alumini').style.display = "block";
            }
            else if (document.getElementById('alumini_no').checked) {
                document.getElementById('alumini').style.display = "none";
            }
        }
    </script>
    <script type="text/javascript">

        function yesnocheck() {
            if (document.getElementById('placement1').checked) {
                document.getElementById('place').style.display = "block";
            }
            else if (document.getElementById('placement2').checked) {
                document.getElementById('place').style.display = "none";
            }
        }


    </script>
         
</body>
</html>

