<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/opdracht5.css">
<%
    String velden = "";

    for (int i = 0; i < 8; i++) {
        velden += "<tr>";
        for (int j = 0; j < 8; j++) {
            if ((i + j) % 2 == 0) {
                velden += "<td class=\"zwart\"></td>";
            } else {
                velden += "<td class=\"wit\"></td>";
            }
        }
        velden += "</tr>";
    }
%>
<head>
    <title>Schaakbord</title>
</head>
<body>
<h1>Schaakbord</h1>
<table id="schaakbord">
    <%=velden%>
</table>
</body>
</html>