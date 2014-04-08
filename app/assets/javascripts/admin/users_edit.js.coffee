

$(document).ready ($) ->

  $("#sms_service_edit").validate
    rules:
      user_id:
        required: true
      login:
        required: true
      username:
        required: true
      email:
        required: true
      pwd:
        required: true
      price_sms:
        { required: true, number: true }
      price_voice:
        { required: true, number: true }



    errorClass: "input_error"
    errorElement: "em"
    messages:
      login: ''
      username: ''
      email: ''
      pwd: ''
      price_sms: ''
      price_voice: ''

    submitHandler: () ->
      queryString = $("#sms_user_edit").serialize()
      $.ajax
        url: '/admin/users/srv_user_edit'
        type: 'POST'
        data: queryString
        success: () ->
          location.replace '/admin/users'

      false