<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="pp.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("l1");
int pass=Integer.parseInt(request.getParameter("l2"));
int i=0;
try{
	bus.odd();
	ResultSet rs=bus.st.executeQuery("select * from buslog");
	
	while(rs.next())
	{
		String dname=rs.getString("name");
		int dpass=rs.getInt("password");
		
		if(name.equals(dname) && pass==dpass)
		{
			i++;
			
		}
	}
	if(i>0)
		response.sendRedirect("Create.html");
	else
		out.println("Wrong password");
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>