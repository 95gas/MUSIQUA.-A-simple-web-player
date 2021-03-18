
<!-- ==================================================== -->
<!-- ==================  ANIMATION  ===================== -->
<!-- ==================================================== -->
(function($) {

    // Windows load
    $(window).on("load", function() {
        // Site loader Icon

        $(".loader-inner").fadeOut();
        $(".loader").delay(200).fadeOut("slow");
    });


    // Fade the header while we scroll down the page

    var header = $('.header'),
        pos = header.offset();

    $(window).scroll(function() {
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

    
})(jQuery);


function showEditOptions() {
	  var modify = document.getElementById("edit");
	  var opt = document.getElementById("operation");
	  opt.style.display = "block";
	  modify.style.display = "none";
	  var textboxes = document.getElementById("ToConvert");
	  textboxes.type = 'text';
	}

function hideEditOptions() {
	  var modify = document.getElementById("edit");
	  var opt = document.getElementById("operation");
	  opt.style.display = "none";
	  modify.style.display = "block";
	  var textboxes = document.getElementById("ToConvert");
	  textboxes.type = 'hidden';
	}
