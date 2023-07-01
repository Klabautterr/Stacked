<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stacked</title>
<script src="../JS/auswahlListeETF.js"></script>
</head>
<body>
	<!-- Tobias Wei� Neue Investments hinzuf�gen -->
	<h1>F�ge Investments deinem Portfolio hinzu</h1>

	<form action="../../InvestmentsAnzeigenServlet" method="post">
		<button type="submit">Zur�ck zum Profil</button>
	</form>
	
	<form method="post" action="../../InvestmentsServlet"> 
	<table>
	<tr>
	<td>
	<label for="stockname">W�hlen Sie ein ETF aus:</label>
	</td>
	<td>
		<div>
		
			<Button id= "stockname1">Auswahlliste Laden</Button>
		
	</div>
		
	</td>
	<td>
		<div id="stockname2"></div>
	</td>
	<td>
		<label for="amountOfStock">Anzahl an Anteilen eingeben:</label>
	</td>
	<td> 
		<input type="number" name="amountOfStock" id="amountOfStock" min="0" required>
	</td>
	<td> 
		<label	for="buyIn">Buy-In eingeben:</label>
	</td>
	<td> 
		<input type="number" name="buyIn" id="buyIn" min="0" required>
	</td>
		<div>
			<button type="button" id="newInvestmentButton">Neues
				Investment dem Portfolio hinzuf�gen</button>
		</div>
		</tr>
		</table>
		
	</form>
	
	
	

	
	<!-- Tobias Wei� -->

</body>
</html>