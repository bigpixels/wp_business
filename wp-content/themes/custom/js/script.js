'use strict';
$(function () {
    //new $(document).ready
    function toggleMobileMenu() {
        let $trigger = $('.hamburger');
        let $overlay = $('.overlay');

        $trigger.toggleClass('is-active').next().toggleClass('active');
        $overlay.fadeToggle();
        $('body, html').toggleClass('no-scroll');
    }

    (function showMobileMenu() {
        let $trigger = $('.hamburger');

        $trigger.on('click', function() {
            toggleMobileMenu();
        });
    })();

    (function HideMobileMenu() {
        let $overlay = $('.overlay');

        $overlay.on('click', function() {
            toggleMobileMenu();
        });
    })();

    if (screen.width>991) {
        new WOW().init();
    }
});
