<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feed</title>
<link rel="stylesheet" type="text/css"
	href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css"
	href="./Stacked/CSS/ContentBox.css">
<script src="Stacked/JS/Feed.js"></script>
</head>
<!-- Jan Holtmann -->
<body class=body>

	<p class=NameVersion>Stacked V0.8</p>
	<nav class=navList>
		<div>

			<table class=UserTopProfil>
				<tr>
					<th><img class=ProfilPicture
						src="./ProfilbildAuslesen?username=${Login.username}" width="50"
						height="50"> <!-- Profil Picture --></th>
					<th><p class=ProfilLink>${Login.username}</p></th>
				</tr>
			</table>
		</div>

		<div>
			<table class=Sidelinks>
				<tr>
					<th><form action="./FollowsVerwalten">
							<button type="submit" class=FunctionLinks>Freunde</button>
						</form></th>
				</tr>
				<tr>
					<th><a href="./AllePostsAusgeben"><button
								class=FunctionLinks>Feed</button></a></th>
				</tr>
				<tr>
					<th><a href="./InvestmentsAnzeigenServlet"><button
								class=FunctionLinks>Profil</button></a></th>
				</tr>
				<tr>
					<th><a href="Stacked/JSP/addInvestment.jsp"><button
								class=FunctionLinks>Investments</button></a></th>
				</tr>
				<tr>
					<th><a href="./Stacked/Index.html"><button
								class=FunctionLinks>Abmelden</button></a></th>
				</tr>
			</table>
		</div>
	</nav>

	<aside class=SelectedContent>
		<div class=feedBG>
			<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->

			<br>


			<div id="mehrPosts">

				<div class=divCenter>
					<p class="textColor proRequestBT">Dein Feed</p>
					<form class="form-posten" method="post" action="./Posten"
						enctype="multipart/form-data">
						<textarea class="Postfeld" id="nachricht" name="nachricht"
							maxlength="200" placeholder="irgendwas los in der Welt?" required></textarea>
						<div class="button-container">
							<label for="bild" class="picture-button">Bilder</label> <input
								class="image-input" type="file" name="bild" id="bild"
								accept="image/*">
							<button type="submit" class="classicBT">Posten</button>
						</div>

					</form>
					<br>
					<div>
						<table class="postActionTable">
							<tr>

								<td>
									<form id="freundeFeed" method="post"
										action="./AllePostsAusgeben">
										<input type="hidden" value=1 name="welcheSearch">
										<button id=friendPostBT type="submit" class="classicBT">Freunde
											Posts</button>
									</form>
								</td>

								<td>
									<form id="allgemeierFeed" method="post"
										action="./AllePostsAusgeben">
										<input type="hidden" value=0 name="welcheSearch">
										<button id=allgPostsBT type="submit" class="classicBT">Allgemeine
											Posts</button>
									</form>
								</td>


							</tr>
						</table>
					</div>
				</div>

				<br>


				<c:forEach var="post" items="${posts}">
					<div class="post postBG">


						<table class="InvestTable">
							<tr>
								<td><a
									href="./InvestmentsAnzeigenServlet?username=${post.username}"><button
											class=UserNameBT>${post.username}</button></a></td>
								<td class=postDeleteBT><c:if
										test="${post.username == Login.username}">
										<form class="delete" method="post" action="./PostLoeschen">
											<input type="hidden" name="id" value="${post.id}">
											<button class=classicBT type="submit">Löschen</button>
										</form>
									</c:if></td>
							</tr>
						</table>

						<div class="message">
							<p>${post.nachricht}</p>
						</div>


						<c:if test="${not empty post.bildname}">
							<div class=divCenter>
								<img class=postPicture src="./PostAuslesen?id=${post.id}">
							</div>
						</c:if>

						<table class="postActionTable">
							<tr>

								<td class=likeBT>
									<form method="post" action="./Liken">
										<input type="hidden" name="id" value="${post.id}">
										<button type="submit" class="classicBT">Like</button>
									</form>
								</td>
								<td><p>${post.anzahl_likes}</p></td>
								<td class=postDeleteBT>

									<form method="post" action="./EinPostAusgeben">
										<input type="hidden" name="id" value="${post.id}">
										<button type="submit" class="classicBT">Kommentieren</button>
									</form>
								</td>
							</tr>
						</table>

					</div>
				</c:forEach>
			</div>
			<div class=divCenter>
				<button class=classicBT id="mehrLaden">Mehr Laden</button>
			</div>

			<br>
		</div>

	</aside>
</body>
</html>