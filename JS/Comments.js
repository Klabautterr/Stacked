/**
 * Buttons EventHandler
 * Function 1 -> Load 5 more Comments
 * Function 2 -> Insert own new Comment
 */

document.addEventListener("DOMContentLoaded", init);

function init() {
	
}

var loadComments = document.getElementById("loadMoreComments");

loadComments.addEventListener("click", loadCommis);

var addComment = document.getElementById("sendComment");

addComment.addEventListener("click", addTopComment)

var loadedComments = 0;

var loginUser = '<%=session.getAttribute("Login")%>';

var selectedPost = '<%=session.getAttribute("post")%>';

function addTopComment() {
	setTimeout('', 2000);
	var newComment ='<%session.getAttribute("formKommentar")%>';
	
	var newCommHTML = "";
	
	newCommHTML += '<div class="Comment" id="cID${newComment.getId()}">';
	
	newCommHTML += '<div class="username"><a href="./InvestmentsAnzeigenServlet?username=${newComment.getUsername()}">${newComment.getUsername()}</a></div>';
	newCommHTML += '<div class="message"> + newComment.getKommentar() + </div>';
	
   	newCommHTML += '<form class="delete" method="post" action="./CommentDelete">';
    newCommHTML += '<input id=commID type="hidden" name="id" value=' + newComment.getId() + '>';
    newCommHTML += '<button type="submit">Löschen</button>';
    newCommHTML += '</form>';
               
	newCommHTML += '</div>';
	
	document.getElementById("newComms").insertAdjacentHTML("afterbegin", newCommHTML);
}

function loadCommis() {
	
	var searchURL = "CommentLoad?loadedComments=" + loadedComments + "&postID" + selectedPost.getId();

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.responseType = "json";
    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var comList = xmlhttp.response;
            var newComms = "";
            for (var i=0; i < postList.length; i++) {
				newComms += '<div class="Comment" id="cID${comList[i].id}">';
				newComms += '<div class="username"><a href="./InvestmentsAnzeigenServlet?username=${comList[i].username}">${comList[i].username}</a></div>';
				newComms += '<div class="message"> + comList[i].kommentar + </div>';
				if (comList[i].username == loginUser.getUsername) {
    				newComms += '<form class="delete" method="post" action="./CommentDelete">';
       				newComms += '<input id="commID" type="hidden" name="id" value=' + comList[i].id + '>';
        			newComms += '<button type="submit">Löschen</button>';
        			newComms += '</form>';
               	}
				newComms += '</div>';
			}
			document.getElementById("loadComms").insertAdjacentHTML("beforeend", newComms);
		}
	xmlhttp.open("GET", searchURL, true);
    xmlhttp.send();
	
	loadedComments += 5;
	}
}