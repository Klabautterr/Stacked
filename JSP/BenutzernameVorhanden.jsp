<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrieren</title>
</head>
<body>

	<!-- Jonathan Vielwerth -->
	<center>
		<h1>
			<u><strong>Der Benutzername ist leider schon vergeben</strong></u>
		</h1>
	</center>


	</select>

	<form method="post" action="../../RegistrierungServlet" 
			enctype="multipart/form-data">
		<fieldset>
			<legend>Registrierung</legend>
			<div>
				<label for="username">Benutzername:</label> <input type="text"
					name="username" id="username" required />
			</div>
			<div>
				<label for="passwort">Passwort:</label> <input type="password"
					name="passwort" id="passwort" required />
			</div>
			<div>
				<label for="userImage">Bild:</label> <input type="file"
					name="userImage" id="userImage" accept="images/*" required />
			</div>

			<!--  		<div>
				<label for="prodtime">P.-Zeit (hh:mm):</label>
				<input type="time" name="prodtime" id="prodtime" required/>
			</div>
			-->
			<div>
				<button type="submit" id="button">Registrieren</button>
			</div>
		</fieldset>
	</form>
	<!-- 	<br>
	<br> Vorname:
	<input type="text" name="vorname" size="30" maxlength="40">
	<br> Nachname:
	<input type="text" name="nachname" size="30" maxlength="40">
	<br> Email:
	<input type="email" name="email" size="20" maxlength="20">
	<br> Password:
	<input type="password" size="20" maxlength="20">
	<br>
	<button type="button">Dummy Button</button>
	<br>
	<a href="../Index.html">Zur�ck zur Anmeldung</a>
	
	<!-- Jonathan Vielwerth -->
	<br>
	<a href="../Index.html"> Doch einen Account?</a>
	<br>
</body>
	<!-- Jonathan Vielwerth -->

</html>