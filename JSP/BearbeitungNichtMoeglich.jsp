<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Jan Holtmann -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bearbeitung nicht möglich</title>
<link rel="stylesheet" type="text/css" href="../CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="../CSS/ContentBox.css">
<script src="../JS/ProfilBearbeiten.js"></script>
<script src="../JS/ButtonInJSP.js"></script>

</head>
<!-- Jan Holtmann -->
<body class="bodyMargin">

	<p class="NameVersion">Stacked V0.8</p>
	<nav class="navList">
		<div>

			<table class="UserTopProfil">
				<tr>
					<th><img class="ProfilPicture" alt="Profilbild"
						src="../../ProfilbildAuslesen?username=${Login.username}"></th>
					<th><p class="ProfilLink">${Login.username}</p></th>
				</tr>
			</table>
		</div>

		<div>
			<table class="Sidelinks">

				<tr>
					<th><button class="FunctionLinks" id="ProfilBT">Profil</button></th>
				</tr>
				<tr>
					<th><button class="FunctionLinks" id="editProfileBT">Profil
							bearbeiten</button></th>
				</tr>
				<tr>
					<th><button class="FunctionLinks" id="FeedBT">Feed</button></th>
				</tr>
				<tr>
					<th><button class="FunctionLinks" id="FreundeBT">Freunde</button></th>
				</tr>
				<tr>
					<th><button class="FunctionLinks" id="LogoutBT">Abmelden</button></th>
				</tr>

			</table>
		</div>
	</nav>

	<aside class="SelectedContent">
		<!-- Jan Holtmann -->
		<!-- Jonathan Vielwerth -->
		<div>
			<form class="TopTitle" method="post"
				action="../../ProfilBearbeitenServlet" enctype="multipart/form-data">
				<fieldset>
					<legend>Ihr neuer Nutzername ist leider schon vergeben</legend>
					<br>
					<div>
						<label for="username">Neuer Nutzername:</label> <input type="text"
							name="NeuerUsername" id="username" maxlength="30" />
					</div>
					<div>
						<label for="passwort">Neues Passwort:</label> <input
							type="password" name="passwort" id="passwort" maxlength="30" />
					</div>
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
					<div>
						<button class="classicBT proRequestBT" type="submit"
							id="ProfiAnfrageButton">Profi Anfrage stellen</button>
					</div>
				</form>
			</c:if>
		</div>
	</aside>
</body>
</html>
<!-- Jonathan Vielwerth -->