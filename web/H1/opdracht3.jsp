<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Calendar" %>
<%@ page import="java.util.TimeZone" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>JSP</title>
</head>
<body>
<%
    Calendar nu = Calendar.getInstance();
    TimeZone timeZone = TimeZone.getTimeZone("Europe/Amsterdam");
    nu.setTimeZone(timeZone);
    int huidigUur = nu.get(Calendar.HOUR_OF_DAY);
    String tekst = "";

    if (huidigUur >= 1) {
        tekst = ("Goedemorgen");
    }

    if (huidigUur >= 12) {
        tekst = ("Goedemiddag");
    }

    if (huidigUur >= 18) {
        tekst = ("Goedenavond");
    }
%>
<p><%=tekst%>!
</p>
<p>
    Het is
    <%=huidigUur%>
    uur.
</p>
</body>
</html>