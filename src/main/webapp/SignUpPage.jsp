<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=width-device, initial-scale=1.0">
<title>Insert title here</title>
<link href="SignUpCss.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
<form class="form" action="SignUpJsp.jsp" method="post">
<h1>Register Here!</h1>
<input type="text" name="firstname" placeholder="First Name"><br>
<input type="text" name="lastname" placeholder="Last Name"><br>
<input type="text" name="email" placeholder="Email"><br>
<input type="text" name="mobileno" placeholder="Mobile No"><br>
<input type="password" name="password" placeholder="Password"><br>
<input type="submit" value="SignUp" class="submit">
</form>
</body>
</html>