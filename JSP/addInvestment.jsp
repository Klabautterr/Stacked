<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stacked</title>
</head>
<body>
	<!-- Tobias Wei� Neue Investments hinzuf�gen -->
	<h1>F�ge Investments deinem Portfolio hinzu</h1>

	<!-- <a href="./Profil.jsp"> Zur�ck zum Profil </a> -->

	<form action="../../InvestmentsAnzeigenServlet" method="post">
		<button type="submit">Zur�ck zum Profil</button>
	</form>
	
	<form method="post" action="../../InvestmentsServlet"> 
	
		<label for="stockname">W�hlen Sie eine Aktien aus:</label>
		<select multiple name="stockname" size="5" required >
			<option value="Apple">Apple</option>
			<option value="AT&T">AT&T</option>
			<option value="Amazon">Amazon</option>
			<option value="Alphabet">Alphabet</option>
			<option value="BlackRock">BlackRock</option>
		</select>
		<label for="amountOfStock">Anzahl an Anteilen eingeben:</label> 
		<input type="number" name="amountOfStock" id="amountOfStock" required> 
		<label	for="buyIn">Buy-In eingeben:</label> 
		<input type="number" name="buyIn" id="buyIn" required>

		<div>
			<button type="submit" id="newInvestmentButton">Neues
				Investment dem Portfolio hinzuf�gen</button>
		</div>
	</form>


	<!-- Tobias Wei� -->

	<!-- Befehl um Datenbank zu erstellen: Create Table create table thidb.Investments (
	username varchar(100) primary key,
	stockname varchar(100),
	anzahl int,
	buyin int

); -->
</body>
</html>