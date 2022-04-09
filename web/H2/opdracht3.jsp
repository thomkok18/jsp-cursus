<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    if (geklikt == true) {
%>
<p><%=nf.format(celsius) + " graden celcius " + " is " + nf.format(fahreinheit) + " Fahrenheit"%></p>
<%}%>
</body>
</html>