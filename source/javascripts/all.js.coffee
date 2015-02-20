//= require jquery
//= require underscore
//= require_tree .

animate_carousel = ($carousel)->
  items = $carousel.find('.item.active + .item')
  $next_item = if items.length > 0 then items else $carousel.find('.item:first')

  $carousel.find('.item.active').removeClass('active')
  $next_item.addClass('active')

  setTimeout((-> animate_carousel($carousel)), 3000)

initialize_carousel = ($carousel)->
  $items = $carousel.find('.item')
  $item = $ $items[_.random($items.length)]
  $item.addClass 'active'

$ ->
  $('.carousel').each ()->
    initialize_carousel $(this)
    animate_carousel $(this)
