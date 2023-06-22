
window.onload = function() {
    var fileInput = document.getElementById('bild');
    fileInput.onchange = function() {
        var file = fileInput.files[0];
        if(file) {
            alert("Bild wurde hochgeladen: " + file.name);
        }
    }
}
window.onload = function() {
    var loggedInUsername = document.getElementById('loggedInUsername').textContent;
    var posts = document.querySelectorAll('.geposteter_Post');
    
    posts.forEach(function(post) {
        var username = post.querySelector('.username').textContent;
        var deleteForm = post.querySelector('.delete');
        
        if(username !== loggedInUsername) {
            deleteForm.style.display = 'none';
        }
    });
}