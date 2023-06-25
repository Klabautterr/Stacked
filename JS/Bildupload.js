
window.onload = function() {
    var fileInput = document.getElementById('bild');
    fileInput.onchange = function() {
        var file = fileInput.files[0];
        if(file) {
            alert("Bild wurde hochgeladen: " + file.name);
        }
    }

}

