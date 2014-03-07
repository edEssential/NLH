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
	$(function(){
	 	var $masonry = $('#portfolio');

	 	$masonry.imagesLoaded( function(){
		 	$masonry.masonry({
		      itemSelector: '.thumbnail',
		      isResizable: true,
		      isAnimated: true,
		      columnWidth: function( containerWidth ) {
				return containerWidth / 3;
			  }
		    });

		});   
		
	 });
	
	//// Launch all external links in _blank windows!!
	$("a").click(function() {
		link_host = this.href.split("/")[2];
	    document_host = document.location.href.split("/")[2];

	    if (link_host != document_host) {
	      window.open(this.href);
	      return false;
	    }
	});
});