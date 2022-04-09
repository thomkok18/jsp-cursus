<%@ page import="java.text.NumberFormat" %>

<!DOCTYPE html>
<html>
<body>
<p>Voer hier het aantal graden dat je wil omzetten naar fahrenheit.</p>
<form action="" method="get">
    <label>
        <input type="text" name="tekstvak">
    </label>
    <input type="submit" name="knopOk" value="Ok">
</form>
<%
    double celsius = 0, fahreinheit = 0;
    boolean geklikt = false;
    NumberFormat nf = null;

    if (request.getParameter("knopOk") != null) {
        geklikt = true;
        try {
            String stringGetal = request.getParameter("tekstvak");
            celsius = Integer.parseInt(stringGetal);
            fahreinheit = celsius * 1.8 + 32;
            nf = NumberFormat.getInstance();
            nf.setMaximumFractionDigits(2);
            nf.setMinimumFractionDigits(0);
        } catch (Exception e) {
            geklikt = false;
        }
    }
    if (geklikt) {
%>
<p>
    <%= nf.format(celsius) + " graden celcius " + " is " + nf.format(fahreinheit) + " Fahrenheit" %>
</p>
<%
    }
%>
</body>
</html>