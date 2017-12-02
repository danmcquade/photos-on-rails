$(document).on('turbolinks:load', function () {
  $('#favicon').click(function () {
    $(this).toggleClass('no-fav')
    $(this).find('i').toggleClass('fa-star-o', 'fa-star')
    $(this).toggleClass('fav')
    $(this).find('i').toggleClass('fa-star', 'fa-star-o')
  })
})
