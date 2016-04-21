<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Calendar"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP</title>
</head>
<body>
	<%
		long teller, a = 1, b = 1, c = 0, x = 10;

		for (teller = 1; teller <= 20; teller++) {
			a = b + c;
			b = c;
			c = a;
			x += 40;
	%>
	<p>
		<%=a%>
	</p>
	<%
		}
	%>
</body>
</html>