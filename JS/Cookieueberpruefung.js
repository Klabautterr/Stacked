
document.addEventListener("DOMContentLoaded", init)


function init() {
	var ProfiButton = document.getElementById("login");
	ProfiButton.addEventListener("click", checkCookiesEnabled);
}

// Chat GPT

function checkCookiesEnabled() {
	var cookiesEnabled = navigator.cookieEnabled;

	if (!cookiesEnabled) {
		alert("Um diese Website zu nutzen, aktivieren Sie bitte Cookies.");
	}
}

//Chat GPT


