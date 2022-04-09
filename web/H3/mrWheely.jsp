<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="H3.lib.Auto" %>
<%@ page import="H3.lib.AutoLijst" %>
<%@ page import="java.util.Objects" %>

<%
    String[] options = {"--Alle merken--", "Ford", "Opel", "Subaru", "Mercedes", "Ferrari", "Lotus", "Citroen", "Volvo", "Mini"};
    AutoLijst al = new AutoLijst();
%>
<html>
<head>
    <meta charset="UTF-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Modifications -->
    <link rel="stylesheet" href="css/wheely.css">

    <!-- JQuery  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <title>JSP Cursus</title>
</head>
<body>
<div>
    <header>
        <div class="container wheely"></div>
    </header>
    <div>
        <div class="col-xs-12">
            <form action="mrWheely.jsp" method="get">
                <div class="form-group">
                    <label for="merk">Merk:</label>
                    <select class="form-control" id="merk" name="merk">
                        <%
                            for (String option : options) {
                        %>
                        <option value="<%= option %>" <%=Objects.equals(request.getParameter("merk"), option) ? "selected='selected'" : "" %>>
                            <%= option %>
                        </option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <label for="minprijs">Minimale prijs:</label>
                    <input type="number" class="form-control" id="minprijs" name="minprijs" min="0" step="0.01" value="<%= request.getParameter("minprijs") == null ? "0" : request.getParameter("minprijs") %>">
                </div>
                <div class="form-group">
                    <label for="maxprijs">Maximale prijs:</label>
                    <input type="number" class="form-control" id="maxprijs" name="maxprijs" step="0.01" value="<%=Objects.equals(request.getParameter("maxprijs"), "99999999999999") ? "99999999999999" : request.getParameter("maxprijs")%>">
                </div>
                <button type="submit" name="knop" value="submit" class="btn btn-default">Submit</button>
            </form>
            <div>
                <%
                    for (Auto auto : al.getLijst()) {
                        if (request.getParameter("merk") == null && request.getParameter("minprijs") == null && request.getParameter("maxprijs") == null || (Objects.equals(auto.getMerk(), request.getParameter("merk")) || Objects.equals(request.getParameter("merk"), "--Alle merken--")) && Float.parseFloat(request.getParameter("minprijs")) <= auto.getPrijs() && Float.parseFloat(request.getParameter("maxprijs")) >= auto.getPrijs()) {
                %>
                <div class="autokader">
                    <img src="<%= auto.getFoto() %>" alt="<%= auto.getMerk() + " " + auto.getType() %>">
                    <p class="merktype">
                        <%= auto.getMerk() + " " + auto.getType() %>
                    </p>
                    <p class="prijs">
                        <%= "&#8364; " + auto.getPrijsFormat() %>
                    </p>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
    </div>
</div>
</body>
</html>