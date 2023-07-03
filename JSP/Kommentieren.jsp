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
<div class="feedBG" >
				<br>
				<br>
				<div class="textColor">
					
					
					
					<a class="UserNameBT mLeft" href="../../InvestmentsAnzeigenServlet?username=${post.username}">${post.username}</a>
					<br>
					<br>
					<div class="message">${post.nachricht}</div></td>
					
					
					<c:if test="${not empty post.bildname}">
						<img class="postPicture divCenter" src="../../PostAuslesen?id=${post.id}">
					</c:if>
				</div>
				
				<div class=divCenter>
						<textarea class="Commfeld" id="kommentar" name="kommentar"
						maxlength="200" placeholder="Was möchtest du den Kommentieren?"></textarea>
						<br>
						<button class=classicBT id="sendComment" class="text-button">Posten</button>
				</div>
				<br>
				
				
				<div class="Commfeld" id="newComms"></div>
				
				<div 
				class="Commfeld"
				id="loadComms"
				data-postID="${post.id}"
				data-loginUser="${Login.username}">
				</div>
				<br>
				<div class=divCenter>
				<button class=classicBT id="loadMoreComments">Mehr Laden</button>
				</div >
				
				<br>
					
				
</div>
</aside>

</body>
</html>