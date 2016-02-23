// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.1.3.js
//= require_tree .
//= require_self
//= require html5shiv.js
//= require main.js
//= require plugins.js
//= modernizr-2.6.2.min.js
//= require bootstrap.min

window.onload = function() {
    var startd = Date.now();
    var endd = Date.parse("2016-12-31");
    var diff = new Date(endd - startd);
    var days = diff/1000/60/60/24;
    days = Math.floor(days);
    $("#daysUntil").html(days + " Days until the wedding!")
};


if (typeof jQuery !== 'undefined') {
    (function($) {
        $('#spinner').ajaxStart(function() {
            $(this).fadeIn();
        }).ajaxStop(function() {
            $(this).fadeOut();
        });
    })(jQuery);
}