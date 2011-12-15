// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

//Animate content
  $(document).ready(function() {
    $("[nav-item-id='1']").click(function() {
      $("#nav-page-holder").animate({
        marginLeft: -0
      });

      $("[nav-item-id='1']").addClass("active");
      $("[nav-item-id='2']").removeClass("active");
    });

    $("[nav-item-id='2']").click(function() {
      $("#nav-page-holder").animate({
        marginLeft: -1600
      });

      $("[nav-item-id='2']").addClass("active");
      $("[nav-item-id='1']").removeClass("active");
    });
  });