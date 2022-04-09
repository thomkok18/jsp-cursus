<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<p>Voer hier het getal in waar je de tafel van wil zien.</p>
<form action="" method="get">
    <label>
        <input type="text" name="tekstvak">
    </label>
    <input type="submit" name="knopOk" value="Ok">
    <input type="submit" name="knopPlus" value="plus">
    <input type="submit" name="knopMin" value="min">
    <%
        int oplopendGetal = 0, antwoord, tafel;
        boolean geklikt;
        String getal;

        if (request.getParameter("knopOk") != null || request.getParameter("knopMin") != null || request.getParameter("knopPlus") != null) {
            tafel = 0;
            geklikt = true;

            try {
                if (Objects.equals(request.getParameter("tekstvak"), "")) {
                    getal = request.getParameter("achtergrondTekst");
                } else {
                    getal = request.getParameter("tekstvak");
                }

                tafel = Integer.parseInt(getal);

                if (request.getParameter("knopMin") != null) {
                    tafel--;
                }
                if (request.getParameter("knopPlus") != null) {
                    tafel++;
                }
            } catch (Exception e) {
                geklikt = false;
            }

            for (int aantalSommen = 0; aantalSommen < 10; aantalSommen++) {
                oplopendGetal++;
                antwoord = oplopendGetal * tafel;
    %>
    <%
        if (geklikt) {
    %>
    <p>
        <%= "Tafel van " + oplopendGetal + " x " + tafel + " = " + antwoord %>
    </p>
    <%
            }
        }
    %>
    <input type="hidden" name="achtergrondTekst" value="<%=tafel%>">
</form>
<%}%>
</body>
</html>