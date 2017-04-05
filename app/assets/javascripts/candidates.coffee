# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $('#candidate_phone').mask("(999) 999-9999");
  $('#candidate_fax').mask("(999) 999-9999");
return

