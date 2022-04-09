<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
    int teller, antwoord, eersteGetal = 0, tweedeGetal = 5;

    for (teller = 1; teller <= 10; teller++) {
        eersteGetal++;
        antwoord = eersteGetal * tweedeGetal;
%>
<p><%= "Tafel van " + eersteGetal + " X 5 = " + antwoord%></p>
<%
    }
%>
</body>
</html>