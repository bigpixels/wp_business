$(function() {



    // $('.questions__item').click(function () {
		// $(this).children('.questions__hidden').slideToggle();
    // });





    $('.slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        dots: false,
        responsive: [
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 1,
                    dots: true,
                    autoplay: true
                }
            }
        ]
    });

    if (screen.width > 767) {
    	new WOW().init();
	}


    // ===== Scroll to Top ====
    // $(window).scroll(function() {
    //     if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
    //         $('#return-to-top').fadeIn();    // Fade in the arrow
    //     } else {
    //         $('#return-to-top').fadeOut();   // Else fade out the arrow
    //     }
    // });
    // $('#return-to-top').click(function() {      // When arrow is clicked
    //     $('body,html').animate({
    //         scrollTop : 0                       // Scroll to top of body
    //     }, 500);
    // });

    $('.hamburger').click(function () {
        $(this).toggleClass('is-active').next('.hamburger-menu__wrap').slideToggle();
    });


    $("a[href='#pop']").magnificPopup({
        type: 'inline',
        focus: '#name',
        removalDelay: 300,
        mainClass: 'my-mfp-zoom-in',
        midClick: true
    });



	//Contact form
	$('.callback').submit(function(){
		$.ajax({
			type: "POST",
			url: "/mail.php",
			data: $(this).serialize()
		}).done(function(){
			// $('.success').addClass('visible-success');
            alert("Спасибо за заявку! Мы с Вами свяжемся.");
			setTimeout(function(){
				$(this).trigger("reset");
				// $('.success').removeClass('visible-success');
			}, 3000);
		});
		return false;
	});




	//Phone-mask
	// $('.phone-us').mask('+0(000) 00-00-000');




});


// $(window).on('load', function(){
// 	setTimeout(function(){
// 		$('.preloader-wrapper').fadeOut();
// 	}, 500)
// });

