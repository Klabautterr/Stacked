
window.onload = function() {
	var fileInput = document.getElementById('bild');
	fileInput.onchange = function() {
		var file = fileInput.files[0];
		if (file) {
			alert("Bild wurde hochgeladen: " + file.name);
		}
	}

}

// Rufen Sie den Button über seine ID ab
var mehrLadenButton = document.getElementById("mehrLaden");

// Fügen Sie das Klick-Event-Handling hinzu
mehrLadenButton.addEventListener("click", addContent);

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
            for (var i=0; i < postList.length; i++) {
 

                ausgabe += '<div class="geposteter_Post">';

                ausgabe += '<div class="username">';
                ausgabe += '<a href="./InvestmentsAnzeigenServlet?username=' + postList[i].username + '">' + postList[i].username + '</a>';
                ausgabe += '</div>';

                ausgabe += '<div class="message">' + postList[i].nachricht + '</div>';

                if (postList[i].bildname) {
                    ausgabe += '<img src="./PostAuslesen?id=' + postList[i].id + '" width="400" height="150">';
                }
                ausgabe += '<div class="actions">';

                ausgabe += '<form method="post" action="./Liken">';
                ausgabe += '<input type="hidden" name="id" value=' + postList[i].id + '>';
                ausgabe += '<button type="submit" class="like">Like</button>';
                ausgabe += '</form>';
                
                ausgabe += '<p>' + postList[i].anzahl_likes + '</p>';
                ausgabe += '<p>' +"das name" + postList[i].loginUsername + '</p>';
                
     
                
                ausgabe += '<div class="comment">';
                ausgabe += '<form method="post" action="./EinPostAusgeben">';
                ausgabe += '<input type="hidden" name="id" value=' + postList[i].id + '>';
                ausgabe += '<button type="submit" class="comment">Kommentieren ?</button>';
                ausgabe += '</form>';
                ausgabe += '</div>';
                
               if (postList[i].username == postList[i].loginUsername) {
                   ausgabe += '<form class="delete" method="post" action="./PostLoeschen">';
                   ausgabe += '<input type="hidden" name="id" value=' + postList[i].id + '>';
                   ausgabe += '<button type="submit">Löschen</button>';
                   ausgabe += '</form>';
               }
                
                ausgabe += '</div>';
                
                ausgabe += '</div>';
            }
            document.getElementById("mehrPosts").insertAdjacentHTML("beforeend", ausgabe);

            //document.getElementById("mehrPosts").insertAdjacentHTML('beforeend', ausgabe);
        }
    };

    xmlhttp.open("GET", searchURL, true);
    xmlhttp.send();
}






