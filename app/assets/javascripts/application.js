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
//= require dataTables/jquery.dataTables
//= require turbolinks
//= require bootstrap
//= require moment
//= require date
//= require maskedinput
//= require fullcalendar
//= require Chart.bundle
//= require chartkick
//= require_tree .
//= require bootstrap-datetimepicker





$( document ).on('turbolinks:load', function() {
    // setNaviToggle()
    setTimeslotCalendar()
    setBookingCalendar()
    setAppointmentCalendar()
    overrideArrowButtons()
    datePickerSet()
    addListeners()
    systemSearch()
    sortTable()
});


function addListeners()
{
    $('#get_security_question').click(function() {
        userData = {email: $('#user_email').val()}
        $.ajax({
            url: "/user_controls/security_question_render",
            type: "POST",
            data: userData,
            dataType: 'json',
            success: function(json) {
                $('#security_question_area').empty()
                $('#security_question_area').append("<br> Please answer your security question: " + json.security_question +
                "<br> <input type='text' id='security_question_answer'/>")
                $('#submit_area').empty()
                $('#submit_area').append("<input type='button' id='form_submission' value='Send Password Reset Email'/>")
                $('#form_submission').click(function()
                {
                    userQuestionData = {email: $('#user_email').val(), answer: $('#security_question_answer').val()}
                    $.ajax({
                        url: '/answer_check/',
                        type: "POST",
                        data: userQuestionData,
                        dataType: 'json',
                        success: function(json) {
                            if(json.correct == true)
                                $('#new_user').submit()
                            else
                                $('#security_question_area').prepend("<div class='alert alert-danger'>Your answer is not correct.</div>")
                        }
                    });
                })

            }
        })
    })
}
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

                        location.href = "/bycandidate/" + json.id
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
        eventClick: function(calEvent, jsEvent, view)
        {
            eventData = {id : calEvent.id}
            $.ajax({
                url: "/appointments_calendar_show/",
                type: "POST",
                data: eventData,
                datatype: 'json',
                success: function(json) {
                    if(json.path)
                    window.location = json.path
                }
            });

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
                $('#report_display_table tbody tr').remove();
                for(key in data) {
                    candidate_first_name = data[key].cfn
                    candidate_last_name = data[key].cln
                    course_type = data[key].course_type
                    faculty_name = ((data[key].ffn) + " ").concat(data[key].fln)
                    //2017-04-06 19:09:39.719376
                    created_at_substring = (data[key].created_at).substring(0,10)
                    created_at = Date.parseExact(created_at_substring, 'yyyy-mm-dd')

                    $('#report_display_table tbody').append("<tr><td>"
                        + candidate_first_name + "</td><td>"
                        + candidate_last_name + "</td><td>"
                        + course_type + "</td><td>"
                        + faculty_name + "</td><td>"
                        + created_at.toString('mm-dd-yyyy') + "</td> ")

                }


            }
        })
    })
}


// Search Function for User Controls //

// $(document).ready(function() {
function systemSearch()
{
   // var activeSystemClass = $('.list-group-item.active');

    //something is entered in search form
    $('#system-search').keyup( function() {
        console.log("Start system search");
        var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {

            //Lower text for case insensitive
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                    + $(that).val()
                    + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }

            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();

            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 0)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
        }
    });
}






function sortTable(n) {
    var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
    table = document.getElementById("myTable");
    switching = true;
    dir = "asc";
    while (switching) {
        switching = false;
        rows = table.getElementsByTagName("TR");
        for (i = 1; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            x = rows[i].getElementsByTagName("TD")[n];
            y = rows[i + 1].getElementsByTagName("TD")[n];
            if (dir == "asc") {
                if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                    shouldSwitch= true;
                    break;
                }
            } else if (dir == "desc") {
                if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                    //if so, mark as a switch and break the loop:
                    shouldSwitch= true;
                    break;
                }
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
            switchcount ++;
        } else {
            if (switchcount == 0 && dir == "asc") {
                dir = "desc";
                switching = true;
            }
        }
    }
}