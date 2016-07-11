<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="H3.Graden" %>
<%
Graden g = new Graden();
String celsiusValue = "", fahrenheitValue = "", fout = "";
if (request.getParameter("knopOk") != null) {
  try {
    if (!request.getParameter("celsius").equals("") && !request.getParameter("fahrenheit").equals("")) {
       fout = "Voer slechts één waarde in!";
    }
    else if (!request.getParameter("celsius").equals("")) {
      int fahrenheit = g.naarFahrenheit(request.getParameter("celsius"));
      fahrenheitValue += fahrenheit;
    }
    else if (!request.getParameter("fahrenheit").equals("")) {
      int celsius = g.naarCelsius(request.getParameter("fahrenheit"));
      celsiusValue += celsius;
    }
  }
  //foute of geen invoer werpt Exception op
  catch(NumberFormatException e) {
    fout = "Voer een geheel getal in!";
  }
}
%>
        
<h1>Fahrenheit en Celsius omrekenen</h1>
<form method="get">
  <table>
    <tr>
      <th>Celsius</th>
      <th>Fahrenheit</th>
    </tr>
    <tr>
      <td><input type="text" name="celsius" value="<%=celsiusValue%>"></td>
      <td><input type="text" name="fahrenheit" value="<%=fahrenheitValue%>"></td>
      <td><input type="submit" name="knopOk" value="Omrekenen"></td>
    </tr>
    
    <% if (request.getParameter("knopOk") != null) { %>
      <tr>
        <td colspan="2" class="fout"><%= fout %></td>
      </tr>
    <% } %>
  </table>
</form>