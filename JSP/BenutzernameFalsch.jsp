<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Startseite</title>
</head>
<body>
	<!-- Jonathan Vielwerth -->
	<div align="center">

		<h1>
			<u><strong>Stacked</strong></u>
		</h1>
	</div>

	<br>
	<div align="center">
		<img src="../images/Logo.jpg" width="200" height="200" alt="Logo">
	</div>

	<h1>
		<u><strong>Es gibt kein Profil mit diesem Benutzername</strong></u>
	</h1>
	<form method="post" action="../../LoginServlet">
		<fieldset>
			<legend>Login</legend>
			<div>
				<label for="username">Username:</label> <input type="text"
					name="username" id="username" required />
			</div>
			<div>
				<label for="passwort">Passwort:</label> <input type="password"
					name="passwort" id="passwort" required />
			</div>
			<div>
				<button type="submit" id="button">Einloggen</button>
			</div>
			<!--   <br> Email:
	<input type="email" name="email" size="20" maxlength="20">
	<br> Password:
	<input type="password" size="20" maxlength="20">
	<br>
	<a href="./html/Profil.html"><button>Anmelden</button></a>
	<br>
	<a href="./html/Registrierung.html"> Noch keinen Account?</a>
	<br>
	-->
		</fieldset>
	</form>
	<br>
	<a href="../html/Registrierung.html"> Noch keinen Account?</a>
	<br>

	<!-- Jonathan Vielwerth -->

</body>
</html>