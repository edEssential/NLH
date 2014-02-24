//QUOTES
$(document).ready(function() {
	$('ul#quote-list').quote_rotator();
});

//RESPONSIVE VIDEO
jQuery(document).ready(function(){
    // Target your .container, .wrapper, .post, etc.
    jQuery('.video.entry').fitVids();
});


//PLUGINS
jQuery(document).ready(function() {

	jQuery('#tweets').tweetable({
			username: '@TwitterUsername', // Set your twitter username here
			time: true,
			limit: 2,
			position: 'append'
				
		});
		 
		$('#flickrs').jflickrfeed({
			limit: 6,
			qstrings: {
				id: '52617155@N08' // Set your flickr ID here
			},
			itemTemplate: 
			'<li>' +
				'<a class="screen-roll" href="{{image_b}}"><span></span><img src="{{image_s}}" alt="{{title}}" /></a>' +
			'</li>'});
		
});