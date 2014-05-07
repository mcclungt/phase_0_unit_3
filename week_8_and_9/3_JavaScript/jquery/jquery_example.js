$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
var bodyElement = $('body')
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
$('h1').css(
	{'color': 'green',
     'border-style': 'dotted',
     'border-color': 'yellow',
     'visibility': 'visible'
             });
$('.mascot h1').html("Cicadas");
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://alexgrey.com/wp-content/uploads/2013/06/alex_cicada_on_face.jpg')
});


$("img").click(function() {
    $( this ).attr('src', "dbc_logo.jpg");
});
 
//RELEASE 4 : Experiment on your own
 
$("img").click(function(){
	$("img").animate({
		right:'500px',
		height:'800px',
		width:'1200px'
	});
});
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
/* This was a fairly straightforward exercise. I've worked with jQuery before
   so I understand the basics. I apologize in advance for the frightening
   image that loads up on click, I was just tired when I wrote this and it
   seemed funny to me at the time. jQuery is an interesting tool that I've
   barely used, but I can definitely see the application of having a way to
   not only manipulate html externally, but provide other features such as
   hover, click, and animate functions.
   */