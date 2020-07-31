<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
    int getal, hoogsteGetal, laagsteGetal;
    boolean geklikt = false;
    String stringGetal;
%>
<form action="" method="get">
    <label>
        Voer een getal in
        <input type="text" name="tekstvak">
    </label>
    <input type="submit" name="knopOk" value="Ok"><br>
    <%
        if (request.getParameter("achtergrondGetalHoog") == null) {
            laagsteGetal = Integer.MAX_VALUE;
            hoogsteGetal = Integer.MIN_VALUE;
        } else {
            laagsteGetal = Integer.parseInt(request.getParameter("achtergrondGetalLaag"));
            hoogsteGetal = Integer.parseInt(request.getParameter("achtergrondGetalHoog"));
        }
        if (request.getParameter("knopOk") != null) {
            geklikt = true;
            try {
                stringGetal = request.getParameter("tekstvak");
                getal = Integer.parseInt(stringGetal);
                if (getal > hoogsteGetal) {
                    hoogsteGetal = getal;
                }
                if (getal < laagsteGetal) {
                    laagsteGetal = getal;
                }
            } catch (Exception e) {
                geklikt = false;
            }
        }
        if (geklikt == true) {
    %>
    <%
        if (laagsteGetal != Integer.MAX_VALUE) {
    %>
    <p>Het hoogste getal is: </p><label><input type="text" name="achtergrondGetalHoog" value="<%=hoogsteGetal%>"></label>
    <br>
    <p>Het laagste getal is: </p><label><input type="text" name="achtergrondGetalLaag" value="<%=laagsteGetal%>"></label>
    <%
            }
        }
    %>

</form>
</body>
</html>