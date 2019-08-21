<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<p>Voer hier het getal in waar je de tafel van wil zien.</p>
<form action="" method="get">
    <label>
        <input type="text" name="tekstvak">
    </label>
    <input type="submit" name="knopOk" value="Ok">
</form>
<%
    if (request.getParameter("knopOk") != null) {
        String getal = request.getParameter("tekstvak");
        int tafel = Integer.parseInt(getal);

        int antwoord, oplopendGetal = 0;

        for (int aantalSommen = 0; aantalSommen < 10; aantalSommen++) {
            oplopendGetal++;
            antwoord = oplopendGetal * tafel;
%>
<p><%="Tafel van " + oplopendGetal + " X " + tafel + " = " + antwoord%></p>
<%
        }
    }
%>
</body>
</html>