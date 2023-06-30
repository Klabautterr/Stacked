
document.addEventListener("DOMContentLoaded", init)


function init(){
var ProfiButton = document.getElementById("login");
ProfiButton.addEventListener("click", checkCookie);
}

// Chat GPT

function checkCookie() {
  var cookieName = "cookieCheck";
  var cookieValue = getCookie(cookieName);

  if (cookieValue !== "") {
    // Cookies sind aktiviert
    alert("Cookies sind aktiviert.");
    // Hier kannst du weitere Aktionen durchführen, wenn Cookies aktiviert sind
  } else {
    // Cookies sind nicht aktiviert
    alert("Um diese Website zu Nutzen aktivieren sie zuerst ihre Cookies aktivieren");
    // Hier kannst du weitere Aktionen durchführen, wenn Cookies nicht aktiviert sind
  }
}

// Hilfsfunktion zum Abrufen des Cookie-Werts
function getCookie(cookieName) {
  var name = cookieName + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var cookieArray = decodedCookie.split(';');

  for (var i = 0; i < cookieArray.length; i++) {
    var cookie = cookieArray[i];
    while (cookie.charAt(0) === ' ') {
      cookie = cookie.substring(1);
    }
    if (cookie.indexOf(name) === 0) {
      return cookie.substring(name.length, cookie.length);
    }
  }

  return "";
}

//Chat GPT


