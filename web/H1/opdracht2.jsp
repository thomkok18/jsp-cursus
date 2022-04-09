<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>JSP</title>
</head>
<%
    int seconde = 1, minuut = 60, uur = 3600, dag = 216000, week = 1512000, maand = 6048000;
%>
<table border="1">
    <thead>
    <tr>
        <th>Tijd</th>
        <th>Aantal Seconden</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Minuut</td>
        <td><%= seconde * 60 %>
        </td>
    </tr>
    <tr>
        <td>Uur</td>
        <td><%= minuut * 60 %>
        </td>
    </tr>
    <tr>
        <td>Dag</td>
        <td><%= uur * 24 %>
        </td>
    </tr>
    <tr>
        <td>Week</td>
        <td><%= dag * 7 %>
        </td>
    </tr>
    <tr>
        <td>Maand</td>
        <td><%= week * 4 %>
        </td>
    </tr>
    <tr>
        <td>Jaar</td>
        <td><%= maand * 12 %>
        </td>
    </tr>
    </tbody>
</table>
</html>