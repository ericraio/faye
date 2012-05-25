# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).on 'ajaxComplete ready', ->
  if $('.embed-video').length == 0
    $('embed').attr({wmode:"transparent"})
    $('embed').append('<param name="wmode" value="transparent" />')
    $('embed').wrap('<div class="embed-video" />')
    $('.tabs').tab('show')

    $('div.tab-content div').each (index) ->
        $('.tabs').append("<li #{'class="active"' if index == 0}><a href=\"#video-#{index}\"  data-toggle='tab'>Video #{index + 1}</a></li>")
        $(this).attr 'id', "video-#{index}"
        $(this).addClass('tab-pane')
        $(this).addClass('active') if index == 0



  $('.btn-report-episode').on "click", ->
    $('#report-episode-modal').modal()

  dataString = "episode_id=#{$('.btn-warning').data('episode-id')}"
  $('.btn-warning').on "click", ->
      $.ajax {
        url: 'report'
        cache: false
        data: dataString
        dataType: 'json'
        success: ->
          window.location.reload()
        type: 'post'
      }

  $(".episode-comment-textfield").keypress (e) ->
    if e.which is 13
      e.preventDefault()

    if e.which is 13 and $(this).val() != ''
      e.preventDefault()
      $(this).blur();
      $('.comment-btn').focus().click();
      $(this).val('')

