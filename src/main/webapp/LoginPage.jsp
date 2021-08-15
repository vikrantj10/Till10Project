<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=width-device, initial-scale=1.0">
<title>Insert title here</title>
<link href="LoginPageCss.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
<form class="form" action="LoginJsp.jsp" method="post">
<h1>Login Here!</h1>
<h3>Enter your email<h3></h3><input type="text" name="email" placeholder="Email"><br>
<h3>Enter your password<h3></h3><input type="password" name="password" placeholder="Password"><br>
<input class="submit" type="submit" value="Login">
<a class="click" href="SignUpPage.jsp">Not Registered?</a>
</form>
</body>
</html>