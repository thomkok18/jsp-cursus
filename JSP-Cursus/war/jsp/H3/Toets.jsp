<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="H3.Auto"%>
<%@page import="H3.AutoLijst"%>
<%@page import="java.util.ArrayList"%>
<%@page import="static java.lang.System.out"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" " http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
ArrayList<String> merken = new ArrayList<String>();
AutoLijst autolijst = new AutoLijst();
ArrayList<Auto> lijst = autolijst.getLijst();
String fout = "";
			 
try {
	for (Auto auto : lijst) { %>
		<img src="<%out.print(auto.getFoto());%>" height="200" width="300"/><br>
		<% out.print(auto.getMerk()); %><br>
		<% out.print(auto.getType()); %><br>
		<% out.print(auto.getPrijsFormat()); %><br><%
	}	
}
					
catch (NumberFormatException e) {
	fout = "Je mag alleen (decimale) getallen invoeren";
}
		
%>
<form method="get">
	<table>
		<thead>
			<tr>
				<th colspan="4">Welkom</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div class="knopcontainer">
						<input type="submit" name="knop" value="Ok">
						<select name="merk" value="<%=merken%>">
							<option value="Alle merken">Alle Merken</option>
							<option value="Ford">Ford</option>
							<option value="Opel">Opel</option>
							<option value="Subaru">Subaru</option>
							<option value="Mercedes">Mercedes</option>
							<option value="Ferrari">Ferrari</option>
							<option value="Lotus">Lotus</option>
							<option value="Citroen">Citroen</option>
							<option value="Volvo">Volvo</option>
							<option value="Mini">Mini</option>
						</select>
					</div>
				</td>
			<tr>
				<td colspan="2"><input type="text" name="tekstvak1" value="1">
				</td>
				<td colspan="2"><input type="text" name="tekstvak2" value="">
				</td>
			</tr>
			<tr>
				<td colspan="4" class="fout"><%=fout%></td>
			</tr>
		</table>
	</form>
</body>
</html>