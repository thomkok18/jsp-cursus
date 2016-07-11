Graden g = new Graden();
String celsValue = "";
String fahrValue = "";
String warning = "";
//check of er op knop is geklikt
if (request.getParameter("knop") != null) {
  try {
    //er mag maar één input veld zijn ingevuld
    if (!request.getParameter("cels").equals("") 
     && !request.getParameter("fahr").equals("")) {
       warning = "Voer slechts &eacute;&eacute;n waarde in!";
    }
    //gebruiker heeft Celsius ingevoerd
    else if (!request.getParameter("cels").equals("")) {
      int fahr = g.naarFahr(request.getParameter("cels"));
      fahrValue += fahr;
    }
    //gebruiker heeft Fahrenheit ingevoerd
    else if (!request.getParameter("fahr").equals("")) {
      int cels = g.naarCels(request.getParameter("fahr"));
      celsValue += cels;
    }
  }
  //foute of geen invoer werpt Exception op
  catch(NumberFormatException e) {
    warning = "Voer een geheel getal in";
  }
}
        
<h1>Fahrenheit en Celsius omrekenen</h1>
<form action="index.jsp" method="get">
  <table id="graden">
    <tr>
      <th>Celsius</th>
      <th>Fahrenheit</th>
    </tr>
    <tr>
      <td><input type="text" name="cels" value="<%=celsValue%>"></td>
      <td><input type="text" name="fahr" value="<%=fahrValue%>"></td>
      <td><input type="submit" name="knop" value="Omrekenen"></td>
    </tr>
    
    <% if (request.getParameter("knop") != null) { %>
      <tr>
        <td colspan="2" class="fout"><%= warning %></td>
      </tr>
    <% } %>
  </table>

</form>

