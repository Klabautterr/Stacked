<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profil bearbeiten</title>
</head>
<body>

	<!-- Jonathan Vielwerth -->
	<center>
		<h1>
			<u><strong>Profil bearbeiten</strong></u>
		</h1>
	</center>



	<a href="../../InvestmentsAnzeigenServlet"> Zurück zum Profil </a>



	<form method="post" action="../../ProfilBearbeitenServlet"
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
		</fieldset>
		<div>
			<button type="submit" id="button">Änderungen speichern</button>
		</div>
	</form>
	<c:if test="${!Login.isProfi && !Login.offeneProfiAnfrage}">
		<form method="post" action="../../ProfiAnfrageStellen"
			id="profiAnfragenButton">
			<fieldset>
				<div>
					<button type="submit" id="button">Profi Anfrage stellen</button>
				</div>
			</fieldset>
		</form>
	</c:if>

	<!-- Jonathan Vielwerth -->

</body>
</html>