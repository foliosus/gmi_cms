// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

jQuery(function($) {
  $('#messages .flash_close').click(function() {
    $(this).closest('.flash').slideUp('fast', function() {
      $(this).remove();
    });
    return false;
  });

  // After 10 seconds, close any flash messages
  setTimeout(function() {
    $('#messages .flash_close').click();
  }, 10 * 1000);


  // Build a nicely responsive nav
  var $window = $(window),
      $menu_ul = $('#primary_menu ul');
  $('#primary_menu').prepend('<button>Menu</button>');
  $('#primary_menu button').click(function() {
    $menu_ul.toggle(200);
  });
  $window.resize(function() {
    if($window.width() > 767) {
      $menu_ul.show();
    } else {
      $menu_ul.hide();
    }
  });
});