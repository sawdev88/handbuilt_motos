var ready = function() {
  // Toggle drawer
  // $('.handle-drawer').on('click', function () {
  //   $('#drawer').toggleClass('show-drawer');
  //   $(this).toggleClass('fa-bars fa-close')
  // })
  // Profile settings nav
  $('.avatar-image').on('click', function () {
    $('.profile-settings-list').fadeToggle();
  })
};

$(document).on('turbolinks:load', ready);
