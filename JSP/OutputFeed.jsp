<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feed</title>
<link rel="stylesheet" type="text/css" href="../CSS/Feed.css">
</head>
<body>

	<!-- no -->
	<div class="full-side">


		<div class="left-side">
			<img class="Profielfeld" src="../images/default-profile.jpg"
				width="100" height="100" alt="DefaultPB"> <br> <a
				href="../JSP/Profil.jsp"> Profil </a>

		</div>
		<div class="middle">

			<form class="form-posten" method ="post" action="../../Posten"
				enctype="multipart/form-data">
				<textarea class="Postfeld" id="nachricht" name="nachricht" maxlength="120"
					placeholder="irgendwas los in der Welt?" required></textarea>
				<div class="button-container">
					<label for="bild" class="picture-button">Bilder</label> <input
						class="image-input" type="file" name="bild" id="bild"
						accept="image/*" required>
					<button type="submit" class="text-button">Posten</button>

				</div>
			</form>
			<br>
			
			<b> ${form.nachricht}</b>
			<br>
			<!--  <b>bildname: ${form.bildname} </b><br>	-->
			<b> <img src="../../PostAuslesen?id=${form.id}" width= "400" height="150" ></b>
			<b>Woah der ${form.id} Post</b>
			<br>
			
		</div>
		<div class="right-side">
			<input type="text" name="suche" size="25" maxlength="40"
				placeholder="suche">
		</div>
	</div>
	<!-- no -->

</body>
</html>