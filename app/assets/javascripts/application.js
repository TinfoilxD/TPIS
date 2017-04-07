// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require moment
//= require date
//= require maskedinput
//= require fullcalendar
//= require_tree .
//= require bootstrap-datetimepicker





$( document ).on('turbolinks:load', function() {
    // setNaviToggle()
    setTimeslotCalendar()
    setBookingCalendar()
    setAppointmentCalendar()
    overrideArrowButtons()
    datePickerSet()
});

function setTimeslotCalendar()
{

    $('#timeslot_calendar').fullCalendar({
        dayClick: function(date, jsEvent, view) {
            eventData = {timeslot: {start: date.format()}}
            $.ajax({
                url: "/timeslots/create",
                type: "POST",
                data: eventData,
                dataType: 'json',
                success: function(json) {
                    $("#timeslot_calendar").fullCalendar('refetchEvents')
                    $("#timeslot_calendar").fullCalendar('rerenderEvents');
                }
            });

        },
        eventClick: function(calEvent, jsEvent, view) {
            eventData = {start: calEvent.start.format()}
            $.ajax({
                url: "/timeslots/delete_where",
                type: "POST",
                data: eventData,
                datatype: 'json',
                success: function(json) {
                    $("#timeslot_calendar").fullCalendar('refetchEvents')
                    $("#timeslot_calendar").fullCalendar('rerenderEvents')
                }
            });
        },
        header: {
            left   : 'prev,next',
            center : 'title',
            right : 'none'
        },
        eventSources: [{url : '/timeslots/list', color: 'rgb(40,167,255)'}],
        defaultView: 'agendaWeek',
        slotDuration: '01:00:00',
        slotLabelInterval: '01:00:00',
        minTime: '09:00',
        maxTime: '18:00',
        contentHeight: 'auto',
        allDaySlot: false,
        disableDragging: true,
        allDayDefault: false,
        timezone: 'local'
    });

}

function overrideArrowButtons()
{
    var prevButton = $('#booking_calendar .fc-prev-button')
    var nextButton = $('#booking_calendar .fc-next-button')
    prevButton.css('display','none')
    prevButton.click(function(){
        nextButton.css('display','inline')
        prevButton.css('display','none')

    });
    nextButton.click(function(){
        prevButton.css('display','inline')
        nextButton.css('display','none')

    });
}

function setBookingCalendar()
{
    $('#booking_calendar').fullCalendar({
        eventClick: function(calEvent, jsEvent, view)
        {
            //eventData = {appointment: {start: calEvent.start.format()}}

            eventDate = Date.parse((calEvent.start.format()))
            //2017-3-29 10:00:00
            eventData = {appointment: {start: calEvent.start.format(), application_form_id: $('#application_form_id').val()}}
            //eventEnd = new Date(eventDate.setHours(eventDate.getHours()+1))
            //month = eventDate.getMonth() + "-"
            //dayofMonth = eventDate.getDate() + "-"
            //year = eventDate.getFullYear() + " "
            //hour = eventDate.getHours()
            if (confirm('Create an appointment on ' +
                        eventDate.toString("M/dd/yyyy") + " from " + eventDate.toString("hh:mm") + " to "
                        + (eventDate.add(1).hours()).toString("hh:mm")
                        + '?')
            )
            {
                $.ajax({
                    url: "/book_appointment",
                    type: "POST",
                    data: eventData,
                    datatype: 'json',
                    success: function(json) {

                        $("#booking_calendar").fullCalendar('refetchEvents')
                        $("#booking_calendar").fullCalendar('rerenderEvents')
                        location.href = "/"
                    }
                });
            }
        },
        header: {
            left   : 'prev,next',
            center : 'title',
            right : 'none'
        },
        eventSources: [{url : '/timeslots/list', color: 'rgb(40,167,255)'}],
        defaultView: 'agendaWeek',
        slotDuration: '01:00:00',
        slotLabelInterval: '01:00:00',
        minTime: '09:00',
        maxTime: '18:00',
        contentHeight: 'auto',
        allDaySlot: false,
        disableDragging: true,
        allDayDefault: false,
        timezone: 'local'
    });

}

function setAppointmentCalendar()
{
    $('#appointment_calendar').fullCalendar({

        header: {
            left   : 'prev,next',
            center : 'title',
            right : 'agendaWeek, month'
        },
        eventSources: [{url : '/appointments_list', color: 'rgb(89,26,20)'}],
        defaultView: 'agendaWeek',
        slotDuration: '01:00:00',
        slotLabelInterval: '01:00:00',
        minTime: '09:00',
        maxTime: '18:00',
        contentHeight: 'auto',
        allDaySlot: false,
        disableDragging: true,
        allDayDefault: false,
        timezone: 'local'
    });
}


//Uncomment this if we want to have dropdowns expand on hover instead of click
// function setNaviToggle() {
//     $('ul.nav li.dropdown').hover(function() {
//         $(this).find('.dropdown-menu').toggle();
//         $(this).toggleClass('active')
//     }, function() {
//         $(this).find('.dropdown-menu').toggle();
//         $(this).toggleClass('active')
//
//     });
// }

// $('.input-group.date').datepicker({changeMonth: true,
//     changeYear: true});


function datePickerSet()
{
   $('#datetimepicker6').datetimepicker({format: 'MM/DD/YYYY'});
   $('#datetimepicker7').datetimepicker({format: 'MM/DD/YYYY'});
   $('#find_between_button').click(function(){
       start_var = $('#start_value').val()
       end_var =  $('#end_value').val()
       ajaxData = {start: start_var, end: end_var}
        $.ajax({
            url: "/appointment_date_between",
            type: "POST",
            data: ajaxData,
            datatype: 'json',
            success: function(data) {
                for(key in data) {
                    start_date = Date.parse(data[key].start)
                    end_date = Date.parse(data[key].end)

                    $('#report_display_table').append("<tr><td></td><td></td><td></td><td></td><td>"
                        + start_date.toString("MM/dd/yyyy") + "</td><td>"
                        + start_date.toString("HH:mm") + "</td><td>"
                        + end_date.toString("HH:mm") + "</td></tr>")
                }


            }
        })
    })
}
