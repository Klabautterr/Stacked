<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Follow Profil</title>
</head>
<body>

	<!-- Jonathan Vielwerth -->
	<center>
		<h1>
			<u><strong>Profil</strong></u>
		</h1>
	</center>

	<div>
		<table>
			<tr>
				<td rowspan="2"><img
					src="./ProfilbildAuslesen?username=${FollowUser}" width="100"
					height="100"></td>
				<td>${FollowUser}</td>
			</tr>
		</table>
		<form action="./AllePostsAusgeben" method="post">
			<button type="submit">Zum Feed</button>
		</form>
		<form action="./FollowsVerwalten" method="post">
			<button type="submit">Zurück zu Follows verwalten</button>
		</form>
		<form action="./InvestmentsAnzeigenServlet" method="post">
			<button type="submit">Zurück zu deinem Profil</button>
		</form>

		<!-- Jonathan Vielwerth -->
	</div>

	<!-- Tobias Weiß HTML-Tabelle der Investments -->


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

	<!-- Tobias Weiß -->



</body>
</html>