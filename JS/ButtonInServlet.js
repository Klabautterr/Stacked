//Jonathan Vielwerth
document.addEventListener("DOMContentLoaded", init)

function init(){
var ProfilBT = document.getElementById("ProfilBT");
ProfilBT.addEventListener("click", ProfilBTFunc);

var editProfileBT = document.getElementById("editProfileBT");
editProfileBT.addEventListener("click", editProfileBTFunc);

var FeedBt = document.getElementById("FeedBT");
FeedBt.addEventListener("click", FeedBTFunc);

var FreundeBT = document.getElementById("FreundeBT");
FreundeBT.addEventListener("click", FreundeBTFunc);

var LogoutBT = document.getElementById("LogoutBT");
LogoutBT.addEventListener("click", LogoutBTFunc);
}

function ProfilBTFunc(){
	window.location.href = "./InvestmentsAnzeigenServlet";
}

function editProfileBTFunc(){
	window.location.href = "./Stacked/JSP/ProfilBearbeiten.jsp";
}

function FeedBTFunc(){
	window.location.href = "./AllePostsAusgeben";
}

function FreundeBTFunc(){
	window.location.href = "./FollowsVerwalten";
}

function LogoutBTFunc(){
	window.location.href = "./LogoutServlet";
}
//Jonathan Vielwerth