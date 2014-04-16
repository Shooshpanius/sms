# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


@delete_sms_queue = ->
  if confirm('Очистить очередь?')
    $.ajax
      url: '/sms_queue/srv_delete_sms_queue'
      type: 'POST'
      async: false
      success: (msg) ->
        location.reload()

    false


@send_sms_queue = ->
  if confirm('Отправить очередь?')
    $.ajax
      url: '/cron/send_sms'
      type: 'GET'
      async: false
      success: (msg) ->
        location.reload()

    false