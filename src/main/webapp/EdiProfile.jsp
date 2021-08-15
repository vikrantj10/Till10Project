<%@page import="pack.UserDao"%>
<%@page import="pack.UserDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String mobileno = request.getParameter("mobileno");
String password = request.getParameter("password");

UserDetails ud =(UserDetails) session.getAttribute("ud");
ud.setFirstname(firstname);
ud.setLastname(lastname);
ud.setMobileno(mobileno);
ud.setPassword(password);

UserDao us = new UserDao();
boolean ans = us.update(ud);
if(ans)
{
	response.sendRedirect("WelcomeLoginPage1.jsp");
}
else
{
    response.sendRedirect("LoginPage.jsp");
}
%>
</body>
</html>