//Jonathan Vielwerth
document.addEventListener("DOMContentLoaded", init)

function init(){
var ZurueckBT = document.getElementById("ZurueckBT");
ZurueckBT.addEventListener("click", ZurueckBTFunc);

}

function ZurueckBTFunc(){
	window.location.href = "./Admin.jsp";
}
//Jonathan Vielwerth