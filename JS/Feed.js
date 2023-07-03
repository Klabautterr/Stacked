// Linus Baumeister
"use strict";

document.addEventListener("DOMContentLoaded", init1);
function init1() {
	document.getElementById("bild").addEventListener("change", bildhochladen);
	document.getElementById("mehrLaden").addEventListener("click", addContent);


}

function bildhochladen() {
			alert("Bild wurde Ausgewählt");
}


"use strict";



var schongeladen = 0;

function addContent() {
	
	var welcheSearch = 0;
//https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes
	 welcheSearch = document.getElementById("mehrLaden").dataset.welcheSearch;
//Linus Baumeister
	schongeladen += 5;


	
    var searchURL = "AllePostsAusgeben?schongeladen=" + schongeladen + "&welcheSearch=" + welcheSearch;

	
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.responseType = "json";
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var postList = xmlhttp.response;
			var ausgabe = "";
			for (var i = 0; i < postList.length; i++) {


				ausgabe += '<div class="post postBG">';

				ausgabe += '<table class="InvestTable"><tr><td>';
				ausgabe += '<a class = "textColor" href="./InvestmentsAnzeigenServlet?username=' + postList[i].username + '">' + postList[i].username + '</a>';

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
					ausgabe += '<img class="postPicture" alt="Gepostetes Bild" src="./PostAuslesen?id=' + postList[i].id + '">';
					ausgabe += '</div>';
				}

				ausgabe += '<table class="postActionTable"><tr><td class="likeBT">';
				ausgabe += '<input type="hidden" name="id" value=' + postList[i].id + '>';
//https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes
				ausgabe += '<button type="submit"  data-columns="' + postList[i].id + '" class="likenAJAX classicBT">Like</button>';
//Linus Baumeister

				ausgabe += '</td><td>';
				ausgabe += '<p id="updateLike_' + postList[i].id + '" >' + postList[i].anzahl_likes + '</p>';
				ausgabe += '</td><td class=postDeleteBT>';

				ausgabe += '<form method="post" action="./EinPostAusgeben">';
				ausgabe += '<input type="hidden" name="id" value=' + postList[i].id + '>';
				ausgabe += '<button type="submit" class="classicBT">Kommentieren</button>';
				ausgabe += '</form>';
				ausgabe += '</td></tr></table>';






				ausgabe += '</div>';
			}

			var mehrPosts = document.getElementById("mehrPosts");
// Chat GPT	
			mehrPosts.insertAdjacentHTML("beforeend", ausgabe);

			
			var likeButtons = mehrPosts.getElementsByClassName("likenAJAX");
			for (var i = 0; i < likeButtons.length; i++) {
				likeButtons[i].addEventListener("click", likeanzeigen);
			}
			  if (postList.length < 5) {
                document.getElementById("mehrLaden").disabled = true;
                document.getElementById("mehrLaden").innerText = "Keine weiteren Beiträge";
            } else {
                schongeladen += 5;  
            }
// Linus Baumeister
		}



	};

	xmlhttp.open("GET", searchURL, true);
	xmlhttp.send();
}


var ajaxLike = "0";
//Chat GPT
function likeanzeigen(event) {



	var button = event.target;

	const id = button.getAttribute("data-columns");
//Linus Baumeister
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
//Linus Baumeister