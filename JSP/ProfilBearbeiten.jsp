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
<!-- Jonathan Vielwerth -->
	
	<!-- <div class=TopTitle><p >Profil Bearbeiten</p></div> -->	



	<form class=TopTitle method="post" action="../../ProfilBearbeitenServlet"
		enctype="multipart/form-data">
		<fieldset>
			<legend>ProfilBearbeiten</legend>
			<br>
			<div>
				<label for="username">Neuer Nutzername:</label> <input type="text"
					name="NeuerUsername" id="username" />
			</div>
			<div>
				<label for="passwort">Neues Passwort:</label> <input type="password"
					name="passwort" id="passwort" />
			</div>
			<div>
				<label for="NewImage">Neues Bild:</label> <input type="file"
					name="NewImage" id="NewImage" accept="images/*" />
			</div>
			<div>
			<button class=classicBT type="submit" id="AenderungSpeichern">Änderungen
				speichern</button>
			</div>
		</fieldset>
		
	</form>

	<c:if test="${!Login.isProfi && !Login.offeneProfiAnfrage}">
		<form method="post" action="../../ProfiAnfrageStellen" id="profiAnfragenStellen">
				<div>
					<button class="classicBT proRequestBT" type="submit" id="ProfiAnfrageButton">Profi Anfrage stellen</button>
				</div>
		</form>
	</c:if>
	<!-- Jonathan Vielwerth -->
<script src="../JS/ProfilBearbeiten.js"></script>

</div>
</aside>

</body>
</html>