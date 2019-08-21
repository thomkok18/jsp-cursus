<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="H3.lib.Graden" %>
<%
    Graden g = new Graden();
    String celsiusValue = "", fahrenheitValue = "", fout = "";

    if (request.getParameter("knopOk") != null) {
        try {
            if (!request.getParameter("celsius").equals("") && !request.getParameter("fahrenheit").equals("")) {
                fout = "Voer slechts één waarde in!";
            } else if (!request.getParameter("celsius").equals("")) {
                int fahrenheit = g.naarCelsius(request.getParameter("celsius"));
                fahrenheitValue = Integer.toString(fahrenheit);
            } else if (!request.getParameter("fahrenheit").equals("")) {
                int celsius = g.naarCelsius(request.getParameter("fahrenheit"));
                celsiusValue = Integer.toString(celsius);
            }
        } catch (NumberFormatException e) {
            fout = "Voer een geheel getal in!";
        }
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<h1>Fahrenheit en Celsius omrekenen</h1>
<form method="get" action="">
    <table>
        <tr>
            <th>Celsius</th>
            <th>Fahrenheit</th>
        </tr>
        <tr>
            <td><label><input type="text" name="celsius" value="<%=celsiusValue%>"></label></td>
            <td><label><input type="text" name="fahrenheit" value="<%=fahrenheitValue%>"></label></td>
            <td><input type="submit" name="knopOk" value="Omrekenen"></td>
        </tr>

        <% if (request.getParameter("knopOk") != null) { %>
        <tr>
            <td colspan="2" class="fout"><%= fout %></td>
        </tr>
        <% } %>
    </table>
</form>
</body>
</html>