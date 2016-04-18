<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opdracht2</title>
<%  int minuutsec = 60; %>
</head>
<body>
 <table border="1">
            <thead>
                <tr>
                    <th>Eenheid</th>
                    <th>Aantal seconden</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>minuut</td>
                    <td><%= minuutsec*1 %></td>
                </tr>
                <tr>
                    <td>Uur</td>
                    <td><%= minuutsec*60 %></td>
                </tr>
                <tr>
                    <td>Dag</td>
                    <td><%= minuutsec*1440 %></td>
                </tr>
                <tr>
                    <td>Week</td>
                    <td><%= minuutsec*10080 %></td>
                </tr>
                <tr>
                    <td>Jaar</td>
                    <td><%= minuutsec*525600 %></td>
                </tr>
            </tbody>
        </table>
</body>
</html>