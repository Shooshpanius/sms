

@import_params_show = () ->
  $("#importParamsShow").toggle "slow"

@delete_file_string = (file_string_id) ->
  if confirm('Удалить строку?')
    $.ajax
      url: '/distribution_file/srv_delete_file_string'
      type: 'POST'
      async: false
      data: {file_string_id:file_string_id}
      success: (msg) ->
        $("#"+msg).hide "slow", ->
          $(this).remove()

    false

@save_settings = ->
  queryString = $("#filter_form").serialize()
  $.ajax
    url: "/distribution_file/srv_save_settings"
    type: "POST"
#    async: false
    data: queryString
    success: () ->
      $("#myModalSave").modal 'show'
  false



@create_list = ->
  $("#filter_form").validate
    rules:
      s_fio:
        required: true
      dogovor:
        required: true
      phone:
        required: true
      sum_main:
        required: true
      sum_plat:
        required: true
      addr:
        required: true
#      contact:
#        required: true
      date_oplata:
        required: true

    errorClass: "input_error"
    errorElement: "em"
    messages:
      s_fio: ''
      dogovor: ''
      phone: ''
      sum_main: ''
      sum_plat: ''
      addr: ''
#      contact: ''
      date_oplata: ''

    submitHandler: () ->
      queryString = $("#filter_form").serialize()
      $.ajax
        url: '/distribution_list/srv_file_to_list'
        type: 'POST'
#        async: false
        data: queryString
        beforeSend: () ->
          $("#myModalListLoad").modal 'show'
        success: () ->
          $("#myModalList").modal 'show'
          $("#myModalListLoad").modal 'hide'

      false