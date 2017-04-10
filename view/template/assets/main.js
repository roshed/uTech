$(document).ready(function(){
    function showImages(el) {
        var windowHeight = $( window ).height();
        $(el).each(function(){
            var thisPos = $(this).offset().top;

            var topOfWindow = $(window).scrollTop();
            if (topOfWindow + windowHeight - 200 > thisPos ) {
                $(this).addClass("animated pulse");
            }
        });
    }

    // if the image in the window of browser when the page is loaded, show that image
    $(document).ready(function(){
            showImages('.scroll_ef');
    });

    // if the image in the window of browser when scrolling the page, show that image
    $(window).scroll(function() {
            showImages('.scroll_ef');
    });

  $('.boxMenu a').mousedown(function(){
    var name = $(this).attr('id');
    $.ajax({
      method: "POST",
      url: "loadAjax.php",
      data:  { load: name },
    })
      .done(function( msg ) {
    $('#dispInfo').html(msg);
    $('#dispInfo').addClass("animated slideInUp");
    });
  });
});


