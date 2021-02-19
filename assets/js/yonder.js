window.onscroll = function() {
    if( window.pageYOffset > 2 ){
        $('.piki').css('top', '0');
        //$('.piki').css('animation', 'smoothScroll .2s forwards');
    }else{
        $('.piki').css('top', '40px');
        //$('.piki').css('animation', '');
    }
}

function toggleDropdown(e) {
    const _d = $(e.target).closest('.dropdown'),
        _m = $('.dropdown-menu', _d);
    setTimeout(function() {
        const shouldOpen = e.type !== 'click' && _d.is(':hover');
        _m.toggleClass('show', shouldOpen);
        _d.toggleClass('show', shouldOpen);
        $('[data-toggle="dropdown"]', _d).attr('aria-expanded', shouldOpen);
    }, e.type === 'mouseleave' ? 300 : 0);
}

$('body')
    .on('mouseenter mouseleave', '.dropdown', toggleDropdown)
    .on('click', '.dropdown-menu a', toggleDropdown);


$('.promo-alert').on('closed.bs.alert', function () {
    $(".kyun").css("margin-top", "110px");
})

$(document).ready(function() {
    $('.slippry-slider').slippry({
        transition:'fade',
        pager:false,
    });
    $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,

        fixedContentPos: false
    });
});