/**
 * Buttons EventHandler
 * Function 1 -> Load 5 more Comments
 * Function 2 -> Insert own new Comment
 *
 * Jan Holtmann
 */

document.addEventListener("DOMContentLoaded", init);



function init() {
	var loadComments = document.getElementById("loadMoreComments");

	loadComments.addEventListener("click", loadCommis);

	var addComment = document.getElementById("sendComment");

	addComment.addEventListener("click", addTopComment);
	
	needVars = document.getElementById("loadComms");
	
	pID = needVars.getAttribute("data-postID");
	
	loginUN = needVars.getAttribute("data-loginUser");
}



var loadedComments = 0;

var needVars;

var pID;

var loginUN;

var newCommentText = "";



function addTopComment() {
	
	newCommentText = document.getElementById("kommentar").value;
	
	if(newCommentText == "") {
		return;
	}
	
	var searchURL = "../../Kommentieren?id=" + pID + "&kommentar=" + newCommentText;
	
	var xmlhttp = new XMLHttpRequest();
    xmlhttp.responseType = "json";

	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var returnComment = xmlhttp.response;
			
			var newCommHTML = "";
			newCommHTML += '<br><br>';
			newCommHTML += '<div class="Comment" id="cID' + returnComment[0].id + '">';
	
			newCommHTML += '<a class="textColor mLeft" href="../../InvestmentsAnzeigenServlet?username=' + returnComment[0].username + '">' + returnComment[0].username + '</a>';
			newCommHTML += '<br><br>';
			newCommHTML += '<div class="message">' + returnComment[0].kommentar + '</div>';
			
			newCommHTML += '<br>';
   			newCommHTML += '<form class="divCenter" method="post" action="../../CommentDelete">';
    		newCommHTML += '<input id=commID type="hidden" name="id" value=' + returnComment[0].id + '>';
    		newCommHTML += '<button class="classicBT" type="submit">Löschen</button>';
    		newCommHTML += '</form>';
               
			newCommHTML += '</div>';
			
	
			document.getElementById("newComms").insertAdjacentHTML("afterbegin", newCommHTML);
		}
	}
	xmlhttp.open("GET", searchURL, true);
    xmlhttp.send();
	loadedComments += 1;
}

function loadCommis() {
	var searchURL = "../../CommentLoad?loadedComments=" + loadedComments + "&postID=" + pID;

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.responseType = "json";
    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var comList = xmlhttp.response;
            var newComms = "";
            for (var i=0; i < comList.length; i++) {
				newComms += '<br><br>';
				newComms += '<div class="Comment" id="cID' + comList[i].id + '">';
				newComms += '<a class="textColor mLeft" href="../../InvestmentsAnzeigenServlet?username=' + comList[i].username + '">' + comList[i].username + '</a>';
				newComms += '<br><br>';
				newComms += '<div class="message">' + comList[i].kommentar + '</div>';
				if (comList[i].username == loginUN) {
					newComms += '<br>';
    				newComms += '<form class="divCenter" method="post" action="../../CommentDelete">';
       				newComms += '<input id="commID" type="hidden" name="id" value=' + comList[i].id + '>';
        			newComms += '<button class="classicBT" type="submit">Löschen</button>';
        			newComms += '</form>';
					
               	}
				newComms += '</div>';
			}
			//Chat-GPT
			document.getElementById("loadComms").insertAdjacentHTML("beforeend", newComms);
			//Chat-GPT
		}
	}
	xmlhttp.open("GET", searchURL, true);
    xmlhttp.send();
	loadedComments += 5;
}