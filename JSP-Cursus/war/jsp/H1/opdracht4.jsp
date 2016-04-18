<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>fibo reeks</title>
</head>
<body>
<%
long arg0 = 1L;
long arg1 = 1L;
long som = 0L;
long maxWaarde = 900000000000000000L;
%>

<% for(int teller = 1; teller >= 0; teller++) { 
	if(som <= maxWaarde){
	arg0 = arg1 + som;
	arg1 = som;
	som = arg0;
	%>
	<p> <%= som %> </p>
<% } 
} %>
</body>
</html>