<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LayoutCopy</title>
<link rel="stylesheet" type="text/css"
	href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css"
	href="./Stacked/CSS/ContentBox.css">
	<script src="./Stacked/JS/ButtonInServlet.js"></script>
	
</head>
<!-- Jan Holtmann -->
<body class="bodyMargin">

<p class="NameVersion">Stacked V0.8</p>
<nav class="navList">
<div>

<table class="UserTopProfil">
<tr><th><img class="ProfilPicture" src="./ProfilbildAuslesen?username=${Login.username}"></th><th><p class="ProfilLink">${Login.username}</p></th></tr>
</table>
</div>

<div>
<table class="Sidelinks">

<tr><th><button class="FunctionLinks" id="ProfilBT">Profil</button></th></tr>
<tr><th><button class="FunctionLinks" id="editProfileBT">Profil bearbeiten</button></th></tr>
<tr><th><button class="FunctionLinks" id="FeedBT">Feed</button></th></tr>
<tr><th><button class="FunctionLinks" id="FreundeBT">Freunde</button></th></tr>
<tr><th><button class="FunctionLinks" id="LogoutBT">Abmelden</button></th></tr>

</table>
</div>
</nav>

<aside class="SelectedContent">
<div >
<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->

<table class="topTitleTable">
<tr><td>Profil</td></tr>
</table>
	<br>
	<div>
		<h2>Du Profi bist 👍</h2>
		
		<!-- Jonathan Vielwerth -->
	</div>

				<!-- Jonathan Vielwerth -->
			</div>

			<!-- Tobias Weiß HTML-Tabelle der Investments -->


		<fieldset class="InvestTable">
			<legend>Deine Investments</legend>
			<table class="InvestTable">
				<tr><td>Stockname</td> <td>Anzahl</td> <td>BuyIn</td>
				<c:forEach var="asset" items="${AssetsAnzeigen}">
					<tr>
						<td>${asset.stockname}</td>
						<td>${asset.anzahl}</td>
						<td>${asset.buyin}</td>
						<td>
							<form action="./deleteInvestment" method="post">
								<input type="hidden" name="assetId" value="${asset.stockname}">
								<button type="submit" class="classicBT">Löschen</button>
							</form>
						 </td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
	</div>

	<div class="divCenter">
		<a href="Stacked/JSP/addInvestment.jsp"><button class="classicBT" id="addInvest">Aktien hinzufügen</button></a>
	</div>

<div class="divCenter">
		<a href="Stacked/JSP/addETF.jsp"><button class="classicBT" id="addETF">ETF hinzufügen</button></a>
	</div>

			<div class=divCenter>
				<a href="Stacked/JSP/addETF.jsp"><button class=classicBT
						id=addETF>ETF hinzufügen</button></a>
			</div>

		</div>

			<div>
				<table>
					<tr>
					<td>Diversifizierung nach Ländern</td>
					</tr>
					<tr>
					
					</tr>
				</table>
			</div>



	</aside>

</body>
</html>




