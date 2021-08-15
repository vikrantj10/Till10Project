<%@page import="pack.UserDetails"%>
<%@page import="pack.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="WelcomeLoginPage1.css">
<title>Insert title here</title>
</head>
<body>
<% String email = request.getParameter("email");
   String password = request.getParameter("password");
   LoginDao ld = new LoginDao();
   
   UserDetails ud=ld.check(email, password);
 		   
   
   if(ud!=null)
   {
	   session.setAttribute("ud", ud);
	   response.sendRedirect("WelcomeLoginPage1.jsp");
   }
   else
   {
	   response.sendRedirect("LoginPage.jsp");
   }
%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>