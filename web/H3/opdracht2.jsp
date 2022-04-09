<%@ page import="H3.lib.Rekenmachine" %>

<!DOCTYPE html>
<html>
<body>
<%
    Rekenmachine rm = new Rekenmachine();
    String uitkomst = "", fout = "";

    if (request.getParameter("functie") != null) {
        if (request.getParameter("tekstvak1").equals("") || request.getParameter("tekstvak2").equals("")) {
            fout = "Voer twee getallen in";
        } else {
            try {
                double getal1 = Double.parseDouble(request.getParameter("tekstvak1"));
                double getal2 = Double.parseDouble(request.getParameter("tekstvak2"));
                String functie = request.getParameter("functie");
                uitkomst += rm.bereken(getal1, getal2, functie);
            } catch (NumberFormatException e) {
                fout = "Je mag alleen (decimale) getallen invoeren";
            }
        }
    }
%>
<form method="get" action="">
    <table>
        <thead>
        <tr>
            <th colspan="4">Rekenmachine</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="getallabels" colspan="2">Eerste getal</td>
            <td class="getallabels" colspan="2">Tweede getal</td>
        </tr>
        <tr>
            <td colspan="2">
                <label><input type="text" name="tekstvak1" value="<%= uitkomst %>"></label>
            </td>
            <td colspan="2">
                <label><input type="text" name="tekstvak2" value=""></label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="knopcontainer">
                    <input type="submit" name="functie" value="+">
                </div>
            </td>
            <td>
                <div class="knopcontainer">
                    <input type="submit" name="functie" value="-">
                </div>
            </td>
            <td>
                <div class="knopcontainer">
                    <input type="submit" name="functie" value="x">
                </div>
            </td>
            <td>
                <div class="knopcontainer">
                    <input type="submit" name="functie" value="/">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="fout"><%= fout %>
            </td>
        </tr>
    </table>
</form>
</body>
</html>