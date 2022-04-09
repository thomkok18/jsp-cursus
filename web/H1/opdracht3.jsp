<%@page import="java.util.Calendar" %>
<%@ page import="java.util.TimeZone" %>

<!DOCTYPE html>
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

    if (huidigUur < 6) {
        tekst = ("Goedenacht");
    }

    if (huidigUur >= 6) {
        tekst = ("Goedemorgen");
    }

    if (huidigUur >= 12) {
        tekst = ("Goedemiddag");
    }

    if (huidigUur >= 18) {
        tekst = ("Goedenavond");
    }
%>
<p><%=tekst%>!</p>
<p>Het is <%=huidigUur%> uur.</p>
</body>
</html>