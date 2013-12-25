
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