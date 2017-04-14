# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

form_divs = ["#course_input_data","#ic_screening_form","#ic_screening_form1","#ic_screening_form2","#ic_screening_form3","#ic_screening_form4","#aha_form"]

$(document).on 'turbolinks:load', ->
  show_div(form_divs[0])



  $("#con_ic_screening_form").click ->
    show_div(form_divs[1])

  $("#con_ic_screening_form1").click ->
    show_div(form_divs[2])

  $("#con_ic_screening_form2").click ->
    show_div(form_divs[3])

  $("#con_ic_screening_form3").click ->
    show_div(form_divs[4])

  $("#con_ic_screening_form4").click ->
    show_div(form_divs[5])

  $("#con_aha_form").click ->
    show_div(form_divs[6])

  $("#back_course_input_data").click ->
    show_div(form_divs[0])

  $("#back_ic_screening_form").click ->
    show_div(form_divs[1])

  $("#back_ic_screening_form1").click ->
    show_div(form_divs[2])

  $("#back_ic_screening_form2").click ->
    show_div(form_divs[3])

  $("#back_ic_screening_form3").click ->
    show_div(form_divs[4])

  $("#back_ic_screening_form4").click ->
    show_div(form_divs[5])


  return

show_div = (div_name) ->
  i = 0
  while i < form_divs.length
    if form_divs[i] == div_name
      $(form_divs[i]).show()
    else
      $(form_divs[i]).hide()
    i++
  return
