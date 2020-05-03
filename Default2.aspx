<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<title>Krogarna.se Certificate</title>
<style type="text/css" media="print">

	{
	left:0px !important;
	width:11in !important;
	height:8.5in !important;
	font-size:107% !important;
	}
</style>

<style type="text/css" media="all">
    #top {
height: 100%;
}
#position_me {
left: 0;
}

    .SlideBackGround
    {
        height:650px;
        width:880px;
        position:fixed;
        margin:10px 10px 10px 10px;
        background-color:white;
        background-image:url(frame.png);
        background-size:880px 650px;
        background-repeat:no-repeat;
        z-index: 2;
        filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='frame.png',sizingMethod='scale');
        -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='frame.png',sizingMethod='scale')";

    }
    .MiddlePart
    {
    height:170px;
    width:670px;
    position:fixed;
    left:125px;
    top:80px;
    background-image:url(middle_part.png);
    background-size:670px 170px;
    background-repeat:no-repeat;
    z-index: 5;
            filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='middle_part.png',sizingMethod='scale');
            -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='middle_part.png',sizingMethod='scale')";
    }
    
    .Seal
    {
    height:90px;
    width:90px;
    position:fixed;
    left:415px;
    top:420px;
    background-image:url(sigill.png);
    background-size:90px 90px;
    background-repeat:no-repeat;
    z-index: 5;
                filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='sigill.png',sizingMethod='scale');
                -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='sigill.png',sizingMethod='scale')";
    
        }
    
    .Ribbon
   {
    
    width:60px;
    height:90px;
    position:fixed;
    left:435px;
    top:520px;
    background-image:url(band.png);
    background-size:60px 90px;
    background-repeat:no-repeat;
    z-index: 5;
                filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='band.png',sizingMethod='scale');
                -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='band.png',sizingMethod='scale')";
    
        }
    
    .Signature
    {
    width:180px;
    height:90px;
    position:fixed;
    left:582px;
    top:517px;
      
    background-image:url(signature.png);
    background-size:180px 90px;
    background-repeat:no-repeat;
    z-index: 11;
      filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='signature.png',sizingMethod='scale');
    -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='signature.png',sizingMethod='scale')";
    
    }
    
    .DateLine
    {
    width:300px;
    position:fixed;
    left:112px;
    top:570px;
    z-index:11;
    }
    
    .ExaminerLine
    {
    width:300px;
    position:fixed;
    left:500px;
    top:570px;
    z-index:11;
    }
    
    .ExaminerText
    {
    width:270px;
    position:fixed;
    left:632px;
    top:585px;
    color:#8B7B67;
    z-index:11;
    }
    
    .DateText
    {
    width:270px;
    position:fixed;
    left:232px;
    top:585px;
    z-index:11;
    color:#8B7B67;
    }
    
    .ParagraphSmall
    {
    height:200px;
    width:500px;
    position:fixed;
    left:200px;
    top:350px;
    font-size:13px;
    text-align:center;
    z-index:11;
    color:#8B7B67;
    }
    
    .ParagraphMedium
    {
    height:200px;
    width:420px;
    position:fixed;
    left:240px;
    top:260px;
    font-size:14px;
    text-align:center;
    z-index:11;
    color:#8B7B67;
    }
    
    .HeadingLarge
    {
    height:200px;
    width:600px;
    position:fixed;
    left:330px;
    top:130px;
    font-size:66px;
    z-index:11;
    color:#8B7B67;
    }
    
    .MiddleLine
    {
    width:720px;
    position:fixed;
    left:100px;
    top:330px;
    z-index:11;
    color:#8B7B67;
    }
    
    .StudentName
    {
    font-weight:bold;
    height:200px;
    width:720px;
    position:fixed;
    left:100px;
    top:310px;
    font-size:18px;
    text-align:center;
    z-index:11;
    color:#8B7B67;
    }
    
    .CompletionDate
    {
    position:fixed;
    left:225px;
    top:555px;
    z-index:11;
    color:#8B7B67;
    text-align:center;
    }
    
</style>
</head>

<body style="margin-left:350px;">

    <div style="width:800px; height:600px; padding:20px; text-align:center; border: 10px solid #787878">
<div style="width:750px; height:550px; padding:20px; text-align:center; border: 5px solid #787878">
       <span style="font-size:50px; font-weight:bold">Certificate of Completion</span>
       <br><br>
       <span style="font-size:25px"><i>This is to certify that</i></span>
       <br><br>
       <span style="font-size:30px"><b>$student.getFullName()</b></span><br/><br/>
       <span style="font-size:25px"><i>has completed the course</i></span> <br/><br/>
       <span style="font-size:30px">$course.getName()</span> <br/><br/>
       <span style="font-size:20px">with score of <b>$grade.getPoints()%</b></span> <br/><br/><br/><br/>
       <span style="font-size:25px"><i>dated</i></span><br>
      #set ($dt = $DateFormatter.getFormattedDate($grade.getAwardDate(), "MMMM dd, yyyy"))
      <span style="font-size:30px">$dt</span>
</div>
</div>



</body>
</html>

