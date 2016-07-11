<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
  <%
  String stringTekstvak1 = "";
  String stringTekstvak2 = "";
  int eersteGetal = 0, tweedegetal = 0, antwoord = 0;
  String fout = "";
  if (request.getParameter("plus") != null || request.getParameter("min") != null || request.getParameter("keer") != null || request.getParameter("delenDoor") != null) {
    try {
      if (request.getParameter("eersteGetal").equals("") || request.getParameter("tweedeGetal").equals("")) {
        fout = "Voer een waarde in!";
      }
      if (request.getParameter("plus") != null) {
        eersteGetal = Integer.parseInt(request.getParameter("eersteGetal"));
        tweedegetal = Integer.parseInt(request.getParameter("tweedeGetal"));
        antwoord = eersteGetal + tweedegetal;
        stringTekstvak1 += antwoord;
      }
      if (request.getParameter("min") != null) {
          eersteGetal = Integer.parseInt(request.getParameter("eersteGetal"));
          tweedegetal = Integer.parseInt(request.getParameter("tweedeGetal"));
          antwoord = eersteGetal - tweedegetal;
          stringTekstvak1 += antwoord;
        }
      if (request.getParameter("keer") != null) {
          eersteGetal = Integer.parseInt(request.getParameter("eersteGetal"));
          tweedegetal = Integer.parseInt(request.getParameter("tweedeGetal"));
          antwoord = eersteGetal * tweedegetal;
          stringTekstvak1 += antwoord;
        }
      if (request.getParameter("delenDoor") != null) {
          eersteGetal = Integer.parseInt(request.getParameter("eersteGetal"));
          tweedegetal = Integer.parseInt(request.getParameter("tweedeGetal"));
          antwoord = eersteGetal / tweedegetal;
          stringTekstvak1 += antwoord;
        }
    }
    catch(NumberFormatException e) {
    }
   }
   %>
        
  <h1>Rekenmachine</h1>
  <form method="get">
    <table>
      <tr>
        <th>Eerste getal</th>
        <th>Tweede getal</th>
      </tr>
      <tr>
        <td><input type="text" name="eersteGetal" value="<%=stringTekstvak1%>"></td>
        <td><input type="text" name="tweedeGetal" value="<%=stringTekstvak2%>"></td>
        <td><input type="submit" name="plus" value="+"></td>
        <td><input type="submit" name="min" value="-"></td>
        <td><input type="submit" name="keer" value="*"></td>
        <td><input type="submit" name="delenDoor" value="/"></td>
      </tr>
      <% if (request.getParameter("plus") != null || request.getParameter("min") != null || request.getParameter("keer") != null || request.getParameter("delenDoor") != null) { %>
      <tr>
        <td colspan="2" class="fout"><%= fout %></td>
      </tr>
      <% } %>
    </table>
  </form>
</body>
</html>