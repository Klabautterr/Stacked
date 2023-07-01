
"use strict";

document.addEventListener("DOMContentLoaded", init1);
function init1() {
	document.getElementById("bild").addEventListener("click", bildhochladen);
	document.getElementById("mehrLaden").addEventListener("click", addContent);
	//document.getElementById("likenAJAX").addEventListener("click", likeanzeigen);
	


}

function bildhochladen() {
	var fileInput = document.getElementById('bild');
	fileInput.onchange = function() {
		var file = fileInput.files[0];
		if (file) {
			alert("Bild wurde hochgeladen: " + file.name);
		}
	}

}

"use strict";



var schongeladen = 0;

function addContent() {

	schongeladen += 5;
	var searchURL = "AllePostsAusgeben?schongeladen=" + schongeladen;

	var xmlhttp = new XMLHttpRequest();
	xmlhttp.responseType = "json";
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var postList = xmlhttp.response;
			var ausgabe = "";
			for (var i = 0; i < postList.length; i++) {


				ausgabe += '<div class="post postBG">';

				ausgabe += '<table class="InvestTable"><tr><td>';
				ausgabe += '<a href="./InvestmentsAnzeigenServlet?username=' + postList[i].username + '"><button class=UserNameBT>' + postList[i].username + '</button></a>';
				

				ausgabe += '</td><td class=postDeleteBT>';
				if (postList[i].username == postList[i].loginUsername) {
					ausgabe += '<form class="delete" method="post" action="./PostLoeschen">';
					ausgabe += '<input type="hidden" name="id" value=' + postList[i].id + '>';
					ausgabe += '<button class="classicBT" type="submit">Löschen</button>';
					ausgabe += '</form>';
				}
				ausgabe += '</td></tr></table>';

				ausgabe += '<div class="message">' + postList[i].nachricht + '</div>';

				if (postList[i].bildname) {
					ausgabe += '<div class="divCenter">';
					ausgabe += '<img class="postPicture" src="./PostAuslesen?id=' + postList[i].id + '">';
					ausgabe += '</div>';
				}

				ausgabe += '<table class="postActionTable"><tr><td class="likeBT">';
				//ausgabe += '<form method="post" action="./Liken">';
				ausgabe += '<input type="hidden" name="id" value=' + postList[i].id + '>';
				ausgabe += '<button type="submit"  data-columns="' + postList[i].id + '" class="likenAJAX classicBT">Like</button>';
				//  ausgabe += '</form>';

				ausgabe += '</td><td>';
				ausgabe += '<p id="updateLike_' + postList[i].id + '" >' + postList[i].anzahl_likes + '</p>';
				//ausgabe += '<p id="updateLike" data-columns="' + postList[i].id + '" >' + postList[i].anzahl_likes + '</p>';
				ausgabe += '</td><td class="postDeleteBT">';

				ausgabe += '<form method="post" action="./EinPostAusgeben">';
				ausgabe += '<input type="hidden" name="id" value=' + postList[i].id + '>';
				ausgabe += '<button type="submit" class="classicBT">Kommentieren</button>';
				ausgabe += '</form>';
				ausgabe += '</td></tr></table>';






				ausgabe += '</div>';
			}
			var mehrPosts = document.getElementById("mehrPosts");
			//document.getElementById("mehrPosts").insertAdjacentHTML("beforeend", ausgabe);
			mehrPosts.insertAdjacentHTML("beforeend", ausgabe);
			
			// Event Listener hinzufügen zu den neu erstellten Like-Buttons
			var likeButtons = mehrPosts.getElementsByClassName("likenAJAX");
			for (var i = 0; i < likeButtons.length; i++) {
				likeButtons[i].addEventListener("click", likeanzeigen);
			}
		}
    
			
		
	};

	xmlhttp.open("GET", searchURL, true);
	xmlhttp.send();
}


var ajaxLike = "0";

function likeanzeigen(event) {

	//var id = "256";
	
	var button = event.target;
	
    const id = button.getAttribute("data-columns");

	ajaxLike = "1";
	var searchURL = "Liken?ajaxLike=" + ajaxLike + "&id=" + id;

	var xmlhttp = new XMLHttpRequest();
	xmlhttp.responseType = "json";
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var post = xmlhttp.response;



			
			document.getElementById("updateLike_" + id).innerHTML = post.anzahl_likes;
		
	} 

	}
xmlhttp.open("GET", searchURL, true);
xmlhttp.send();
}


