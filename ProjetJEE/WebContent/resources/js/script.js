
//executes the given function when the DOM is ready
(function($) {

    // Windows load. Run things that need to happen after full content load
    $(window).on("load", function() {
        // Site loader Icon
        $(".loader-inner").fadeOut();
        $(".loader").delay(200).fadeOut("slow");
    });


    // Fade the header while we scroll down the page

    var header = $('.header'),
        pos = header.offset();

    $(window).scroll(function() {
    	
    	//$(this) refers to a jquery object
        if ($(this).scrollTop() > pos.top + 100 && header.hasClass('default')) {
            header.fadeOut('fast', function() {
                $(this).removeClass('default').addClass('switched-header').fadeIn(200);
            });
        } else if ($(this).scrollTop() <= pos.top + 100 && header.hasClass('switched-header')) {
            header.fadeOut('fast', function() {
                $(this).removeClass('switched-header').addClass('default').fadeIn(100);
            });
        }
    });
    
    //check password=confirm.password in signup page
    $('#password, #confirm_password').on('keyup', function () {
    	  if ($('#password').val() == $('#confirm_password').val()) {
    	    $('#message').html('Passwords are matching').css('color', 'green');
    	  } else 
    	    $('#message').html('Passwords are not matching').css('color', 'red');
    	});
    
})(jQuery);
