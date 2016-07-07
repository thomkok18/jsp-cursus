<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<form action="" method="get">
	<input type="text" name="tekst_input_1"> <input type="submit" name="knop_1" value="Ok">
</form>
<%
	if (request.getParameter("knop_1") != null) {
		String getal = request.getParameter("tekst_input_1");
		int tweedeGetal = Integer.parseInt(getal);

		int teller, antwoord = 0, eersteGetal = 0;

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