/**
 * 
 */

 "use strict";
document.addEventListener("DOMContentLoaded", init);

function init() {
	document.getElementById("stockname1").addEventListener("click",refillList);
	
	//refillList();
}


function refillList() {

	var searchURL = "../../searchETF";

	var xmlhttp = new XMLHttpRequest();
	xmlhttp.responseType = "json";

	xmlhttp.onreadystatechange = function() {
		
		if (xmlhttp.readyState == 4 && (xmlhttp.status == 304 || xmlhttp.status == 200)) {

			var stockList = xmlhttp.response;
			
	
			var ausgabe = "";

			ausgabe += "<select multiple id='etf' name='etf' required >";

			for (var i = 0; i < stockList.length; i++) {

				ausgabe += "<option value='" + stockList[i].stockname + "'>" + stockList[i].stockname + "</option>";


			}
			ausgabe += "</select>";

			document.getElementById("stockname2").innerHTML = ausgabe;

		}
	}

	xmlhttp.open("GET", searchURL, true);
	xmlhttp.send();

};