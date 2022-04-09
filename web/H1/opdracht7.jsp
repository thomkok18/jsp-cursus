<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Vermenigvuldigingstabel</title>
</head>
<body>
<%
    StringBuilder velden = new StringBuilder();
    for (int rij = 1; rij <= 10; rij++) {
        velden.append("<tr>");
        for (int kolom = 1; kolom <= 10; kolom++) {
            if (rij == 1 || kolom == 1) {
                velden.append("<th>").append(rij * kolom).append("</th>");
            } else {
                velden.append("<td>").append(rij * kolom).append("</td>");
            }
        }
        velden.append("</tr>");
    }
%>
<h1>Vermenigvuldigingstabel</h1>
<table border="1">
    <%=velden.toString()%>
</table>
</body>
</html>