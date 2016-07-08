<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
int celsius = 0, geklikt = 0;
double antwoord = 0;
%>
<form action="" method="get">
	<input type="text" name="tekst_input_1"> 
	<input type="submit" name="knopOk" value="Ok">
</form>
<%
		if (request.getParameter("knopOk") != null) {
			geklikt = 1;
			try {
				String stringGetal = request.getParameter("tekst_input_1");
				celsius = Integer.parseInt(stringGetal);
				antwoord = celsius * 1.8 + 32;
			} catch (Exception e) {
				geklikt = 0;
			}
		}
		if (geklikt == 1) {
			%>
			<p><%=celsius + " graden celcius " + " is " + antwoord + " Fahrenheit"%></p>
		<%}%>
</body>
</html>