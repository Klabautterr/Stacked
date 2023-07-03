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
<script src="../JS/Comments.js"></script>
</head>
<!-- Jan Holtmann -->
<body class="bodyMargin">

<p class="NameVersion">Stacked V0.8</p>
<nav class="navList">
<div>

<table class="UserTopProfil">
<tr><th><img class="ProfilPicture" src="../../ProfilbildAuslesen?username=${Login.username}"></th><th><p class="ProfilLink">${Login.username}</p></th></tr>
</table>
</div>

<div>
<table class="Sidelinks">

<tr><th><a href="../../InvestmentsAnzeigenServlet"><button class="FunctionLinks">Profil</button></a></th></tr>
<tr><th><a href="./ProfilBearbeiten.jsp"><button class="FunctionLinks" id="editProfileBT">Profil bearbeiten</button></a></th></tr>
<tr><th><a href="../../AllePostsAusgeben"><button class="FunctionLinks">Feed</button></a></th></tr>
<tr><th><a href="../../FollowsVerwalten"><button class="FunctionLinks">Freunde</button></a></th></tr>
<tr><th><a href="../Index.html"><button class="FunctionLinks">Abmelden</button></a></th></tr>

</table>
</div>
</nav>

<aside class="SelectedContent">
<div >
				<div class="geposteter_Post">

					<div class="username">
						<a href="./InvestmentsAnzeigenServlet?username=${post.username}">${post.username}</a>
					</div>

					<div class="message">${post.nachricht}</div>

					<c:if test="${not empty post.bildname}">
						<img class=postPicture src="./PostAuslesen?id=${post.id}">
					</c:if>
				</div>
				
				<div 
				id="newComms"
				data-commentID="${formKommentar.id}"
				data-commentUsername="${formKommentar.username}"
				data-commentText="${formKommentar.kommentar}">
				</div>
				
				<div 
				id="loadComms"
				data-postID="${post.id}"
				data-loginUser="${Login.username}">
				</div>
				
				<div>
				<button id="loadMoreComments">Mehr Laden</button>
				</div>
				<form method="post" action="../../Kommentieren">
					<textarea class="Postfeld" id="kommentar" name="kommentar"
						maxlength="200" placeholder="Was möchtest du den Kommentieren?"
						required></textarea>
					<input type="hidden" value="${post.id}" name="id"></input>
					<div class="button-container">

						<button id="sendComment" class="text-button">Posten</button>
					</div>
				</form>
</div>
</aside>

</body>
</html>