<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profil</title>
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/ContentBox.css">
<script src="./Stacked/JS/ButtonInServlet.js"></script>
<script src="./Stacked/JS/ProfilButton.js"></script>
</head>
<!-- Jan Holtmann -->
<body class="bodyMargin">

<p class="NameVersion">Stacked V0.8</p>
<nav class="navList">
<div>

<table class="UserTopProfil">
<tr><th><img class="ProfilPicture" alt="Profilbild" src="./ProfilbildAuslesen?username=${Login.username}"></th><th><p class="ProfilLink">${Login.username}</p></th></tr>
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

<table class="topTitleTable">
<tr><td>Profil</td></tr>
</table>
	<br>
	

	<!-- Tobias Weiß -->


	<div>
		<br>

		<fieldset class="InvestTable">
			<legend>Deine Investments</legend>
			<table class="InvestTable">
			<tr><td>Stockname</td> <td>Anzahl</td> <td>letzter BuyIn</td><td></td>
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
		<button class="classicBT" id="addETF">Investment hinzufügen</button>
	</div>


</div>

<!-- Tobias Weiß -->

</aside>

</body>
</html>