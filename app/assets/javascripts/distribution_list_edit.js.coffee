
@sms_info_show = (list_id, textTemplate) ->
  $.ajax
    url: '/distribution_list/srv_sms_info_show'
    type: 'POST'
    async: false
    data: {
      list_id:list_id
      textTemplate: textTemplate
    }
    success: (msg) ->
      stringify_msg = JSON.parse(msg)
      for i of stringify_msg
        $("#title_"+stringify_msg[i].id).attr "title", stringify_msg[i].text
        $("#symbols_"+stringify_msg[i].id).text  stringify_msg[i].sms_length
        $("#parts_"+stringify_msg[i].id).text  stringify_msg[i].sms_parts
    false

@phone_edit_show = (phone_id) ->
  $.ajax
    url: '/client/srv_phone_edit_show'
    type: 'POST'
    async: false
    data: {phone_id:phone_id}
    success: (msg) ->
      $("#client_phone_dialog").html msg
    false

@delete_list_string = (list_string_id) ->
  if confirm('Удалить строку?')
    $.ajax
      url: '/distribution_list/srv_delete_list_string'
      type: 'POST'
      async: false
      data: {list_string_id:list_string_id}
      success: (msg) ->
        $("#"+msg).hide "slow", ->
          $(this).remove()
    false

@send_sms_str = (str_id) ->
  ser_id = $("#s_" + str_id+" :input").serializeArray()
  $.ajax
    url: '/distribution_list/send_sms_str'
    type: 'POST'
    async: false
    data: {
      sms_str_data:ser_id,
      sms_str_id:"#s_"+str_id

    }
    success: (msg) ->

  false


$(document).on "click", "#phone_edit_save", ->
  phone_id = $("#phone_id").val()
  main_phone = $("#main_phone").val()
  second_phone = $("#second_phone").val()
  checkbox = $("#replacement").prop("checked")

  $.ajax
    url: '/client/srv_phone_edit_save'
    type: 'POST'
    sync: false
    data: {phone_id:phone_id, main_phone:main_phone, second_phone:second_phone, checkbox:checkbox}
    success: (msg) ->
      user = eval(msg)
      $("#mPhoneEdit").modal 'hide'
      $("#"+phone_id).html user.phone
  false

$(document).on "change", "#textTemplate", ->
  sms_info_show $("#list_id").val(), $("#textTemplate").val()

  false




$(document).ready ($) ->
  sms_info_show $("#list_id").val(), $("#textTemplate").val()


