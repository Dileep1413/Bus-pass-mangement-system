<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="pp.*" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("s1");
String email=request.getParameter("s2");
int pass=Integer.parseInt(request.getParameter("s3"));
try{
	bus.odd();
	bus.st.executeUpdate("insert into buslog values('"+name+"','"+email+"',"+pass+")");
	out.println("insert successful");
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>