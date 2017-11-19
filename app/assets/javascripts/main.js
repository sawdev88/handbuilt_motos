var ready = function() {
  // Toggle drawer
  $('.handle-drawer').on('click', function () {
    $('#drawer').toggleClass('show-drawer');
    $(this).toggleClass('fa-bars fa-close')
  })
};

$(document).on('turbolinks:load', ready);
