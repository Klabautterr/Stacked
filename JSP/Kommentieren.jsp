<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Jan Holtmann -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LayoutCopy</title>
<link rel="stylesheet" type="text/css" href="../CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="../CSS/ContentBox.css">
<script src="../JS/Comments.js"></script>
<script src="../JS/ButtonInJSP.js"></script>
</head>
<body class="bodyMargin">

<p class="NameVersion">Stacked V0.8</p>
<nav class="navList">
<div>

<table class="UserTopProfil">
<tr><th><img class="ProfilPicture" alt="Profilbild" src="../../ProfilbildAuslesen?username=${Login.username}"></th><th><p class="ProfilLink">${Login.username}</p></th></tr>
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
<div class="feedBG" >
				<br>
				<br>
				<div class="textColor">
					
					
					
					<a class="textColor mLeft" href="../../InvestmentsAnzeigenServlet?username=${post.username}">${post.username}</a>
					<br>
					<br>
					<div class="message">${post.nachricht}</div>
					<br>
					<div class=divCenter>
					<c:if test="${not empty post.bildname}">
						<img alt="Post-Bild" class="postPicture" src="../../PostAuslesen?id=${post.id}">
					</c:if>
					</div>
					
				</div>
				
				<div class=divCenter>
						<textarea class="Commfeld" id="kommentar" name="kommentar"
						maxlength="200" placeholder="Was möchtest du den Kommentieren?"></textarea>
						<br>
						<button class="classicBT text-button" id="sendComment">Posten</button>
				</div>
				<br>
				
				
				<div class="Commfeld" id="newComms"></div>
				
				<!-- https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes -->
				<div 
				class="Commfeld"
				id="loadComms"
				data-postID="${post.id}"
				data-loginUser="${Login.username}">
				</div>
				<!-- https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes -->
				<br>
				<div class=divCenter>
				<button class=classicBT id="loadMoreComments">Mehr Laden</button>
				</div >
				<br>
					
				
</div>
</aside>

</body>
</html>