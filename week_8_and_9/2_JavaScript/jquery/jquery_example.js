$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'green'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
  var bodyElement = $('body');
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
$('h1').css({
	'color': 'yellow',
	'border': 'dotted', 
	'visibility': 'visible'});

 $('div.mascot > h1').html('Chorus Frogs');
 
//RELEASE 3: Event Listener
  // Add the code for the e'vent listener here 
 
 $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.borealforest.org/reptiles/chorus_frog.jpg')
  })
 
 $('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'https://ed.fnal.gov/projects/frogs/graphics/chorus_frog_i.jpg')
  })
//RELEASE 4 : Experiment on your own
 
 $('img').on('click', function(e){
     e.preventDefault()
    $(this).fadeOut()
  })
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
