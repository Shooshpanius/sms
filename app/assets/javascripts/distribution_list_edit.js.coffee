
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