<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% int tweedeGetal = 0, teller, antwoord = 0, eersteGetal = 0; %>
<form action="" method="get">
	<input type="text" name="tekst_input_1"> 
	<input type="submit" name="knopOk" value="Ok">
	<input type="submit" name="knopPlus" value="+1">
	<input type="submit" name="knopMin" value="-1">
	<input type="hidden" name="naam" value="<%=tweedeGetal%>">
</form>
<%
	if (request.getParameter("knop_1") != null) {
		String getal = request.getParameter("tekst_input_1");
		tweedeGetal = Integer.parseInt(getal);

		for (teller = 1; teller <= 10; teller++) {
			eersteGetal++;
			antwoord = eersteGetal * tweedeGetal;
%>
<body>
	<p>
		<%="Tafel van " + eersteGetal + " X " + tweedeGetal + " = " + antwoord%>
	</p>
	<%
		}
	}
	%>
</body>
</html>