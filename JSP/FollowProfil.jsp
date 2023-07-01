<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body class=body>

<p class=NameVersion>Stacked V0.8</p>
<nav class=navList>
<div>

<table class=UserTopProfil>
<tr><th><img class=ProfilPicture src="./ProfilbildAuslesen?username=${Login.username}" width="50" height="50"><!-- Profil Picture --></th><th><p class=ProfilLink>${Login.username}</p></th></tr>
</table>
</div>

<div>
<table class=Sidelinks>
<tr><th><form action="./FollowsVerwalten"><button type="submit" class=FunctionLinks>Freunde</button></form></th></tr>
<tr><th><a href="./AllePostsAusgeben"><button class=FunctionLinks>Feed</button></a></th></tr>
<tr><th><a href="./InvestmentsAnzeigenServlet"><button class=FunctionLinks>Profil</button></a></th></tr>
<tr><th><a href="Stacked/JSP/addInvestment.jsp"><button class=FunctionLinks>Investments</button></a></th></tr>
<tr><th><a href="./Stacked/Index.html"><button class=FunctionLinks>Abmelden</button></a></th></tr>
</table>
</div>
</nav>

<aside class=SelectedContent>
<div >
<!-- HIER Referenzierter HTML-Code einfügen (zb. Post oder Feed oder Profil mit Investments) -->

<table class=topTitleTable>
<tr><td rowspan="2"><img src="./ProfilbildAuslesen?username=${FollowUser}" width="50" height="50"></td><td>${FollowUser}</td></tr>
</table>
	<br>
	

	<!-- Tobias Weiß HTML-Tabelle der Investments -->


	<div>
		<br>

		<fieldset>
			<legend>Deine Investments</legend>
			<table class=InvestTable>
			<tr><td>Stockname</td> <td>Anzahl</td> <td>BuyIn</td>
				<c:forEach var="asset" items="${AssetsAnzeigen}">
					<tr>
						<td>${asset.stockname}</td>
						<td>${asset.anzahl}</td>
						<td>${asset.buyin}</td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
		
	</div>

</div>
</aside>

</body>
</html>