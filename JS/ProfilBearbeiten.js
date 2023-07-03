//Jonathan Vielwerth
document.addEventListener("DOMContentLoaded", init)

function init(){
var ProfiButton = document.getElementById("ProfiAnfrageButton");
ProfiButton.addEventListener("click", alertProfi);
}

function alertProfi(){
	alert ("Profi Anfrage wurde erfolgreich verschickt");
}
//Jonathan Vielwerth