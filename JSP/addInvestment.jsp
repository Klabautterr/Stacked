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

	<a href="./Profil.jsp"> Zur�ck zum Profil </a>


	<form method="post" action="../../InvestmentsServlet">
		<label for="investment">Neues Investment eingeben:</label>
		<input type="text" name="Investment" id="investment" required>
		<label for="amountOfStock">Anzahl an Anteilen eingeben:</label>
		<input type="number" name="amountOfStock" id="amountOfStock">
	</form>
	
	<div>
		<button type="submit" id="newInvestmentButton">Neues Investment dem Portfolio hinzuf�gen</button>
	</div>
<!-- Tobias Wei� -->
</body>
</html>