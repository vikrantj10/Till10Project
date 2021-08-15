<%@page import="pack.UserDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="WelcomeLoginPage1.css" rel="stylesheet" type="text/css">
<link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css' rel='stylesheet'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+2&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/4de14c5829.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<%
UserDetails ud = new UserDetails();
ud=(UserDetails)session.getAttribute("ud"); 
if(ud==null)
{
	response.sendRedirect("LoginPage.jsp");
}
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
<nav>
<div class="navcontainer">
<div class="nav1">
<a href="#"><img id="logo" src="Image/20210218_111933.jpg"></a>
</div>
<div class="nav2">
Welcome <%
if(ud!=null)
{
out.println(ud.getFirstname());
}
%>
</div>
<div class="nav3">
<button class='bx bx-user-circle' id="showbtn"></button>
</div>
</div>
</nav>
<div id="myProfile">
<ul>
<li>
<i class="far fa-edit"></i>
<a href="#"><button id="editbtn">Edit Profile</button></a>
<i class="far fa-envelope"></i>
<a href="#"><%if(ud!=null)
{
out.println(ud.getEmail());
}%>
</a>
<i class="fas fa-phone-square-alt"></i>
<a href="#"><%if(ud!=null)
{
out.println(ud.getMobileno());
}%>
</a>
<i class="fas fa-unlock-alt"></i>
<a href="#"><%if(ud!=null)
{
out.println(ud.getPassword());
}%>
</a>
<i class="far fa-paper-plane"></i>
<a href="">Contact</a>
<i class="fas fa-sign-out-alt"></i>
<a href="Log.jsp">SignOut</a>
</li>
</ul>
</div>
<form id="form" action="EdiProfile.jsp" enctype="multipart/form-data">
<i id="editf" class="fas fa-user-edit"></i>
<input type="text" name="firstname" placeholder="First Name" required>
<input type="text" name="lastname" placeholder="Last Name" required>
<input type="text" name="mobileno" placeholder="Mobile No" required>
<input type="password" name="password" placeholder="Password" required>
<input id="submit" type="submit" value="Save">
</form>
<div class="container1">
<div class="item1">
<h1 class="caption" id="tm">Top Masaala</h1>
<a href="https://www.sportbible.com/football/news-legends-lionel-messi-is-singlehandedly-carrying-argentina-for-ballon-dor-wins-20210801"><img class="ballon" src="Image/Ballon.jpg"></a>
<h1 class="description" id="bd">Messi on his way for his 7th Ballon d'or?</h1>
</div>
<div class="item1" id="poster">
</div>
<div class="item1">
<h1 class="caption" id="till">About Till 10</h1>
<h1 class="description" id="desc2">I Have Started This Beautiful Journey In March! Yeah A little Bit Different Where I Do Match Reviews With The Combination Of Memes In Order To Add That Extra Bit Funny Factor</h1>
</div>
</div>
<div class="vctitle">
<h1>Latest Videos</h1>
<div class="container">
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=Ay0GOCLhEs4&pp=sAQA"><img src="Image/1.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=KaGFBks6npM&pp=sAQA"><img src="Image/2.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=4k8YbA8ztVo&pp=sAQA"><img src="Image/3.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=N75DDZqgq8E&pp=sAQA"><img src="Image/4.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=PALEADyslXk&t=12s&pp=sAQA"><img src="Image/5.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=jJ-5NyVUDhw&pp=sAQA"><img src="Image/6.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=YMLxm4MCNZA&pp=sAQA"><img src="Image/7.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=dDMENf1fpzo&pp=sAQA"><img src="Image/8.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=7hO2ppIgAvk&pp=sAQA"><img src="Image/9.jpg"></a>
</div>
<div class="vcontainer">
<a href="https://www.youtube.com/watch?v=YCR4cNzhmb4&pp=sAQA"><img src="Image/10.jpg"></a>
</div>
</div>
</div>
<div class="container3">
<h2 class="playlist">Playlists</h2>
<div class="container2">
<div class="item2">
<h2 class="title1">Laliga 2020/21 Season Barcelona</h2>
<img src="Image/20210703_224932.jpg" class="img1">
<a href="https://youtube.com/playlist?list=PL8F-jSizzlDqDZYhnz3c6V4Fd-OwHyXTn"><h2 class="des1">Watch Here!</h2></a>
</div>
<div class="item2">
<h2 class="title2">Copa America 2021</h2>
<img src="Image/Copaa.jpg" class="img1">
<a href="https://youtube.com/playlist?list=PL8F-jSizzlDp2w091UT6zWeb8x5O0fkVZ"><h2 class="des1">Watch Here!</h2></a>
</div>
<div class="item2">
<h2 class="title3">Uefa Champions League 2020/21</h2>
<img src="Image/champ.jpg" class="img1">
<a href="https://youtube.com/playlist?list=PL8F-jSizzlDq0FDMXMAkDDV5ToahgXUjO"><h2 class="des1">Watch Here!</h2></a>
</div>
<div class="item2">
<h2 class="title4">Talk</h2>
<img src="Image/fcb.jpg" class="img1">
<a href="https://youtube.com/playlist?list=PL8F-jSizzlDrm0vcDKFj7T6c3rxmauk5d"><h2 class="des1">Watch Here!</h2></a>
</div>
<div class="item2">
<h2 class="title5">A Day To Remember</h2>
<img src="Image/day.jpg.jpg" class="img1">
<a href="https://youtube.com/playlist?list=PL8F-jSizzlDp2z8sbywfCCUdGr7o21K5B"><h2 class="des1">Watch Here!</h2></a>
</div>
<div class="item2">
<h2 class="title6">Copa Del Rey</h2>
<img src="Image/Copa1.jpg" class="img1">
<a href="https://youtube.com/playlist?list=PL8F-jSizzlDqNEKRMiofgjyP9-XnYnDlm"><h2 class="des1">Watch Here!</h2></a>
</div>
<div class="item2" id="shift">
<h2 class="title7">Road To Qatar World Cup 2022</h2>
<img src="Image/Qatar.jpg" class="img1">
<a href="https://www.youtube.com/playlist?list=PL8F-jSizzlDqLsuDO6SsZEv5g9dWQLp7H"><h2 class="des1">Watch Here!</h2></a>
</div>
<div class="item2" id="shift">
<h2 class="title8">Super League Drama</h2>
<img src="Image/Sl.jpg" class="img1">
<a href="https://www.youtube.com/playlist?list=PL8F-jSizzlDprIj6SgCIOfBIgt2xutUwd"><h2 class="des1">Watch Here!</h2></a>
</div>
<div class="item2" id="shift">
<h2 class="title9">#Shorts</h2>
<img src="BG/Hbd.jpg" class="img1">
<a href="https://www.youtube.com/playlist?list=PL8F-jSizzlDoDIguQD5afSle7l7os7qtg"><h2 class="des1">Watch Here!</h2></a>
</div>
</div>
</div>
<footer>
<div class="footer1">
<div class="Item1">
<h1>Developed & Created By Vikrant Jadhav</h1>
</div>
<div class="Item2">
<img class="footertill" src="Image/20210218_111933.jpg">
<p id="copy">&copy 2021-22 All Rights Reserved</p>
</div>
<div class="Item3">
<a href="https://www.facebook.com/me/"><i class='bx bxl-facebook-circle bx-spin-hover' ></i></a>
<a href="https://www.instagram.com/v8rn_void/"><i class='bx bxl-instagram bx-lg bx-spin-hover'></i></a>
<a href="https://www.youtube.com/channel/UCxJ-DjUtaMO5mVTMdOwnWew"><i class='bx bxl-youtube bx-lg bx-spin-hover' ></i></a>
</div>
</div>
</footer>
<script src="WelLogJs.js"></script>
</body>
</html>