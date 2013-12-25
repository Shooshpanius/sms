# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


@delete_list = (list_id) ->
  if confirm('Удалить файл?')
    $.ajax
      url: '/distribution_list/srv_delete_list'
      type: 'POST'
      async: false
      data: {list_id:list_id}
      success: () ->
        location.replace '/distribution_list'

    false