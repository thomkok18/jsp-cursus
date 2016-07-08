<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
int tweedeGetal = 0, antwoord = 0, eersteGetal = 0;
String getal = "";
%>
<form action="" method="get">
	<input type="text" name="tekst_input_1"> 
	<input type="submit" name="knopOk" value="Ok"> 
	<input type="submit" name="knopPlus" value="plus"> 
	<input type="submit" name="knopMin" value="min">
	<input type="hidden" name="getal" value="<%=tweedeGetal%>">
</form>
<%
if (request.getParameter("knopOk") != null || request.getParameter("knopMin") != null || request.getParameter("knopPlus") != null) {

	getal = request.getParameter("tekst_input_1");
	tweedeGetal = Integer.parseInt(getal);

	if(request.getParameter("knopMin") != null){
		tweedeGetal--;
	}
	if(request.getParameter("knopPlus") != null){
		tweedeGetal++;
	}

	for (int i = 1; i <= 10; i++) {
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