//= require jquery
//= require jquery_ujs
//= require jquery.min
//= require plugins
//= require options
//= require custom
//= require jquery.scrollorama
//= require jquery.fitvids
//= require scrolly
//= require_tree .

$(document).ready(function(){
    $(".video").fitVids();
	$('.parallax').scrolly({bgParallax: true});
});
