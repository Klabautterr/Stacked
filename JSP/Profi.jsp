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
	<h2>Herzlichen Gl�ckwunsch du bist einer der krassesten Investment
		Kings</h2>
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
		<form action="../../FollowsVerwalten">
			<button type="submit">Follows verwalten</button>
		</form>
		<br> <a href="../Index.html">Abmelden</a>
		<!-- Jonathan Vielwerth -->
	</div>

	<!-- Tobias Wei� HTML-Tabelle der Investments -->

	<div>
		<br>

		<fieldset>
			<legend>Deine Investments</legend>
			<table>
				<c:forEach var="asset" items="${AssetsAnzeigen}">
					<tr>
						<td>${asset.stockname}</td>
						<td>${asset.anzahl}</td>
						<td>${asset.buyin}</td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
	<!--  	<form method="post" action="./InvestmentsAnzeigenServlet">
			<button type="submit">Investments laden</button>
		</form>-->
	</div>

	<div>
		<a href="Stacked/JSP/addInvestment.jsp">Investment hinzuf�gen</a>
	</div>
	<!-- Tobias Wei� -->


</body>
</html>