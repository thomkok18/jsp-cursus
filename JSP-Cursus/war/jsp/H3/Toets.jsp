<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="H3.Auto"%>
<%@page import="H3.AutoLijst"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" " http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String fout = "";

if (request.getParameter("knop") != null) {
	  if (request.getParameter("tekstvak1").equals("") || request.getParameter("tekstvak2").equals("")) {
	      fout = "Voer twee getallen in";
	  }
} else {
	try {

    }
      catch(NumberFormatException e) {
        fout = "Je mag alleen (decimale) getallen invoeren";
      }
}

%>
<form method="get">
	<table>
		<thead>
			<tr>
				<th colspan="4">Welkom</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div class="knopcontainer">
						<input type="submit" name="knop" value="Ok">
					</div>
				</td>
<tr>
            <td colspan="2">
              <input type="text" name="tekstvak1" value="">
            </td>
            <td colspan="2">
              <input type="text" name="tekstvak2" value="">
            </td>
          </tr>
          <tr>
            <td colspan="4" class="fout"><%= fout %></td>
          </tr>
	</table>
</form>
</html>