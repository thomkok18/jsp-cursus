<!DOCTYPE html>
<html>
<body>
<%
    int teller, antwoord, eersteGetal = 0, tweedeGetal = 5;

    for (teller = 1; teller <= 10; teller++) {
        eersteGetal++;
        antwoord = eersteGetal * tweedeGetal;
%>
<p>
    <%= "Tafel van " + eersteGetal + " X 5 = " + antwoord %>
</p>
<%
    }
%>
</body>
</html>