//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready (function () {
  
  for (i = 1; i < 5; i++)
    $('[color-item-id=' + i + ']').css('opacity', '0.2')
})


function menu_click(marginTop, colorItemId) {
  $('#content').animate({
    marginTop: marginTop
  })

  $('[color-item-id=' + colorItemId + ']').css('opacity', '1')
  $('[color-item-id=' + colorItemId + ']').css('background', '#dc7e19')
}
