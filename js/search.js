'use strict';
(function () {
  var publications = document.getElementsByClassName('pub');
  var searchInput = document.getElementById('search');

  searchInput.addEventListener('input', function() {
    var query = searchInput.value.toLowerCase();
    if(!query) {
      for(var i = 0; i < publications.length; i++) {
        var pub = publications[i];
        pub.className = "list-group-item pub";
      }
    } else {
      for(var i = 0; i < publications.length; i++) {
        var pub = publications[i];
        var citation = pub.querySelector('#citation').textContent.toLowerCase();
        if(citation.indexOf(query) > -1) {
          pub.className = "list-group-item pub";
        } else {
          pub.className = "list-group-item pub hide";
        }
      }
    }

  });

})();
