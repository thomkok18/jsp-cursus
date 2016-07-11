<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="H3.Rekenmachine"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" " http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
Rekenmachine rm = new Rekenmachine();
String uitkomst = "";
String foutboodschap = "";


if (request.getParameter("functie") != null) {
  if (request.getParameter("arg1").equals("") || 
    request.getParameter("arg2").equals("")) {
      foutboodschap = "Voer <em>twee</em> getallen in";
  }
  else {
    try {
      double getal1 = Double.parseDouble(request.getParameter("arg1"));
      double getal2 = Double.parseDouble(request.getParameter("arg2"));
      String functie = request.getParameter("functie");
      uitkomst += rm.bereken(getal1, getal2, functie);
    }
    catch(NumberFormatException e) {
      foutboodschap = "Je mag alleen (decimale) getallen invoeren";
    }
  }
}
%>

    <form method="get">
      <table>
        <thead>
          <tr id="kop">
            <th colspan="4">Rekenmachine</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="getallabels" colspan="2">Eerste getal</td>
            <td class="getallabels" colspan="2">Tweede getal</td>
          </tr>
          <tr id="invoer">
            <td colspan="2">
              <input type="text" name="arg1" value="<%= uitkomst %>">
            </td>
            <td colspan="2">
              <input type="text" name="arg2" value="">
            </td>
          </tr>

          <tr id="knoppen" >
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
            <td colspan="4" class="fout"><%= foutboodschap %></td>
          </tr>
      </table>
    </form>
  </body>
</html>