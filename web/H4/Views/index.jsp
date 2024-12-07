<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="../css/index.css">
    <title>JSP Cursus</title>
</head>
<body>
<main>
    <nav>
        <ul>
            <li><a href="index.jsp">Info</a></li>
            <li><a href="leden.jsp">Leden</a></li>
            <li><a href="teams.jsp">Teams</a></li>
        </ul>
        <script>
            if (window.location.pathname === "/jsp-cursus/H4/Views/index.jsp") {
                document.getElementsByTagName("li")[0].classList.add("li-active");
            } else if (window.location.pathname === "/jsp-cursus/H4/Views/leden.jsp") {
                document.getElementsByTagName("li")[1].classList.add("li-active");
            } else if (window.location.pathname === "/jsp-cursus/H4/Views/teams.jsp") {
                document.getElementsByTagName("li")[2].classList.add("li-active");
            }
        </script>
    </nav>
    <div style="padding:24px;">
        <img src="../images/sportLogo.png" alt="ROC-DEV logo">
        <p>Demo app sportvereniging (under construction). Kies een tab voor overzicht en beheer van leden en teams. Probeer gerust uit!</p>
    </div>
</main>
</body>
</html>