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

	var searchURL = "../../searchAssets";

	var xmlhttp = new XMLHttpRequest();
	xmlhttp.responseType = "json";

	xmlhttp.onreadystatechange = function() {
		
		if (xmlhttp.readyState == 4 && (xmlhttp.status == 304 || xmlhttp.status == 200)) {
			console.log(xmlhttp.response);
			var stockList = xmlhttp.response;
			
		/*	if(stockList == null || stockList.length == 0){
				document.getElementById("stockname1").innerHTML = "Keine Treffer";
				return;
			}*/
			var ausgabe = "";

			ausgabe += "<select multiple id='stockname' name='stockname' required >";

			for (var i = 0; i < stockList.length; i++) {

				ausgabe += "<option value='" + stockList[i].stockname + "'>" + stockList[i].stockname + "</option>";


			}
			ausgabe += "</select>";

			document.getElementById("stockname1").innerHTML = ausgabe;

		}
	}

	xmlhttp.open("GET", searchURL, true);
	xmlhttp.send();

};