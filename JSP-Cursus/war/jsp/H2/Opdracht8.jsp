<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<form action="index.jsp" method="get">
	<input type="text" name="getal">
	<div class="knop">
		<input type="submit" name="knop" value="Ok">
	</div>
</form>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>tafel van 5</title>
</head>
<body>
    <h3>De tafel van 5</h3>
    <% for (int teller = 1; teller <= 10; teller++) { %>
    <%= teller %> x 5 = <%= teller * 5 %> <br>
    <% } %>
</body>
</html>