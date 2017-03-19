# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $("#aha_form").hide()
  $("#continue_button").click ->
    show_aha_form()
  $("#back_button").click ->
    show_ic_screening_form()
  return

show_aha_form = ->
  $("#ic_screening_form").hide()
  $("#aha_form").show()
  return

show_ic_screening_form = ->
  $("#ic_screening_form").show()
  $("#aha_form").hide()
  return

