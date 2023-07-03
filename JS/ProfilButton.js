//Jonathan Vielwerth
document.addEventListener("DOMContentLoaded", init)

function init(){
var addETF = document.getElementById("addETF");
addETF.addEventListener("click", addETFFunc);

}

function addETFFunc(){
	window.location.href = "./Stacked/JSP/addETF.jsp";
}
//Jonathan Vielwerth