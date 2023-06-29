/**
 * 
 */

"use strict";
document.addEventListener("DOMContentLoaded", init);

function init() {
	document.getElementById("stockname").addEventListener("load",refillList);
}


function refillList() {

	var xmlhttp = new XMLHttpRequest();
	xmlhttp.responseType = "json";

	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var stockList = xmlhttp.response;
			var ausgabe = "";

			ausgabe += "<select multiple id='stockname' name='stockname' required >";

			for (var i = 0; i < stockList.length; i++) {

				ausgabe += "<option value='" + stockList[i].stockname + "'>" + stockList[i].stockname + "</option>";


			}
			ausgabe += "</select>";

			document.getElementById("stockname").innerHTML = ausgabe;

		}
	}

	xmlhttp.open("GET", "searchAssets", true);
	xmlhttp.send();

};