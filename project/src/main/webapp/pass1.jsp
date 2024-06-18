<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@ page import="pp.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String name=request.getParameter("t1");
String gen=request.getParameter("t2");
String dob=request.getParameter("t3");
int age=Integer.parseInt(request.getParameter("t4"));
String sour=request.getParameter("t5");
String desti=request.getParameter("t6");
int mon=Integer.parseInt(request.getParameter("t7"));
String mobno=request.getParameter("t8");
String status="pending";
int am=mon*100;
try{
	bus.odd();
	bus.st.executeUpdate("insert into pass values('"+name+"','"+gen+"','"+dob+"','"+age+"','"+sour+"','"+desti+"','"+mobno+"','"+status+"')");

	response.sendRedirect("payment.html");
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>