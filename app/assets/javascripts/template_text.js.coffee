# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


@edit_template = (template_id) ->
  $.ajax
    url: '/template_text/srv_edit_template_modal'
    type: 'POST'
    async: false
    data: {template_id:template_id}
    success: (msg) ->
      $("#edit_template_modal_container").html msg
      $("#edit_template_modal").modal 'show'
#      location.replace '/distribution_list'

  false



$(document).ready ($) ->
  $("#newTemplateForm").validate
    rules:
      inputName:
        required: true
      inputText:
        required: true
      inputTranslite:
        required: false

    errorClass: "input_error"
    errorElement: "em"
    messages:
      inputName: ""
      inputText: ""

    submitHandler: (form) ->
      queryString = $("#newTemplateForm").serialize()
      $.ajax
        url: "/template_text/srv_add_template"
        type: "POST"
        async: false
        data: queryString
        success: (msg) ->
          location.reload()

      false