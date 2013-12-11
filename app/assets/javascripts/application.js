//= require jquery
//= require jquery.dropdown
//= require jquery.ui.all
//= require jquery_ujs
//= require_tree .

$(document).ready(function () {
	$('.container').hide();
	$('.container').delay(1500).fadeIn(500);
	$('#work_posthome').change(function() {
	    $('#homepageinfo').toggle();
	});
});
$(function() {
    $( "#tabs" ).tabs();
});
$(function() {
    $( "#menu" ).menu();
});