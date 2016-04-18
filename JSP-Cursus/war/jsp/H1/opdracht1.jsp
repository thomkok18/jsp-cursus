<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP</title>
</head>
<%  double bedrag = 113.0; %>
        <table border="1">
            <thead>
                <tr>
                    <th>Naam</th>
                    <th>Totaal &euro; <%= bedrag %></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Jan</td>
                    <td>&euro; <%= bedrag/4 %></td>
                </tr>
                <tr>
                    <td>Ali</td>
                    <td>&euro; <%= bedrag/4 %></td>
                </tr>
                <tr>
                    <td>Jeannette</td>
                    <td>&euro; <%= bedrag/4 %></td>
                </tr>
                <tr>
                    <td>Piet</td>
                    <td>&euro; <%= bedrag/4 %></td>
                </tr>
            </tbody>
        </table>
</html>