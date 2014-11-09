

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
}

// handy function for inserting content after elements
function insertAfter(newElement,targetElement) {
  var parent = targetElement.parentNode;
  if (parent.lastChild == targetElement) {
    parent.appendChild(newElement);
  } else {
    parent.insertBefore(newElement,targetElement.nextSibling);
  }
}

// for making ajax calls
function getHTTPObject() {
  if (typeof XMLHttpRequest == "undefined") {
    XMLHttpRequest = function () {
      try { return new ActiveXObject("Msxml2.XMLHTTP.6.0"); }
        catch (e) {}
      try { return new ActiveXObject("Msxml2.XMLHTTP.3.0"); }
        catch (e) {}
      try { return new ActiveXObject("Msxml2.XMLHTTP"); }
        catch (e) {}
      return false;
    };
  }
  return new XMLHttpRequest();
}


function createIMDbLink() {
  // test environment
  if (!document.getElementById) return false;
  if (!document.getElementById("movie-name")) return false;

  // test if movie name is present
  var name = document.getElementById("movie-name").firstChild;
  if (name.nodeType !== 3) return false;
  if (name.nodeValue === null ) return false;
  name = name.nodeValue;

  // prep url for omdb api request
  var omdb_url = "http://www.omdbapi.com/?t=";
  omdb_url += name.split(' ').join('+');
  omdb_url += "&y=&plot=short&r=json";

  // make request to omdbapi.com/
  var request = getHTTPObject();
  if (request) {
    request.open( "GET", omdb_url, true);
    request.onreadystatechange = function () {
      if (request.readyState == 4) {
        // parse JSON response
        var movie = JSON.parse(request.responseText);

        // log response if nothing returned
        if (movie.Response == "False") {
          var error_msg = "OMDb API Response: " + movie.Response + " , Error: " + movie.Error;
          console.log(error_msg);
          console.log(movie);
          return false;
        } else {
          // print the movie object into console
          console.log(movie);
        }

        // create IMDb url
        var imdb_url = "http://www.imdb.com/title/" + movie.imdbID;

        // create link element
        var imdb_link = document.createElement("a");
        imdb_link.setAttribute("href", imdb_url);
        var citation = document.createElement("cite");
        var text_1 = document.createTextNode(name);
        var text_2 = document.createTextNode(" at the Internet Movie Database");
        citation.appendChild(text_1);
        imdb_link.appendChild(citation);
        imdb_link.appendChild(text_2);

        // insert link before harizontal rule
        if (!document.getElementById("netflix-link")) return false;
        var netflix_link = document.getElementById("netflix-link");
        insertAfter(imdb_link, netflix_link);
      }
    };

    request.send(null);
  } else {
    console.log('Sorry, your browser doesn’t support XMLHttpRequest');
  }
}

document.addEventListener('DOMContentLoaded', setupGenreLinkEvents)
