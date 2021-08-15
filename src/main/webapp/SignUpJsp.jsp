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
<% String email = request.getParameter("email");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String password = request.getParameter("password");
String mobileno = request.getParameter("mobileno");

UserDetails UD = new UserDetails();
UD.setEmail(email);
UD.setFirstname(firstname);
UD.setLastname(lastname);
UD.setPassword(password);
UD.setMobileno(mobileno);

UserDao dao = new UserDao();
dao.Insert(UD);
response.sendRedirect("LoginPage.jsp");
%>
</body>
</html>