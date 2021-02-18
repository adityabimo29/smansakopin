window.onscroll = function() {
    if( window.pageYOffset > 30 ){
        $('.piki').css('top', '0');
    }else{
        $('.piki').css('top', '40px');
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
    //alert('adsdas');
})

$(document).ready(function() {

    $('.show-order').click(function(e) {
        $('#myModalLabel').html($(this).attr('title'));
        $('#myModalBody').html('Loading...');
        var url = $(this).attr('href');
        $('#myModal').modal();
        $('#myModalBody').load(url);
        return false;
    });
    $.get('https://widget.livecs.id/status/d87e4fe3-9203-409c-87a7-402c454ab7be', function(data) {
        if (data == 1) {
            $('.chat_button_sc').show();
        } else {
            $('.chat_button_sc').hide();
        }
    });
    $('#chat_button_wa').click(function(e) {
        $.get("https://www.domosquare.com/manage/ds-api/wapop.php", function(data) {
            $('#whatsappModal .modal-body').html(data);
        });
        $('#whatsappModal').modal();
        return false;
    });
    document.addEventListener("touchstart", function() {
        $('#chat_button').css('opacity', '0.25');
        $('.chat_button_sc').css('opacity', '0.25');
    });
    document.addEventListener("touchend", function() {
        $('#chat_button').css('opacity', '1');
        $('.chat_button_sc').css('opacity', '1');
    });
});