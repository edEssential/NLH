//= require jquery
//= require jquery.dropdown
//= require jquery.ui.all
//= require jquery_ujs
//= require_tree .
//= require bootstrap
//= require bootstrap.min

$('#work_header_tip').tooltip();
$(document).on('mouseover', '#work_header_tip', function () { $(this).tooltip('show'); });

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