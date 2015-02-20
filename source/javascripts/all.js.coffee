//= require jquery
//= require_tree .

# animate_carousel = ($carousel)->
#   $next_item = (->
#     items = $carousel.find('.item.active + .item')
#     if items.length > 0 then items else $carousel.find('.item:first')
#   )()

#   $carousel.find('.item.active').removeClass('active')
#   $next_item.addClass('active')

#   setTimeout((-> animate_carousel($carousel)), 2000)

# $ ->
#   $('.carousel').each ()->
#     animate_carousel $(this)
