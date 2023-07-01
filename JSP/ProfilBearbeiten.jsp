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
<script src="../JS/ProfilBearbeiten.js"></script>
</head>
<!-- Jan Holtmann -->
<body class="bodyMargin">

<p class="NameVersion">Stacked V0.8</p>
<nav class="navList">
<div>

<table class="UserTopProfil">
<tr><th><img class="ProfilPicture" src="../images/testprofile.jpeg"></th><th><p class="ProfilLink">USERNAME</p></th></tr></table>
</div>

<div>
<table class="Sidelinks">

<tr><th><a href="./InvestmentsAnzeigenServlet"><button class="FunctionLinks">Profil</button></a></th></tr>
<tr><th><a href="./Stacked/JSP/ProfilBearbeiten.jsp"><button class="classicBT" id="editProfileBT">Profil bearbeiten</button></a></th></tr>
<tr><th><a href="./AllePostsAusgeben"><button class="FunctionLinks">Feed</button></a></th></tr>
<tr><th><a href="./FollowsVerwalten"><button class="FunctionLinks">Freunde</button></a></th></tr>
<tr><th><a href="./Stacked/Index.html"><button class="FunctionLinks">Abmelden</button></a></th></tr>

</table>
</div>
</nav>

	<aside class="SelectedContent">
		<div>
			<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->
			<!-- Jonathan Vielwerth -->

			<form class="TopTitle" method="post"
				action="../../ProfilBearbeitenServlet" enctype="multipart/form-data">
				<fieldset>
					<legend>ProfilBearbeiten</legend>
					<br>
					<div>
						<label for="username">Neuer Nutzername:</label> <input type="text"
							name="NeuerUsername" id="username" maxlength="30" />
					</div>
					<br>
					<div>
						<label for="passwort">Neues Passwort:</label> <input
							type="password" name="passwort" id="passwort" maxlength="30" />
					</div>
					<br>
					<div>
						<label for="NewImage">Neues Bild:</label> <input type="file"
							name="NewImage" id="NewImage" accept="images/*" />
					</div>
					<div>
						<button class="classicBT" type="submit" id="AenderungSpeichern">Änderungen
							speichern</button>
					</div>
				</fieldset>

			</form>

			<c:if test="${!Login.isProfi && !Login.offeneProfiAnfrage}">
				<form method="post" action="../../ProfiAnfrageStellen"
					id="profiAnfragenStellen">
					<fieldset>

						<legend>Profi Anfrage Stellen</legend>

						<div>
							<button class="classicBT proRequestBT" type="submit"
								id="ProfiAnfrageButton">Anfrage abschicken</button>
						</div>
					</fieldset>

				</form>
			</c:if>
			<!-- Jonathan Vielwerth -->


		</div>
	</aside>

</body>
</html>