# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $("#aha_form").hide()
  return

alert_test = ->
  alert "hello"
  return

show_aha_form = ->
  $("#ice_screening_form").hide()
  $("#aha_form").show()
  return

show_ic_screening_form = ->
  $("#ice_screening_form").show()
  $("#aha_form").hide()
  return

