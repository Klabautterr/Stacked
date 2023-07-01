<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LayoutCopy</title>
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/ContentBox.css">
</head>
<!-- Jan Holtmann -->
<body class="bodyMargin">

<p class="NameVersion">Stacked V0.8</p>
<nav class="navList">
<div>

<table class="UserTopProfil">
<tr><th><img class="ProfilPicture" src="./ProfilbildAuslesen?username=${Login.username}"></th><th><p class="ProfilLink">${Login.username}</p></th></tr>
</table>
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
<div class="proRequestBT">
<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->
<h3>Diesen Leuten folgst du</h3>
	<table>
		<!-- Anfang ChatGPT -->
		<c:forEach var="aktuelleFollows" items="${follows}">
			<!-- Ende ChatGPT -->
			<tr>
				<td>
				<a href="./InvestmentsAnzeigenServlet?username=${aktuelleFollows.username}"><button class="UserNameBT">${aktuelleFollows.username}</button></a>
				</td>
				<!--  		<td>${aktuelleFollows.username}</td>-->
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followsButton"
									value="${aktuelleFollows.username}">
								<button class="classicBT" type="submit" id="button">Nicht mehr Folgen</button>
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
				<a href="./InvestmentsAnzeigenServlet?username=${aktuelleFollowerOhneFollow.username}"><button class="UserNameBT">${aktuelleFollowerOhneFollow.username}</button></a>
				</td>
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followerButton"
									value="${aktuelleFollowerOhneFollow.username}">
								<button class="classicBT" type="submit" id="button">Follower entfernen</button>
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
				<a href="./InvestmentsAnzeigenServlet?username=${aktuelleFollowerMitFollow.username}"><button class="UserNameBT">${aktuelleFollowerMitFollow.username}</button></a>
				</td>
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followerButton"
									value="${aktuelleFollowerMitFollow.username}">
								<button class="classicBT" type="submit" id="button">Follower entfernen</button>
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
								<button class="classicBT" type="submit" id="button">Ebenfalls folgen</button>
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
					<a href="./InvestmentsAnzeigenServlet?username=${user.username}"><button class="UserNameBT">${user.username}</button></a>
					</td>
					<!--  	<td>${user.username}</td>-->
					<td>
						<form method="post" action="./FollowHinzufuegen">
							<fieldset>
								<div>
									<input type="hidden" name="username2" value="${user.username}">
									<button class="classicBT" type="submit" id="button">Folgen</button>
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