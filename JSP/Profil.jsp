<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- Jonathan Vielwerth -->
	<center>
		<h1>
			<u><strong>Profil</strong></u>
		</h1>
	</center>

	<br>
	<a href="./ProfilBearbeiten.jsp">Profil bearbeiten</a>
	<div>
		<table>
			<tr>
				<td rowspan="2"><img
					src="../../ProfilbildAuslesen?username=${Login.username}"
					width="100" height="100"></td>
				<td>${Login.username}</td>
			</tr>
		</table>
		<form action="../../AllePostsAusgeben" method="post">
			<button type="submit">Zu deinem Feed</button>
		</form>
	<br>
	<a href="../Index.html">Abmelden</a>
	<!-- Jonathan Vielwerth -->
	</div>

	<!-- Tobias Weiß HTML-Tabelle der Investments -->


	<div>
		<br>
		<fieldset>
			<legend>
				<strong>Investments</strong>
			</legend>

			<br>

			<table>
				<tr>
					<td>stockname: ${Assets.stockname}</td>
					<td>amount: ${Assets.anzahl}</td> 
					<td>buyin: ${Assets.buyin}</td> 
				</tr>
				<tr>
					<td>stockname: ${Assets.stockname}</td>
					<td>Beispiel-DailyTrend in %</td>
				</tr>
			</table>
	</div>

	<div>
		<a href="./addInvestment.jsp">Investment hinzufügen</a>
	</div>
	<!-- Tobias Weiß -->



</body>
</html>