# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  top = $('.persistent_total_div').offset().top - parseFloat($('.persistent_total_div').css('marginTop').replace(/auto/, 0))
  $(window).scroll ->
  # what the y position of the scroll is
    y = $(this).scrollTop()

    # whether that's below the form
    if y >= top
    # if so, ad the fixed class
     $('.persistent_total_div').addClass('fixed')
    else
  # otherwise remove it
      $('.persistent_total_div').removeClass('fixed')
