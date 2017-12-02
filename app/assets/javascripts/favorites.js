$(document).on('turbolinks:load', function() {
  $("#favicon").click(function() {
    $(this).toggleClass('no-fav')
    $(this).toggleClass('fav')
  })
})
