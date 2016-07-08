<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
int getal = 0, antwoord = 0, geklikt = 0;
String stringGetal = "";
%>
<form action="" method="get">
	<input type="text" name="tekst_input_1"> 
	<input type="submit" name="knopOk" value="Ok"> 
	<input type="submit" name="knopPlus" value="plus"> 
	<input type="submit" name="knopMin" value="min">
<%
if (request.getParameter("knopOk") != null || request.getParameter("knopMin") != null || request.getParameter("knopPlus") != null) {
	getal = 0;
	geklikt = 1;

	try {
		if (request.getParameter("tekst_input_1") == "") {
			stringGetal = request.getParameter("achtergrondTekst");

			getal = Integer.parseInt(stringGetal);

		} else {
			stringGetal = request.getParameter("tekst_input_1");
			getal = Integer.parseInt(stringGetal);
		}

	if (request.getParameter("knopMin") != null) {
		geklikt = 1;
		getal--;
	}
	if (request.getParameter("knopPlus") != null) {
		geklikt = 1;
		getal++;
	}
	} catch (Exception e) {
		geklikt = 0;
	}

	for (int i = 1; i <= 10; i++) {
		antwoord = i * getal;
%>
<%if (geklikt == 1) {%>
<p>
	<%="Tafel van " + i + " x " + getal + " = " + antwoord%>
</p>
<%}
}%>

<input type="hidden" name="achtergrondTekst" value="<%=getal%>">
</form>
<%}%>
</body>
</html>