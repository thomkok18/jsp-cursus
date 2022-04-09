<!DOCTYPE html>
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
<p>
    <%= a %>
</p>
<%
    }
%>
</body>
</html>