<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LayoutCopy</title>
<link rel="stylesheet" type="text/css" href="../CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="../CSS/ContentBox.css">
<script src="../JS/auswahlListeInvest.js"></script>
</head>
<!-- Jan Holtmann -->
<body class="body">

<p class="NameVersion">Stacked V0.8</p>
<nav class="navList">
<div>

<table class="UserTopProfil">
<tr><th><img class="ProfilPicture" src="../../ProfilbildAuslesen?username=${Login.username}"></th><th><p class="ProfilLink">${Login.username}</p></th></tr>
</table>
</div>

<div>
<table class="Sidelinks">

<tr><th><a href="./InvestmentsAnzeigenServlet"><button class="FunctionLinks">Profil</button></a></th></tr>
<tr><th><a href="./Stacked/JSP/ProfilBearbeiten.jsp"><button class="classicBT" id="editProfileBT">Profil bearbeiten</button></a></th></tr>
<tr><th><a href="./AllePostsAusgeben"><button class="FunctionLinks">Feed</button></a></th></tr>
<tr><th><form action="./FollowsVerwalten"><button type="submit" class="FunctionLinks">Freunde</button></form></th></tr>
<tr><th><a href="./Stacked/Index.html"><button class="FunctionLinks">Abmelden</button></a></th></tr>

</table>
</div>
</nav>

<aside class="SelectedContent">
<div >
<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->

<!-- Tobias Weiß Neue Investments hinzufügen -->
	<h1 class="proRequestBT">Füge Investments deinem Portfolio hinzu</h1>
	
	<form class="proRequestBT" method="post" action="../../InvestmentsServlet"> 
	
		<label for="stockname">Wählen Sie eine Aktien aus:</label>
		<div>
		
			<Button class="classicBT" id= "stockname1">Auswahlliste Laden</Button>
		
		</div>
					<div id="stockname2"></div>
		<div class="mTop">
		<label for="amountOfStock">Anzahl an Anteilen eingeben:</label>
		<input type="number" name="amountOfStock" id="amountOfStock" min="0" required>
		</div>
		<div class="mTop">
		<label for="buyIn">Buy-In eingeben:</label> 
		<input type="number" name="buyIn" id="buyIn" min="0" required>
		</div>
		<div>
			<button class="classicBT" type="submit" id="newInvestmentButton">Neues
				Investment dem Portfolio hinzufügen</button>
		</div>
	</form>

</div>
</aside>

</body>
</html>