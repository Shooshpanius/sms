# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ($) ->

  $("#login_form").validate
    rules:
      login:
        required: true
      password:
        required: true

    errorClass: "input_error"
    errorElement: "em"
    messages:
      login: ""
      password: ""


    submitHandler: (form) ->
      queryString = {
        login: $('#login').val(),
        password: CryptoJS.MD5($('#password').val()).toString()
      }
      $.ajax
        url: "/login/srv_check_login"
        type: "POST"
        async: false
        data: queryString
        success: (msg) ->
          location.reload()

      false