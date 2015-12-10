<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Airline Booking Uganda</title>
<meta name="author" content="Mugisha, Elisa, kevin">

<script src="js/jscookmenu.min.js"></script>
<link rel="stylesheet" href="ThemeShadedViolet/theme.css">
<script src="ThemeShadedViolet/theme.js"></script>
<link href="cupertino/jquery.ui.all.css" rel="stylesheet">
<link href="css/Untitled2.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/www_rate_calc_frame.css" rel="stylesheet" type="text/css" media="all">






<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery.ui.effect.min.js"></script>
<script src="js/jquery.ui.effect-blast.min.js"></script>
<script src="js/jquery.ui.effect-fade.min.js"></script>
<script src="js/wb.slideshow.min.js"></script>
<script src="js/jquery.ui.core.min.js"></script>
<script src="js/jquery.ui.widget.min.js"></script>
<script src="js/jquery.ui.button.min.js"></script>
<script src="js/wwb10.min.js"></script>




<script>
$(document).ready(function()
{
   $("#SlideShow1").slideshow(
   {
      interval: 5000,
      type: 'random',
      effect: 'blast',
      direction: '',
      pagination: false,
      easing: 'easeInOutCirc',
      effectlength: 2000
   });
   $("#SlideShow1_back a").click(function()
   {
      $('#SlideShow1').slideshow('previmage');
   });
   $("#SlideShow1_next a").click(function()
   {
      $('#SlideShow1').slideshow('nextimage');
   });
   $("#jQueryButton1").button({ icons: { primary:'ui-icon-gear', secondary:'ui-icon-gear' } });
   $("#SlideShow2").slideshow(
   {
      interval: 3000,
      type: 'sequence',
      effect: 'none',
      direction: '',
      pagination: false,
      effectlength: 2000
   });
});
</script>
<style>
body
{
   background-color: #FFFFFF;
   background-image: url(images/bg_top_img.jpg);
   background-attachment: fixed;
   background-position: center center;
   background-repeat: no-repeat;
   background-size: contain;
   color: #000000;
   font-family: Verdana;
   font-weight: normal;
   font-size: 13px;
   line-height: 1.1875;
   margin: 0;
   padding: 0;
}



</style>












</head>
<body>























<div id="wb_Text1" style="position:absolute;left:575px;top:0px;width:326px;height:74px;z-index:2;text-align:left;">
<span style="color:#A52A2A;font-family:Arial;font-size:32px;"><strong>AIRLINE BOOKING&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  UGANDA</strong></span></div>
<div id="wb_Image1" style="position:absolute;left:31px;top:0px;width:298px;height:209px;z-index:3;">
<img src="images/LOGO%202.png" id="Image1" alt=""></div>
<div id="wb_Text2" style="position:absolute;left:81px;top:232px;width:216px;height:42px;z-index:4;text-align:left;">
<span style="color:#A52A2A;font-family:'Lucida Calligraphy';font-size:16px;">For Fast&nbsp; And Reliable Booking of Flights</span></div>



<div id="wb_GoMenu1" style="position:absolute;left:1157px;top:362px;width:190px;height:25px;z-index:5;">


<form id="GoMenu1">
   <select id="GoMenu1_select" name="GoMenu1">
      <option class="_self" value="#" selected>Select a page</option>
      <option class="_self" value="./index.php">Home</option>
      <option class="_self" value="./book.php">Book</option>
      <option class="_self" value="./contacts.php">Contact</option>
   </select>
   <input id="GoMenu1_input" type="button" value="Go" onClick="OnGoMenuFormLink(this.form.GoMenu1)">
</form>
</div>




<div id="wb_Text3" style="position:absolute;left:1157px;top:328px;width:243px;height:18px;z-index:6;text-align:left;">
<span style="color:#8000FF;font-family:Verdana;font-size:16px;"><strong>QUICK NAVIGATION</strong></span></div>
<div id="SlideShow1_frame" style="position:absolute;left:497px;top:286px;margin-left:-30px;margin-top:-30px;z-index:7;">
<img style="border-width:0;left:0;top:0;" src="images/img0001.png" alt="">
</div>



<div id="SlideShow1" style="position:absolute;left:497px;top:286px;width:567px;height:194px;z-index:7;">
<img class="image" src="images/nn.png" alt="" title="">
<img class="image" src="images/DSD.png" style="display:none;" alt="" title="">

<div id="SlideShow1_back" style="position:absolute;left:4px;top:82px;width:30px;height:30px;z-index:999"><a style="cursor:pointer"><img alt="Back" style="border-style:none" src="images/carousel_back.png"></a></div>
<div id="SlideShow1_next" style="position:absolute;left:533px;top:82px;width:30px;height:30px;z-index:999"><a style="cursor:pointer"><img alt="Next" style="border-style:none" src="images/carousel_next.png"></a></div>
</div>



<div id="wb_MenuBar1" style="position:absolute;left:608px;top:146px;width:230px;height:40px;z-index:1008;">
<div id="MenuBar1">
<ul style="display:none;">
<li><span></span><a href="./index.php" target="_self">HOME</a>
</li>
<li><span></span><a href="book.php" target="_self">BOOK</a></li>
<li><span></span><a href="contacts.php" target="_self">CONTACT</a></li>
</ul>
</div>
<script>
cmDrawFromText('MenuBar1', 'hbr', cmThemeShadedViolet, 'ThemeShadedViolet');
</script>
</div>





<div id="wb_Text5" style="position:absolute;left:1157px;top:503px;width:245px;height:30px;z-index:9;text-align:left;">
<span style="color:#8000FF;font-family:Verdana;font-size:19px;">Currency Converter</span></div>

<div align="right">
 <div id="powerd"><a href="http://www.transfermate.com/" target="_blank">POWERED BY TRANSFERMATE</a></div><script src="https://www.transfermate.com/en/exchange_rates_api.asp" type="text/javascript"></script><noscript><br/><span style="color: red;  width:200px">Please enable your javascript.</span></noscript>      
</div>




<div id="wb_JavaScript1" style="position:absolute;left:270px;top:981px;width:93px;height:49px;z-index:10;">
<a href="http://www.facebook.com/mugisha.joseph" rel="nofollow"><img style="width:75px;height:30px;border-width:0;" alt="Airline Booking Uganda" title="Airline Booking Uganda" src="images/logo_facebook.gif"></a></div>
<div id="wb_JavaScript2" style="position:absolute;left:385px;top:981px;width:92px;height:49px;z-index:11;">
<a href="http://twitter.com/mugisha michael" rel="nofollow"><img style="width:82px;height:28px;border-width:0;" alt="Airline booking Uganda on Twitter" title="Airline booking Uganda on Twitter" src="images/logo_twitter.gif"></a></div>







<input type="button" onClick="location.href='admin.php'" id="jQueryButton1" name="Admin" value="Admin" style="position:absolute;left:1210px;top:83px;width:100px;height:63px;z-index:12;">

<div id="SlideShow2" style="position:absolute;left:31px;top:307px;width:366px;height:290px;z-index:13;">
<img class="image" src="images/page5_img2.jpg" alt="" title="">
<img class="image" src="images/bg_top_img1.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/page2_img1.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/page2_img2.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/page2_img3.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/page5_img1.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/1_bujumbura-airport.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/948133-76934-.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/images.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/imagessass.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/imagessss.jpg" style="display:none;" alt="" title="">
<img class="image" src="images/o-PLANE-570.jpg" style="display:none;" alt="" title="">
</div>





<textarea name="TextArea1" id="TextArea1" style="position:absolute;left:477px;top:612px;width:620px;height:261px;z-index:14;" rows="13" cols="75">This is an interactive website To ease your Booking i am intending to 
implement it on mobile phones and with Time i shall Do it.

I know that Time is essential when travelling by air so i am here to
see that Time is on your side, Please Ensure to Login for Full Access if
you Don't have An Account Please Sign Up Thanks
 
 Thank you for using for this site i hope this website 
serves as i Intended Thank you </textarea>



<div id="PageFooter1" style="position:absolute;overflow:hidden;text-align:left;left:0px;top:1073px;width:124%; height:77px;z-index:15;">
<div id="wb_JavaScript3" style="position:absolute;left:497px;top:13px;width:534px;height:64px;z-index:0;">
<div style="color:#000000;font-size:12px;font-family:Verdana;font-weight:normal;font-style:normal;text-align:left;text-decoration:none" id="copyrightnotice"></div>



<script>
   var now = new Date();
   var startYear = "";
   var text =  "Copyright &copy; ";
   if (startYear != '')
   {
      text = text + startYear + "-";
   }
   text = text + now.getFullYear() + ", Airline Booking Uganda. All rights reserved.";
   var copyrightnotice = document.getElementById('copyrightnotice');
   copyrightnotice.innerHTML = text;
</script>


</div>
</div>
</body>
</html>