//Jonathan Vielwerth
document.addEventListener("DOMContentLoaded", init)

function init(){
var AbmeldenBT = document.getElementById("AbmeldenBT");
AbmeldenBT.addEventListener("click", AbmeldenBTFunc);

var AnfrageBT = document.getElementById("AnfrageBT");
AnfrageBT.addEventListener("click", AnfrageBTFunc);

var AnlageHinzufuegenBT = document.getElementById("AnlageHinzufuegenBT");
AnlageHinzufuegenBT.addEventListener("click", AnlageHinzufuegenBTFunc);

var AnlageVerwaltenBT = document.getElementById("AnlageVerwaltenBT");
AnlageVerwaltenBT.addEventListener("click", AnlageVerwaltenBTFunc);
}

function AbmeldenBTFunc(){
	window.location.href = "../../LogoutServlet";
}

function AnfrageBTFunc(){
	window.location.href = "../../ProfiAnfragenAusgeben";
}

function AnlageHinzufuegenBTFunc(){
	window.location.href = "./AnlageoptionHinzufuegen.jsp";
}

function AnlageVerwaltenBTFunc(){
	window.location.href = "../../AnlageoptionenVerwaltenServlet";
}
//Jonathan Vielwerth