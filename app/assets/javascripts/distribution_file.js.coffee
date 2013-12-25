# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@delete_file = (file_id) ->
  if confirm("Удалить файл?")
    $.ajax
      url: "/distribution_file/srv_delete_file"
      type: "POST"
      async: false
      data: {file_id:file_id}
      success: (msg) ->
        location.reload()

    false