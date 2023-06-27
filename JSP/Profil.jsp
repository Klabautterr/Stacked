<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<a href="Stacked/JSP/ProfilBearbeiten.jsp">Profil bearbeiten</a>
	<div>
		<table>
			<tr>
				<td rowspan="2"><img
					src="./ProfilbildAuslesen?username=${Login.username}"
					//
					width="100" height="100"></td>
				<td>${Login.username}</td>
			</tr>
		</table>
		<form action="./AllePostsAusgeben" method="post">
			<button type="submit">Zu deinem Feed</button>
		</form>
		
		<form action="./FollowsVerwalten">
			<button type="submit">Follows verwalten</button>
		</form>
		
		<br> <a href="Stacked/Index.html">Abmelden</a>
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

	<div>
		<a href="Stacked/JSP/addInvestment.jsp">Investment hinzufügen</a>
	</div>
	<!-- Tobias Weiß -->



</body>
</html>