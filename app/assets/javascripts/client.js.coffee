# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


@phone_edit_show = (phone_id) ->
  $.ajax
    url: '/client/srv_phone_edit_show'
    type: 'POST'
    async: false
    data: {phone_id:phone_id}
    success: (msg) ->
      $("#client_phone_dialog").html msg

    false


@phone_edit_save = ->
  queryString = $("#phone_edit").serialize()
  $.ajax
    url: '/client/srv_phone_edit_save'
    type: 'POST'
    data: queryString
    success: () ->
      $("#mPhoneEdit").modal 'hide'

  false