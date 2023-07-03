<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freunde Verwalten</title>
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/ContentBox.css">
<script src="./Stacked/JS/ButtonInServlet.js"></script>
</head>
<!-- Jan Holtmann -->
<body class="bodyMargin">

<p class="NameVersion">Stacked V0.8</p>
<nav class="navList">
<div>

<table class="UserTopProfil">
<tr><th><img class="ProfilPicture" alt="Profilbild" src="./ProfilbildAuslesen?username=${Login.username}"></th><th><p class="ProfilLink">${Login.username}</p></th></tr>
</table>
</div>

<div>
<table class="Sidelinks">

<tr><th><button class="FunctionLinks" id="ProfilBT">Profil</button></th></tr>
<tr><th><button class="FunctionLinks" id="editProfileBT">Profil bearbeiten</button></th></tr>
<tr><th><button class="FunctionLinks" id="FeedBT">Feed</button></th></tr>
<tr><th><button class="FunctionLinks" id="FreundeBT">Freunde</button></th></tr>
<tr><th><button class="FunctionLinks" id="LogoutBT">Abmelden</button></th></tr>

</table>
</div>
</nav>

<aside class="SelectedContent">
<div class="proRequestBT">
<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->
<h3>Diesen Leuten folgst du</h3>
	<table>
		<!-- Anfang ChatGPT -->
		<c:forEach var="aktuelleFollows" items="${follows}">
			<!-- Ende ChatGPT -->
			<tr>
				<td>
				<a class="textColor" href="./InvestmentsAnzeigenServlet?username=${aktuelleFollows.username}">${aktuelleFollows.username}</a>
				</td>
				<!--  		<td>${aktuelleFollows.username}</td>-->
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followsButton"
									value="${aktuelleFollows.username}">
								<button class="classicBT" type="submit" id="button1">Nicht mehr Folgen</button>
							</div>
						</fieldset>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<h3>Diese Leute folgen dir</h3>
	<table>
		<c:forEach var="aktuelleFollowerOhneFollow" items="${followerOhneFollow}">
			<tr>
				<td>
				<a class="textColor" href="./InvestmentsAnzeigenServlet?username=${aktuelleFollowerOhneFollow.username}">${aktuelleFollowerOhneFollow.username}</a>
				</td>
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followerButton"
									value="${aktuelleFollowerOhneFollow.username}">
								<button class="classicBT" type="submit" id="button2">Follower entfernen</button>
							</div>
						</fieldset>
					</form>
				</td>
				<td>
				</td>
		</c:forEach>
	</table>
	<table>
		<c:forEach var="aktuelleFollowerMitFollow" items="${followerMitFollow}">
			<tr>
				<td>
				<a class="textColor" href="./InvestmentsAnzeigenServlet?username=${aktuelleFollowerMitFollow.username}">${aktuelleFollowerMitFollow.username}</a>
				</td>
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followerButton"
									value="${aktuelleFollowerMitFollow.username}">
								<button class="classicBT" type="submit" id="button3">Follower entfernen</button>
							</div>
						</fieldset>
					</form>
				</td>
				<td>
					<form method="post" action="./FollowHinzufuegen">
						<fieldset>
							<div>
								<input type="hidden" name="username2"
									value="${aktuelleFollowerMitFollow.username}">
								<button class="classicBT" type="submit" id="button4">Ebenfalls folgen</button>
							</div>
						</fieldset>
					</form>
				</td>
		</c:forEach>
	</table>



	<h3>Suchst du neue Freunde?</h3>


	<form method="post" action="./UserSuchen">
		<fieldset>
			<legend>Freunde Suchen</legend>
			<div>
				<label for="username">Username:</label> <input type="text"
					name="username" id="username" maxlength="30" required />
			</div>
			<div>
				<button class="classicBT" type="submit" id="suche">Suchen</button>
			</div>
		</fieldset>
	</form>



	<div id="tabelle">

		<table>
			<c:forEach var="user" items="${userSuche}">
				<tr>
					<td>
					<a class="textColor" href="./InvestmentsAnzeigenServlet?username=${user.username}">${user.username}</a>
					</td>
					<!--  	<td>${user.username}</td>-->
					<td>
						<form method="post" action="./FollowHinzufuegen">
							<fieldset>
								<div>
									<input type="hidden" name="username2" value="${user.username}">
									<button class="classicBT" type="submit" id="button5">Folgen</button>
								</div>
							</fieldset>
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>



</div>
</aside>

</body>
</html>