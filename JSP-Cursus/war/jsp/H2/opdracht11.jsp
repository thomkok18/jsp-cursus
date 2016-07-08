<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
int getal = 0, hoogsteGetal = 0, laagsteGetal = 0, geklikt = 0;
double antwoord = 0;
String stringGetal;
%>
<form action="" method="get">
	<input type="text" name="tekst_input_1"> 
	<input type="submit" name="knopOk" value="Ok">
<%
if (request.getParameter("achtergrondGetalHoog") == null) {
	laagsteGetal = Integer.MAX_VALUE;
	hoogsteGetal = Integer.MIN_VALUE;
} else {
	laagsteGetal = Integer.parseInt(request.getParameter("achtergrondGetalLaag"));
	hoogsteGetal = Integer.parseInt(request.getParameter("achtergrondGetalHoog"));
	}
		if (request.getParameter("knopOk") != null) {
			geklikt = 1;
			try {
				stringGetal = request.getParameter("tekst_input_1");
				getal = Integer.parseInt(stringGetal);
				if (getal > hoogsteGetal) {
					hoogsteGetal = getal;
				}
				if (getal < laagsteGetal) {
					laagsteGetal = getal;
				}
				} catch (Exception e) {
					geklikt = 0;
				}
			}
if (geklikt == 1) {
%>
<%
	if (laagsteGetal != Integer.MAX_VALUE) {
%>
		<p><%="Hoogste getal: " + hoogsteGetal%></p>
		<p><%="Laagste getal: " + laagsteGetal%></p>
<%
	}
}
%>
	<input type="text" name="achtergrondGetalHoog" value="<%=hoogsteGetal%>"> 
	<input type="text" name="achtergrondGetalLaag" value="<%=laagsteGetal%>">
</form>
</body>
</html>