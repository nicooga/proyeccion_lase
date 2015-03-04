//= require jquery
//= require underscore
//= require_tree .

# animate_carousel = ($carousel)->
#   # items = $carousel.find('.item.active + .item')
  # $next_item = if items.length > 0 then items else $carousel.find('.item:first')

  # $carousel.find('.item.active').removeClass('active')
  # $next_item.addClass('active')

  # setTimeout((-> animate_carousel($carousel)), 3000)

# initialize_carousel = ($carousel)->
  # $items = $carousel.find('.item')
  # $item = $ $items[_.random($items.length)]
  # $item.addClass 'active'

animate_carousel_col = ($col)->
  $col.scrollLeft $col.scrollLeft() + 2
  setTimeout((-> animate_carousel_col($col)), 10)

$ ->
  $('.carousel_col').each ()->
    # initialize_carousel $(this)
    animate_carousel_col $(this)
