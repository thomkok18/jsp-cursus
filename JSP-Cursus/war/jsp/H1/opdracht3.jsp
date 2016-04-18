<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" " http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Kalender</title>
</head>
<body>
<%@page import="java.util.Calendar"%>
<%  
Calendar nu = Calendar.getInstance();
int huidigUur = nu.get(Calendar.HOUR_OF_DAY);
String tekst = "";  
    
if (huidigUur >= 12 && huidigUur <= 18){
tekst = "Goedemiddag";
}
if (huidigUur > 18 && huidigUur <= 24){
tekst = "Goedeavond";
}
if (huidigUur >= 1 && huidigUur < 12){
tekst = "Goedemorgen";
}
%>

<p><%= tekst %></p>
<p>Huidig uur: <%= huidigUur %></p>
</body>
</html>
