document.addEventListener("DOMContentLoaded", init)

function init(){
var AbmeldenBT = document.getElementById("AbmeldenBT");
AbmeldenBT.addEventListener("click", AbmeldenBTFunc);

}

function AbmeldenBTFunc(){
	window.location.href = "../../LogoutServlet";
}

