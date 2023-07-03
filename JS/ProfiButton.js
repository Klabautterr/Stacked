document.addEventListener("DOMContentLoaded", init)

function init(){
var addInvest = document.getElementById("addInvest");
addInvest.addEventListener("click", addInvestFunc);

var addETF = document.getElementById("addETF");
addETF.addEventListener("click", addETFFunc);

}

function addInvestFunc(){
	window.location.href = "./Stacked/JSP/addInvestment.jsp";
}

function addETFFunc(){
	window.location.href = "./Stacked/JSP/addETF.jsp";
}


