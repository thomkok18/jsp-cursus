<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>JSP</title>
</head>
<body>
<%
    long teller, a, b = 1, c = 0;

    for (teller = 1; teller <= 20; teller++) {
        a = b + c;
        b = c;
        c = a;
%>
<p><%=a%></p>
<%
    }
%>
</body>
</html>