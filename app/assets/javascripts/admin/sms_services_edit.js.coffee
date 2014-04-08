

$(document).ready ($) ->

  $("#sms_service_edit").validate
    rules:
      service_id:
        required: true
      name:
        required: true
      service_type:
        required: true
      login:
        required: true
      password:
        required: true


    errorClass: "input_error"
    errorElement: "em"
    messages:
      name: ''
      service_type: ''
      login: ''
      password: ''


    submitHandler: () ->
      queryString = $("#sms_service_edit").serialize()
      $.ajax
        url: '/admin/sms_services/srv_service_edit'
        type: 'POST'
        data: queryString
        success: () ->
          location.replace '/admin/sms_services'

      false