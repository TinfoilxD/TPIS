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
//= require fullcalendar
//= require_tree .




$( document ).on('turbolinks:load', function() {
    // setNaviToggle()
    setFullCalendar()
    overrideArrowButtons()
});

function setFullCalendar()
{
    $('#calendar').fullCalendar({
        header: {
            left   : 'prev,next',
            center : 'title',
            right : 'none'
        },
        defaultView: 'agendaWeek',
        slotDuration: '01:00:00',
        slotLabelInterval: '01:00:00',
        minTime: '09:00',
        maxTime: '18:00',
        contentHeight: 'auto',
        allDaySlot: false,
        disableDragging: true,


    });
}

function overrideArrowButtons()
{
    var prevButton = $('.fc-prev-button')
    var nextButton = $('.fc-next-button')
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


