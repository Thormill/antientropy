//= require jquery
//= require jquery_ujs
//= require_tree .

// this functions work with "color-item-id" property
colors = ['blue', 'purple', 'green', 'orange', 'yellow', 'pink']

$(document).ready (function () { 
  clear_all_opacity()
})

function clear_all_opacity() {
  var i = 1;
  do {
    $('[color-item-id=' + i + ']').css('opacity', '0.1')
    clear_border(i)
    i++
  } while ( $('div').is('[color-item-id=' + i + ']') )  
}

function clear_border(colorItemId) {
  for (var i = 1; i < colors.length; i++)
    $('[color-item-id=' + colorItemId + ']').removeClass(colors[i])
}

function menu_click(marginTop, colorItemId) {
  clear_all_opacity()
  
  $('#content').animate({
    marginTop: marginTop
  })

  $('[color-item-id=' + colorItemId + ']').css('opacity', '1')
  $('[color-item-id=' + colorItemId + ']').addClass('green') // сделать выбор 1 из 5 цветов
}