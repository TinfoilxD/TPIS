#$(document).on 'turbolinks:load', ->
#  setFullCalendar()
#  overrideArrowButtons()
#  return
#
#setFullCalendar = ->
#  $('.calendar').fullCalendar({
#  header: {
#    left   : 'prev,next',
#    center : 'title',
#    right : 'none'
#  },
#  defaultView: 'agendaWeek',
#  slotDuration: '01:00:00',
#  slotLabelInterval: '01:00:00',
#  minTime: '09:00',
#  maxTime: '18:00',
#  contentHeight: 'auto',
#  allDaySlot: false,
#  disableDragging: true
#  });
#  return
#
#overrideArrowButtons = ->
#  prevButton = $('.fc-prev-button')
#  nextButton = $('.fc-next-button')
#  prevButton.css('display','none')
#  prevButton.click ->
#    nextButton.css('display','inline')
#    prevButton.css('display','none')
#    return
#  nextButton.click ->
#    prevButton.css('display','inline')
#    nextButton.css('display','none')
#    return
#  return



#function setFullCalendar()
#{
#  $('#calendar').fullCalendar({
#  header: {
#    left   : 'prev,next',
#    center : 'title',
#    right : 'none'
#  },
#  defaultView: 'agendaWeek',
#  slotDuration: '01:00:00',
#  slotLabelInterval: '01:00:00',
#  minTime: '09:00',
#  maxTime: '18:00',
#  contentHeight: 'auto',
#  allDaySlot: false,
#  disableDragging: true
#});
#}
#
#function overrideArrowButtons()
#{
#var prevButton = $('.fc-prev-button')
#var nextButton = $('.fc-next-button')
#prevButton.css('display','none')
#prevButton.click(function(){
#    nextButton.css('display','inline')
#  prevButton.css('display','none')
#
#});
#nextButton.click(function(){
#    prevButton.css('display','inline')
#  nextButton.css('display','none')
#
#});
#}