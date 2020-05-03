<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Student_dashboard.aspx.vb" Inherits="Student_dashboard" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Convo-Rangroot</title>
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

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" />

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
        <div class="gtco-loader">
        </div>
        <div id="page">


            <div class="page-inner">
                <nav class="gtco-nav" role="navigation">
                    <div class="gtco-container">

                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div id="gtco-logo" style="font-size: 30px;"><a href="Student_dashboard.aspx">Convo<em>Rangroot</em></a></div>
                            </div>
                            <div class="col-xs-8 text-right menu-1">
                                <ul>
                                    <li class="active"><a href="Student_dashboard.aspx">Dashboard</a></li>
                                    <li><a href="convocation.aspx">Convocation Form</a></li>
                                    <li><a href="std_emp_reg.aspx">Employment Registration Form</a></li>
                                    <li><a><asp:Button ID="std_logout" class="btn btn-primary" runat="server" Text="Logout" /></a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </nav>

                <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/std_dash.jpg); height: 700px;">
                    <div class="overlay"></div>
                </header>

                <div class="gtco-section border-bottom" style="margin-left: 100px; margin-right: 100px;">
                    <div class="gtco-container" style="text-align: center; color: #f54c53;">
                        <div>
                            <h1 style="font-family: 'Times New Roman'">Instructions</h1>
                        </div>
                    </div>

                    <b>General Instructions</b>
                    <ol>
                        <li>An applicant has to fill correct data so that Degree/Diploma Certificate can be printed and delivered correctly.</li>
                        <li>An applicant has to pay 
                                    the fees of Rs. 500/- for Degree, 300/- for Diploma and 1000/- for Ph.D. 
                                    certificates in any SBI branch and Rs. 200/- additional if you want to be a 
                                    member of University Alumni Association. Please fill the separate Challan for both 
                                    (Convocation Degree/Diploma Certificate and University Alumni Association (if you 
                                    want to be a member of University Alumni Association)) fees.&nbsp;</li>
                        <li>Please write SBI Collect Reference Number in text-box of Challan/Transaction Number.
                                Please write "SBI" in place of Bank Branch Name in case of debit/credit/internet
                                banking payment. </li>
                        <li>In case of debit/credit/internet banking payment E-receipt of Transaction must be
                                attach with the Application Form, and in case of Cash Payment please attach original
                                Depositor copy of Challan with Bank Stamp.</li>
                        <li>Please verify before submitting the online application form that Barcode and Photo is properly displayed or not.</li>
                        <li>If photo is not visible/available then kindly refer details in the photo change circular available at 7th Convocation option at university website: <a href="http://www.jdp.ac.in/" target="_blank">www.jdp.ac.in</a> and <b>if photo is visible/available then photo can’t be changed.</b></li>
                        <li><u>If the student’s photo is not available with the University then student must have to upload photo in the online application form as per circular available at 7th convocation option and without photo the  student can’t able fill the online application form.</u></li>
                        <li>Adhar number of the student is compulsory to fill the online convocation application form.</li>
                        <li>For name correction in the convocation degree/diploma certificates, kindly contact your college/institute and update the same in the college/institute<b> before Coming Soon..</b>, application after that will not be entertained.</li>
                        <li id="fooItem">Please carefully check your photo, full name, college name & CPI/CGPA before submitting the application and if you find any query or for any query related to 7th convocation, you can mail us on <b>“convocation@University.edu.in”</b>.
                        </li>
                        <li>An applicant must submit their Application at University with following documents:
                                <ul>
                                    <li>Degree / Diploma Application Form printout with student signature.</li>
                                    <li>Original Copy of Challan-Depositor Copy (both for Degree/Diploma Certificate and University Alumni Association (if you want to be a member of University Alumni Association)).</li>
                                    <li>Photo ID proof (Voter ID Card/Driving License/ PAN Card/Passport/Adhar Card, College ID card any one).</li>
                                    <li>Please write <b>"7th Convocation Degree/Diploma Application Form" on top of the Envelop.</b></li>
                                </ul>
                        </li>
                        <li><b>Please keep photo Copy (Xerox copy) of all above mentioned Documents with you for further Reference.</b></li>

                        <li>An applicant can submit their application at University personally or send it to University via Post/Courier (any type of post) on or before Coming Soon.. on ADDRESS “University, Ahmedabad , Gujarat”.</li>
                        <li>Application received after Last Date  
                                <span id="lblEndDate6"></span>will be rejected and University is not responsible for any postal delay. </li>
                        <li>If student have completed all above procedure than, student will get his/her certificate on or before “Coming Soon..”.</li>



                        <li>If the student have done all the process to get degree/diploma certificate yet he/she has not received the certificate at the mentioned address till <b>Coming Soon..</b>, then student must have to do inquiry on ”convocation@University.edu.in”, on or before Coming Soon...</b></li>
                    </ol>
                    <br />
                    <b>Degree Instructions</b>
                    <ol>
                        <li>All the students must have to fill the online Application form to get the Degree / Diploma Certificate and submit it to the University office as per the following schedule.</li>
                        <li>If you want to receive Certificate at home, please select <b>Absentia</b> and if you want to receive certificate in Convocation Event then select <b>Person</b> in the Convocation Application Form.</li>

                        <li>If you select <b>Absentia</b> than the Degree Certificate will be posted to your postal address, if you select <b>Person</b> and due to any problem you will not able to attend the convocation then the Degree Certificate will be posted to your mentioned address in the application for 15 days after the convocation date.

                        </li>
                        <li><b>Application End Date:
                                <span id="lblEndDate">Coming Soon..</span>
                        </b></li>
                        <li><b>An applicant has to pay the fees of Rs.500/- for Degree Certificate and Rs.1000/- for Ph.D. certificates</b>
                            in any SBI branch and Rs. 200/- additional if you want to be a member of University Alumni Association. Please fill the separate Challan for both (Convocation Degree Certificate and University Alumni Association (if you want to be a member of University Alumni Association)) fees.
                                <a href="images/SBI_ConvocationFee.pdf" target="_blank">Please read carefully Fee Payment
                                    instruction.</a></li>
                    </ol>
                    <br />
                    <b>Diploma Instructions </b>
                    <ol>
                        <li>All the students must have to fill the online Application form to get the Degree / Diploma Certificate and submit it to the University office as per the following schedule.</li>
                        <li>Your Diploma Passing Certificate will send to your mentioned Address in the Application after the convocation ceremony. </li>

                        <li><b>Application End Date :
                                <span id="lblEndDate3">Coming Soon..</span>
                        </b></li>
                        <li><b>An applicant has to pay the fees of Rs. 300/- for Diploma Certificate </b>in any SBI branch and Rs. 200/- additional if you want to be a member of University Alumni Association. Please fill the separate Challan for both (Convocation Diploma Certificate and University Alumni Association (if you want to be a member of University Alumni Association)) fees.<a href="images/SBI_ConvocationFee.pdf" target="_blank">Please read carefully
                                    Fee Payment instruction.</a></li>
                    </ol>
                    <b>Application Submission flow:</b>

                    <ol>
                        <li>Click on "Apply for Convocation" button at the end of Instructions.</li>
                        <li>Enter Enrollment Number and hit Search Button.</li>
                        <li>Check your all details which are already given in the Application Form.</li>
                        <li>Fill all remaining information in the Application Form and click on “Update & Generate
                                Form” button.</li>
                        <li>Check your Photo and Barcode then Print the Generated Form.</li>

                        <li>If you send incomplete Application Form to University then it will be rejected.</li>
                    </ol>
                    <br />
                    <asp:Button ID="Button1" CssClass="btn btn-primary" Style="width: 400px; height: 50px; text-align: center; margin-left: 300px;" runat="server" Text="Apply For Convocation" PostBackUrl="~/convocation.aspx" />



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
    <%-- <script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>--%>
</body>
</html>

