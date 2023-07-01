<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/ContentBox.css">
<meta charset="ISO-8859-1">
<!-- Jonathan Vielwerth -->

<title>Anlageoptionen</title>
</head>
<body class="outBG">


	<p class="NameVersion">Stacked V0.8</p>
	<br>
	<div class="divCenter">
	<div class="adminTop textColor divCenter"><p >Anlageoptionen</p></div>
	
	<div>
	<table class="textColor tableBorder InvestTable">
		<tr>
			<th>Aktienname</th>
			<th>Löschen</th>
		</tr>
		<c:forEach var="Aktie" items="${Aktien}">
			<tr>
			<td>${Aktie.name}</a></td>

				<td>
					<form method="post" action="./AnlageoptionLoeschen">
						<fieldset>
							<div>
								<input type="hidden" name="AktieLoeschen"
									value="${Aktie.name}">
								<button type="submit" id="button" class="classicBT">Löschen</button>
							</div>
						</fieldset>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<br>
	<div>
	<table class="textColor tableBorder InvestTable">
		<tr>
			<th>ETF Name</th>
			<th>Ablehnen</th>
		</tr>
		<c:forEach var="ETF" items="${ETFs}">
			<tr>
			<td>${ETF.name}</td>
				<td>
					<form method="post" action="./AnlageoptionLoeschen">
						<fieldset>
							<div>
								<input type="hidden" name="ETFLoeschen"
									value="${ETF.name}">
								<button type="submit" id="button" class="classicBT">Löschen</button>
							</div>
						</fieldset>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>	

	<div><a href="./Stacked/JSP/Admin.jsp"><button class="admAbmBT">Zurück</button></a></div>
</div>
</body>
<!-- Jonathan Vielwerth -->

</html>