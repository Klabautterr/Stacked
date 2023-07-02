<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="../CSS/ContentBox.css">
<script src="../JS/ButtonAdminJSP.js"></script>

</head>
<!-- Jonathan Vielwerth -->
<body class="outBG textColor">

	<p class="NameVersion">Stacked V0.8</p>
	<br>
	<div class="adminTop textColor divCenter">
		<p>Neue Anlageoptionen hinzufügen</p>
	</div>

	<form method="post" action="../../AnlageoptionHinzufuegenServlet">
		<fieldset>
			<legend>Neue Aktie hinzufügen</legend>

			<label for="land">Land:</label> <select multiple name="land" size="3"
				required>
				<option value="Deutschland">Deutschland</option>
				<option value="USA">USA</option>
				<option value="China">China</option>
			</select> <label for="branche">Branche:</label> <select multiple
				name="branche" size="5" required>
				<option value="Technologie">Technologie</option>
				<option value="Finanzen">Finanzen</option>
				<option value="Industrie">Industrie</option>
				<option value="Pharmazie">Pharmazie</option>
				<option value="Automobil">Automobil</option>
			</select> <label for="aktienName">Name:</label> <input type="text"
				name="aktienName" id="aktienName" maxlength="30"/> <label for="aktienPreis">Preis:</label>
			<input type="number" name="aktienPreis" id="aktienPreis" required">
			<input type="hidden" name="aktienBT" value="gedrueckt">

			<div>
				<button type="submit" id="aktieAnlegen" class="classicBT">Neue
					Aktie hinzufügen</button>
			</div>
		</fieldset>
	</form>
	<br>
	<form method="post" action="../../AnlageoptionHinzufuegenServlet">
		<fieldset>
			<legend>Neuen ETF hinzufügen</legend>

			<label for="etfName">Name:</label> <input type="text" name="etfName"
				id="etfName" maxlength="30"/> <label for="etfPreis">Preis:</label> <input
				type="number" name="etfPreis" id="etfPreis" required> <input
				type="hidden" name="aktienBT" value="nichtgedrueckt">
			<div>
				<button type="submit" id="etfAnlegen" class="classicBT">Neuen
					ETF hinzufügen</button>
			</div>
		</fieldset>
	</form>

	<div class="divCenter">
		<button class="admAbmBT" id="ZurueckBT">Zurück</button>
	</div>
	<!-- Jonathan Vielwerth -->

</body>
</html>