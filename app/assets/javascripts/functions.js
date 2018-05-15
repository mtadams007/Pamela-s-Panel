$( document ).on('turbolinks:load', function() {
    let form;

    $(".nav-link").hover(function(){
       $(this).addClass("coloring");
    }, function(){
      $(this).removeClass("coloring");
    });
});
