<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
int geklikt = 0;
double fahrenheit = 0, celsius = 0;
String stringGetal = "", fout = "";
%>
<form action="" method="get">
	<input type="text" name="celsius">
	<input type="text" name="fahrenheit">
	<input type="submit" name="knopOmrekenen" value="Omrekenen">
<%
		if (request.getParameter("knopOmrekenen") != null) {
			geklikt = 1;
			try {
				if (request.getParameter("celsius") == "" && request.getParameter("fahrenheit") == "") {
					        fout = "Voer een waarde in!";
					      }
				else if (request.getParameter("celsius") == "") {
					stringGetal = request.getParameter("fahrenheit");
					fahrenheit = Integer.parseInt(stringGetal);
					celsius = fahrenheit / 1.8 - 32;
			      }
			    else if (request.getParameter("fahrenheit") == "") {
			    	stringGetal = request.getParameter("celsius");
					celsius = Integer.parseInt(stringGetal);
					fahrenheit = celsius * 1.8 + 32;
			    }
			} catch (Exception e) {
				geklikt = 0;
			}
		}
		if (geklikt == 1) {
			%>
			<p><%=celsius + " graden celcius " + " is " + fahrenheit + " Fahrenheit"%></p>
			<p><%=fahrenheit + " fahrenheit " + " is " + celsius + " celsius"%></p>
		 <table>
      <tr>
        <th>Celsius</th>
        <th>Fahrenheit</th>
      </tr>
      <tr>
		<td><input type="text" name="achtergrondCelsius" value="<%=celsius%>"></td> 
		<td><input type="text" name="achtergrondFahrenheit" value="<%=fahrenheit%>"></td>
		</tr>
      <% if (request.getParameter("knopOmrekenen") != null) { %>
      <tr>
        <td colspan="2" class="fout"><%= fout %></td>
      </tr>
      		<% } 
      }%>
      </table>
	</form>
</body>
</html>