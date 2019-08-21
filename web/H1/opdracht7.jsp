<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Vermenigvuldigingstabel</title>
</head>
<body>
<%
    String velden = "";
    for (int rij = 1; rij <= 10; rij++) {
        velden += "<tr>";
        for (int kolom = 1; kolom <= 10; kolom++) {
            if (rij == 1 || kolom == 1) {
                velden += "<th>" + (rij * kolom) + "</th>";
            } else {
                velden += "<td>" + (rij * kolom) + "</td>";
            }
        }
        velden += "</tr>";
    }
%>
<h1>Vermenigvuldigingstabel</h1>
<table border="1">
    <%=velden%>
</table>
</body>
</html>