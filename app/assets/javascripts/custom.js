//NAVIGATION
$(window).load(function () {

	$('.navigationContent').hide();

	$('#navigation li').hover(
	       function () {
	           //show its submenu
	           jQuery('ul', this).stop().slideDown(400);
	
	       }, 
	       function () {
	           //hide its submenu
	           jQuery('ul', this).stop().fadeOut(100);          
	       }
	   );
	   
	//NAVIGATION BUTTON ACTION (ON CLICK DO THE FOLLOWING)
	$('.navigationButton').click(function() {

		//REMOVE THE ON CLASS FROM ALL BUTTONS
		$('.navigationButton').removeClass('on');
		  
		//NO MATTER WHAT WE CLOSE ALL OPEN SLIDES
	 	$('.navigationContent').slideUp('normal');
   
		//IF THE NEXT SLIDE WASN'T OPEN THEN OPEN IT
		if($(this).next().is(':hidden') == true) {
			
			//ADD THE ON CLASS TO THE BUTTON
			$(this).addClass('on');
			  
			//OPEN THE SLIDE
			$(this).next().slideDown('normal');
		 } 
		  
	 });
	   
});


// PORTFOLIO FILTER
jQuery(document).ready(function() {  
    jQuery('ul#filter a').click(function() {  
        jQuery(this).css('outline','none');  
        jQuery('ul#filter .current').removeClass('current');  
        jQuery(this).parent().addClass('current');  
          
        var filterVal = $(this).text().toLowerCase().replace(/ /g,'-');  
                  
        if(filterVal == 'all') {  
            jQuery('ul#portfolio-standard li.hidden').fadeIn('slow').removeClass('hidden');  
        } else {  
            jQuery('ul#portfolio-standard li').each(function() {  
                if(!jQuery(this).hasClass(filterVal)) {  
                    jQuery(this).fadeOut('normal').addClass('hidden');  
                } else {  
                    jQuery(this).fadeIn('slow').removeClass('hidden');  
                }  
            });  
        }  
          
        return false;  
    });  
});


//ACCORDION
$(document).ready(function()
{
	//Add Inactive Class To All Accordion Headers
	$('.accordion-header').toggleClass('inactive-header');
	
	//Set The Accordion Content Width
	var contentwidth = $('.accordion-header').width();
	$('.accordion-content').css({'width' : contentwidth });
	
	// The Accordion Effect
	$('.accordion-header').click(function () {
		if($(this).is('.inactive-header')) {
			$('.active-header').toggleClass('active-header').toggleClass('inactive-header').next().slideToggle().toggleClass('open-content');
			$(this).toggleClass('active-header').toggleClass('inactive-header');
			$(this).next().slideToggle().toggleClass('open-content');
		}
		
		else {
			$(this).toggleClass('active-header').toggleClass('inactive-header');
			$(this).next().slideToggle().toggleClass('open-content');
		}
	});
	
	return false;
});


// TABS 
jQuery(document).ready(function(){
	jQuery('#tabs div').hide();
	jQuery('#tabs div:first').show();
	jQuery('#tabs ul li:first').addClass('active');
 
	jQuery('#tabs ul li a').click(function(){
		jQuery('#tabs ul li').removeClass('active');
		jQuery(this).parent().addClass('active');
		var currentTab = jQuery(this).attr('href');
		jQuery('#tabs div').hide();
		jQuery(currentTab).show();
		return false;
		});
});


// CONTACT FORM
jQuery(document).ready(function(){

	jQuery('#contactform').submit(function(){

		var action = jQuery(this).attr('action');

		jQuery("#alert").slideUp(750,function() {
		jQuery('#alert').hide();

 		jQuery('#submit')
			.after('<img src="images/ajax-loader.gif" class="loader" />')
			.attr('disabled','disabled');

		jQuery.post(action, {
			name: jQuery('#name').val(),
			email: jQuery('#email').val(),
			message: jQuery('#message').val()
		},
			function(data){
				document.getElementById('alert').innerHTML = data;
				jQuery('#alert').slideDown('slow');
				jQuery('#contactform img.loader').fadeOut('slow',function(){jQuery(this).remove()});
				jQuery('#submit').removeAttr('disabled');
				if(data.match('success') != null) jQuery('#contactform').slideUp('slow');

			}
		);

		});

		return false;

	});

});