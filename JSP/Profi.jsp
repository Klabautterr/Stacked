<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LayoutCopy</title>
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/ContentBox.css">
</head>
<!-- Jan Holtmann -->
<body class=body>

<p class=NameVersion>Stacked V0.8</p>
<nav class=navList>
<div>

<table class=UserTopProfil>
<tr><th><img class=ProfilPicture src="./ProfilbildAuslesen?username=${Login.username}" width="50" height="50"><!-- Profil Picture --></th><th><p class=ProfilLink>${Login.username}</p></th></tr>
</table>
</div>

<div>
<table class=Sidelinks>
<tr><th><form action="./FollowsVerwalten"><button type="submit" class=FunctionLinks>Freunde</button></form></th></tr>
<tr><th><a href="./AllePostsAusgeben"><button class=FunctionLinks>Feed</button></a></th></tr>
<tr><th><a href="./InvestmentsAnzeigenServlet"><button class=FunctionLinks>Profil</button></a></th></tr>
<tr><th><a href="Stacked/JSP/addInvestment.jsp"><button class=FunctionLinks>Investments</button></a></th></tr>
<tr><th><a href="./Stacked/Index.html"><button class=FunctionLinks>Abmelden</button></a></th></tr>
</table>
</div>
</nav>

<aside class=SelectedContent>
<div >
<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->

<table class=topTitleTable>
<tr><td>Profil</td><td><a href="./Stacked/JSP/ProfilBearbeiten.jsp"><button class=classicBT id=editProfileBT>Profil bearbeiten</button></a></td></tr>
</table>
	<br>
	<div>
		<h2>Herzlichen Glückwunsch du bist einer der krassesten</h2>
		
		<!-- Jonathan Vielwerth -->
	</div>

	<!-- Tobias Weiß HTML-Tabelle der Investments -->


	<div>
		<br>

		<fieldset>
			<legend>Deine Investments</legend>
			<table class=InvestTable>
				<tr><td>Stockname</td> <td>Anzahl</td> <td>BuyIn</td>
				<c:forEach var="asset" items="${AssetsAnzeigen}">
					<tr>
						<td>${asset.stockname}</td>
						<td>${asset.anzahl}</td>
						<td>${asset.buyin}</td>
						<td>
							<form action="./deleteInvestment" method="post">
								<input type="hidden" name="assetId" value="${asset.stockname}">
								<button type="submit" class=classicBT>Löschen</button>
							</form>
						 </td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
	</div>

	<div class=divCenter>
		<a href="Stacked/JSP/addInvestment.jsp"><button class=classicBT id=addInvest>Aktien hinzufügen</button></a>
	</div>

<div class=divCenter>
		<a href="Stacked/JSP/addETF.jsp"><button class=classicBT id=addETF>ETF hinzufügen</button></a>
	</div>

</div>



</aside>

</body>
</html>




