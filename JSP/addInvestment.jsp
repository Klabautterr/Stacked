<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stacked</title>
</head>
<body>
<!-- Tobias Weiß Neue Investments hinzufügen -->
	<h1>Füge Investments deinem Portfolio hinzu</h1>

	<a href="./Profil.jsp"> Zurück zum Profil </a>


	<form method="post" action="../../InvestmentsServlet">
		<label for="stockname">Neues Investment eingeben:</label>
		<input type="text" name="stockname" id="stockname">
		<label for="amountOfStock">Anzahl an Anteilen eingeben:</label>
		<input type="number" name="amountOfStock" id="amountOfStock">
		<label for="buyIn">Buy-In eingeben:</label>
		<input type="number" name="buyIn" id="buyIn">
	
	<div>
		<button type="submit" id="newInvestmentButton">Neues Investment dem Portfolio hinzufügen</button>
	</div>
	</form>
	
	
<!-- Tobias Weiß -->

<!-- Befehl um Datenbank zu erstellen: Create Table create table thidb.Investments (
	username varchar(100) primary key,
	stockname varchar(100),
	anzahl int,
	buyin int

); -->
</body>
</html>