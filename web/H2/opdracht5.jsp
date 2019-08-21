<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
    String stringCelsius = "", stringFahrenheit = "", fout = "";
    int celsius, fahrenheit;

    if (request.getParameter("knopOk") != null) {
        try {
            if (!request.getParameter("celsius").equals("") && !request.getParameter("fahrenheit").equals("")) {
                fout = "Voer maar één waarde in!";
            } else if (!request.getParameter("celsius").equals("")) {
                celsius = Integer.parseInt(request.getParameter("celsius"));
                fahrenheit = Math.round(celsius * 1.8f + 32);
                stringFahrenheit += fahrenheit;
            } else if (!request.getParameter("fahrenheit").equals("")) {
                fahrenheit = Integer.parseInt(request.getParameter("fahrenheit"));
                celsius = Math.round((fahrenheit - 32) / 1.8f);
                stringCelsius += celsius;
            }
        } catch (NumberFormatException e) {
            fout = "Voer een geheel getal in";
        }
    }
%>

<h1>Fahrenheit en Celsius omrekenen</h1>
<form method="get" action="">
    <table>
        <tr>
            <th>Celsius</th>
            <th>Fahrenheit</th>
        </tr>
        <tr>
            <td><label><input type="text" name="celsius" value="<%=stringCelsius%>"></label></td>
            <td><label><input type="text" name="fahrenheit" value="<%=stringFahrenheit%>"></label></td>
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