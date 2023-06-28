
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
                
                ausgabe += '</div>';
            }
            document.getElementById("mehrPosts").insertAdjacentHTML("beforeend", ausgabe);

            //document.getElementById("mehrPosts").insertAdjacentHTML('beforeend', ausgabe);
        }
    };

    xmlhttp.open("GET", searchURL, true);
    xmlhttp.send();
}







