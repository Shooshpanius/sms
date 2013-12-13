# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ($) ->
  $("#formFile").validate
    rules:
      inputFile:
        required: true



    errorClass: "input_error"
    errorElement: "em"
    messages:
      inputFile: ""


    submitHandler: (form) ->
      queryString = $("#formFile").serialize()
      $.ajax
        url: "/distribution_file/srv_new_file"
        type: "POST"
        async: false
        data: queryString
        success: (msg) ->
          location.reload()

      false