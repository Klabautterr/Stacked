/**
 * Buttons EventHandler
 * Function 1 -> Load 5 more Comments
 * Function 2 -> Insert own new Comment
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

function addTopComment() {
	setTimeout('', 2000);
	var newComment = document.getElementById("newComms");
	
	var newCommHTML = "";
	
	newCommHTML += '<div class="Comment" id="' + newComment.dataset.commentID + '">';
	
	newCommHTML += '<div class="username"><a href="./InvestmentsAnzeigenServlet?username=' + newComment.dataset.commentUsername + '">' + newComment.dataset.commentUsername + '</a></div>';
	newCommHTML += '<div class="message">' + newComment.dataset.commentText + '</div>';
	
   	newCommHTML += '<form class="delete" method="post" action="./CommentDelete">';
    newCommHTML += '<input id=commID type="hidden" name="id" value=' + newComment.dataset.commentID + '>';
    newCommHTML += '<button type="submit">Löschen</button>';
    newCommHTML += '</form>';
               
	newCommHTML += '</div>';
	
	document.getElementById("newComms").insertAdjacentHTML("afterbegin", newCommHTML);
}

function loadCommis() {
	console.log(pID);
	var searchURL = "../../CommentLoad?loadedComments=" + loadedComments + "&postID=" + pID;

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.responseType = "json";
	console.log("sdfsdf");
    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var comList = xmlhttp.response;
            var newComms = "";
            for (var i=0; i < comList.length; i++) {
				newComms += '<div class="Comment" id="cID' + comList[i].id + '">';
				newComms += '<div class="username"><a href="./InvestmentsAnzeigenServlet?username=' + comList[i].username + '">' + comList[i].username + '</a></div>';
				newComms += '<div class="message">' + comList[i].kommentar + '</div>';
				console.log("inside");
				if (comList[i].username == loginUN) {
    				newComms += '<form class="delete" method="post" action="./CommentDelete">';
       				newComms += '<input id="commID" type="hidden" name="id" value=' + comList[i].id + '>';
        			newComms += '<button type="submit">Löschen</button>';
        			newComms += '</form>';
               	}
				newComms += '</div>';
			}
			document.getElementById("loadComms").insertAdjacentHTML("beforeend", newComms);
		}
	}
	console.log("fast");
	xmlhttp.open("GET", searchURL, true);
    xmlhttp.send();
	console.log("vorEnde");
	loadedComments += 5;
}