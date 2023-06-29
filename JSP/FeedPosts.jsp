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
</head>
<!-- Jan Holtmann -->
<body class=body>

<p class=NameVersion>Stacked V0.8</p>
<nav class=navList>
<div>

<table class=UserTopProfil>
<tr><th><img class=ProfilPicture src="../images/testprofile.jpeg" width="50" height="50"><!-- Profil Picture --></th><th><p class=ProfilLink>USERNAME</p></th></tr>
</table>
</div>

<div>
<table class=Sidelinks>
<tr><th><form action="../FollowsVerwalten"><button type="submit" class=FunctionLinks>Freunde</button></form></th></tr>
<tr><th><a href="../AllePostsAusgeben"><button class=FunctionLinks>Feed</button></a></th></tr>
<tr><th><a href="../Profil"><button class=FunctionLinks>Profil</button></a></th></tr>
<tr><th><a href="../InvestmentsAnzeigenServlet"><button class=FunctionLinks>Investments</button></a></th></tr>
<tr><th><a href="../JSP/Profi.jsp"><button class=FunctionLinks>Profi Bereich</button></a></th></tr>
<tr><th><a href="../Index.html"><button class=FunctionLinks>Abmelden</button></a></th></tr>
</table>
</div>
</nav>

<aside class=SelectedContent>
<div >
<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->

		<div id="mehrPosts" class="middle">
			
			<div class=TopTitle><p >Dein Feed</p></div>	
			
			
			
			<c:forEach var="post" items="${posts}">
				<div class="geposteter_Post divCenter">
					<div class="username">
						<a href="./InvestmentsAnzeigenServlet?username=${post.username}"><button class="UserNameBT">Feed</button></a>
					</div>
					<c:if test="${post.username == Login.username}">
						<form class="delete" method="post" action="./PostLoeschen">
							<input type="hidden" name="id" value="${post.id}">
							<button class=classicBT type="submit">Löschen</button>
						</form>
					</c:if>
					<div class="message">${post.nachricht}</div>


					<c:if test="${not empty post.bildname}">
						<img src="./PostAuslesen?id=${post.id}" width="400" height="150">
					</c:if>
					<div class="actions">

						<form method="post" action="./Liken">
							<input type="hidden" name="id" value="${post.id}">
							<button type="submit" class="like">Like</button>

							<p>${post.anzahl_likes}</p>


						</form>
						<div class="comment">
							<form method="post" action="./EinPostAusgeben">
								<input type="hidden" name="id" value="${post.id}">
								<button type="submit" class="comment">Kommentieren ?</button>


							</form>
						</div>
					</div>
				</div>
			</c:forEach>
				<div class=divCenter>
				<form method="post" action="./AllePostsAusgeben">
				<input type = "hidden" value = 1 name ="welcheSearch">
				<button class=classicBT type = "submit" class = "text-button">Lade Posts</button>
				</form>
				</div>
				
			
				<form class="formPost" method="post" action="./Posten"
				enctype="multipart/form-data">
				<div class=divCenter><textarea class="Postfeld" id="nachricht" name="nachricht" maxlength="200" placeholder="Irgendwas los in der Welt?" required></textarea></div>
				<div class="button-container divCenter">
					<label for="bild" class="picture-button">Bilder</label> <input
						class="image-input" type="file" name="bild" id="bild"
						accept="image/*">
					<button type="submit" class="text-button classicBT">Posten</button>
				</div>
				</form>

		</div>
		<div class=divCenter><button class=classicBT id="mehrLaden">Mehr Laden</button></div>

	<script src="Stacked/JS/Feed.js"></script>

</div>
</aside>

</body>
</html>