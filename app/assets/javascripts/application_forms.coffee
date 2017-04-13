# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->

  $("#ic_screening_form").hide()
  $("#ic_screening_form1").hide()
  $("#ic_screening_form2").hide()
  $("#ic_screening_form3").hide()
  $("#ic_screening_form4").hide()
  $("#aha_form").hide()
  $("#course_input_data").show()



#    $("#back_button").click ->
#      show_course_input_data()
#
#  $("#back_button1").click ->
#    show_ic_screening_form()


  $("#continue_button1").click ->
    show_course_input_data()

  $("#continue_button2").click ->
  show_ic_screening_form()


  $("#continue_button3").click ->
    show_ic_screening_form2()

    $("#continue_button4").click ->
    show_ic_screening_form3()

  $("#continue_button5").click ->
    show_ic_screening_form4()

    $("#continue_button6").click ->
    show_aha_form()

  return

show_course_input_data = ->
  $("#course_input_data").show()
  $("#ic_screening_form1").hide()
  $("#ic_screening_form2").hide()
  $("#ic_screening_form3").hide()
  $("#ic_screening_form4").hide()
  $("#ic_screening_form").hide()
  $("#aha_form").hide()
  return



show_ic_screening_form = ->
  $("#course_input_data").hide()
  $("#ic_screening_form1").show()
  $("#ic_screening_form2").hide()
  $("#ic_screening_form3").hide()
  $("#ic_screening_form4").hide()
  $("#ic_screening_form").hide()
  $("#aha_form").hide()
  return


show_ic_screening_form1 = ->
  $("#course_input_data").hide()
  $("#ic_screening_form1").hide()
  $("#ic_screening_form2").show()
  $("#ic_screening_form3").hide()
  $("#ic_screening_form4").hide()
  $("#ic_screening_form").hide()
  $("#aha_form").hide()
  return


show_ic_screening_form2 = ->
  $("#course_input_data").hide()
  $("#ic_screening_form1").hide()
  $("#ic_screening_form2").hide()
  $("#ic_screening_form3").show()
  $("#ic_screening_form4").hide()
  $("#ic_screening_form").hide()
  $("#aha_form").hide()
  return

show_ic_screening_form3 = ->
  $("#course_input_data").hide()
  $("#ic_screening_form1").hide()
  $("#ic_screening_form2").hide()
  $("#ic_screening_form3").hide()
  $("#ic_screening_form4").show()
  $("#ic_screening_form").hide()
  $("#aha_form").hide()
  return



show_ic_screening_form4 = ->
  $("#course_input_data").hide()
  $("#ic_screening_form1").hide()
  $("#ic_screening_form2").hide()
  $("#ic_screening_form3").hide()
  $("#ic_screening_form4").hide()
  $("#ic_screening_form").hide()
  $("#aha_form").show()
  return


show_aha_form = ->
  $("#course_input_data").show()
  $("#ic_screening_form1").hide()
  $("#ic_screening_form2").hide()
  $("#ic_screening_form3").hide()
  $("#ic_screening_form4").hide()
  $("#ic_screening_form").hide()
  $("#aha_form").hide()
  return