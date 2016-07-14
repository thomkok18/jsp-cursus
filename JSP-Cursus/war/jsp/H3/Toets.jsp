<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="H3.Auto"%>
<%@page import="H3.AutoLijst"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" " http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
Auto auto = new Auto();
AutoLijst autoLijst = new autolijst();
String uitkomst = "", fout = "";

if (request.getParameter("functie") != null) {
  if (request.getParameter("tekstvak1").equals("") || 
    request.getParameter("tekstvak2").equals("")) {
      fout = "Voer twee getallen in";
  }
  else {
    try {
      double getal1 = Double.parseDouble(request.getParameter("tekstvak1"));
      double getal2 = Double.parseDouble(request.getParameter("tekstvak2"));
      String functie = request.getParameter("functie");
      uitkomst += Auto.bereken(getal1, getal2, functie);
    }
    catch(NumberFormatException e) {
      fout = "Je mag alleen (decimale) getallen invoeren";
    }
  }
}
%>
    <form method="get">
      <table>
        <thead>
          <tr>
            <th colspan="4">Rekenmachine</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="getallabels" colspan="2">Eerste getal</td>
            <td class="getallabels" colspan="2">Tweede getal</td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="text" name="tekstvak1" value="<%= uitkomst %>">
            </td>
            <td colspan="2">
              <input type="text" name="tekstvak2" value="">
            </td>
          </tr>
          <tr>
            <td>
              <div class="knopcontainer">
                <input type="submit" name="functie" value="+">
              </div>
           </td>
            <td>
              <div class="knopcontainer">
                <input type="submit" name="functie" value="-">
              </div>
            </td>
            <td>
              <div class="knopcontainer">
                <input type="submit" name="functie" value="x">
              </div>
            </td>
            <td>
              <div class="knopcontainer">
                <input type="submit" name="functie" value="/">
              </div>
            </td>
          </tr>
          <tr>
            <td colspan="4" class="fout"><%= fout %></td>
          </tr>
      </table>
    </form>
  </body>
</html>