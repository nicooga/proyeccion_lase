//= require jquery
//= require_tree .

resize_carousels = ->
  $('.carousel').each ->
    $this = $(this)

    width = 0
    $this.find('.item').each ->
      width += $(this).width()

    $this.width width + 3

animate_carousel_col = ($col)->
  $col.scrollLeft $col.scrollLeft() + 2
  setTimeout((-> animate_carousel_col($col)), 10)
animate_carousel_cols = $('.carousel_col').each -> animate_carousel_col $(this)

$ animate_carousel_cols
$(window).load resize_carousels
$(window).resize -> resize_carousels
