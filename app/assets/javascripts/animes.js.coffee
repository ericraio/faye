# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).on 'ajaxComplete ready', ->
  # $('div.thumbnail').click ->
  #   $(this).popover('hide')

  # $('div.thumbnail').hover ->
  #   $(this).popover('show')


  $(".filter-text").keypress (e) ->
    if e.which is 13
      e.preventDefault()
      $(this).blur()
      $('.filter-btn').focus().click()

  $(window).scroll ->
    if $(this).scrollTop() == 0
      $('.anime-nav').removeClass('well').css({'margin-left': '0px', 'top': "116px"})
    else
      $('.anime-nav').addClass('well').css({'margin-left': '-15px', 'top': $(this).scrollTop() + 35 + "px"})
