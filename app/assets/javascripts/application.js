

function addHoverClassToParent() {
  this.parentElement.classList.add('hover')
}

function removeHoverClassFromParent() {
  this.parentElement.classList.remove('hover')  
}

function setupGenreLinkEvents() {


  var genre_links = document.getElementsByClassName('genre-link')

  for (var i = genre_links.length - 1; i >= 0; i--) {

    genre_links[i].addEventListener('mouseover', addHoverClassToParent)
    genre_links[i].addEventListener('mouseleave', removeHoverClassFromParent)

  };
// handy function for inserting content after elements
function insertAfter(newElement,targetElement) {
  var parent = targetElement.parentNode;
  if (parent.lastChild == targetElement) {
    parent.appendChild(newElement);
  } else {
    parent.insertBefore(newElement,targetElement.nextSibling);
  }
}


}

document.addEventListener('DOMContentLoaded', setupGenreLinkEvents)