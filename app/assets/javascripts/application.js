//= require jquery
//= require jquery_ujs
//= require_tree .

// animate content
$(document).ready(function() {
  var w = screen.width-150;
  var c = $('.nav-page').size();

  $('.nav-page').css("width", w)

  $('.ctrl-prev').click(function() {
    var p = parseInt($('#nav-page-holder').css('margin-left'));
    if ((p < 0) && ((p / w) - Math.floor(p / w) == 0))
      $('[nav-item-id=' + Math.abs(p / w) + ']').click()
  })

  $('.ctrl-next').click(function() {
    var p = parseInt($('#nav-page-holder').css('margin-left'));
    if ((p > -w * (c-1)) && ((p / w) - Math.floor(p / w) == 0))
      $('[nav-item-id=' + (Math.abs(p / w)+2) + ']').click()
  })
    
  $('[nav-item-id=1]').click(function() {
    $('#nav-page-holder').animate({ marginLeft: 0 })

    $('[nav-item-id=1]').addClass('active')
    $('[nav-item-id=2]').removeClass('active')
    $('[nav-item-id=3]').removeClass('active')
    $('[nav-item-id=4]').removeClass('active')
    $('[nav-item-id=5]').removeClass('active')
  })

  $('[nav-item-id=2]').click(function() {
    $('#nav-page-holder').animate({ marginLeft: -w * 1 })

    $('[nav-item-id=2]').addClass('active')
    $('[nav-item-id=1]').removeClass('active')
    $('[nav-item-id=3]').removeClass('active')
    $('[nav-item-id=4]').removeClass('active')
    $('[nav-item-id=5]').removeClass('active')
  })

  $('[nav-item-id=3]').click(function() {
    $('#nav-page-holder').animate({ marginLeft: -w * 2 })

    $('[nav-item-id=3]').addClass('active')
    $('[nav-item-id=1]').removeClass('active')
    $('[nav-item-id=2]').removeClass('active')
    $('[nav-item-id=4]').removeClass('active')
    $('[nav-item-id=5]').removeClass('active')
  })

  $('[nav-item-id=4]').click(function() {
    $('#nav-page-holder').animate({ marginLeft: -w * 3 })

    $('[nav-item-id=4]').addClass('active')
    $('[nav-item-id=1]').removeClass('active')
    $('[nav-item-id=2]').removeClass('active')
    $('[nav-item-id=3]').removeClass('active')
    $('[nav-item-id=5]').removeClass('active')
  })

  $('[nav-item-id=5]').click(function() {
    $('#nav-page-holder').animate({ marginLeft: -w * 4 })

    $('[nav-item-id=5]').addClass('active')
    $('[nav-item-id=1]').removeClass('active')
    $('[nav-item-id=2]').removeClass('active')
    $('[nav-item-id=3]').removeClass('active')
    $('[nav-item-id=4]').removeClass('active')
  })
})
