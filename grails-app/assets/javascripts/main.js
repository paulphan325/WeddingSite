var navActiveOffset = 0;
var firstValCount = 0;
var lastValCount = 0;
var page = $('page');
var firstName = $('#firstName');
var lastName =  $('#lastName');

$(document).ready(function() {
	// Setup on load.
	sizeContent();

	$(window).resize(function() {
		sizeContent();
	});

	// Content Height Sizing
	function sizeContent() {
		if (page.width() == 940) navActiveOffset = 355;
		if (page.width() == 768) navActiveOffset = 183;
		if (page.width() == 400) navActiveOffset = 58;
		if ($(window).height() > 1080) {
			$('.full').height(1080 - $('.icon').height() - 20);
		} else {
			$('.full').height($(window).height() - $('.icon').height() - 20);
		}
		// Sizes the height of the slidewshow.
		$('section#View').height($('ul.slideshow li.on img').height());
	}
	$('ul.slideshow li.on img').ready(function() {
		sizeContent();
	});

	$('#firstName').keyup(function(e) {
		if (firstValCount !== firstName.val().length) {
			firstValCount = firstName.val().length;
			getThings(firstName.val(), $('#lastName').val());
		}
	});

	$('#lastName').keyup(function(e) {
		if (lastValCount !== lastName.val().length) {
			lastValCount = lastName.val().length;
			var fName = firstName.val();
			var lName = lastName.val();
			getThings(fName, lName);
		}
	});

	function getThings(firstName, lastName) {

		if (firstName.length > 0 && lastName.length > 0) {
			$('div.spinner').show();
			$('p.notice').hide();
			$('.guest-count').hide();
			$('.guest-button').hide();
			$('p.final').hide();
			$('#yourresponse').hide();
			$('#response').hide();

			$.ajax({
				method: 'POST',
				url: 'get.php?firstName=' + firstName + '&lastName=' + lastName
			}).done(function(data) {
				if (data.length > 0) {
					var obj = JSON.parse(data);
					$('#yes').removeAttr('checked');
					$('#no').removeAttr('checked');
					if (obj.rsvp === "y") {
						$('#yes').prop('checked', true);
						$('p.final').html("Let's dance!").show();
						$('#click').html("Update RSVP");
					}
					if (obj.rsvp === "n") {
						$('#no').prop('checked', true);
						$('p.final').html("We forgive you!").show();
						$('#click').html("Update RSVP");
					}
					$('p.notice').hide();
					$('#question').fadeIn(function() {});
					$('#yourresponse').fadeIn(function() {});
					$('#response').fadeIn(function() {});
				}
			}).always(function(data) {
				$('div.spinner').fadeOut();
			});
		} else {
			$('p.notice').hide();
			$('.guest-count').hide();
			$('.guest-button').hide();
			$('p.final').hide();
			$('#yourresponse').hide();
			$('#response').hide();
		}
	}

	$("#yes").click(function() {
		if ($(this).is(':checked')) {
			$('#no').attr('checked', false);
			$('p.final').hide();
			$('#question').hide();
			rsvp('y', firstName.val(),lastName.val());
			$('#response').hide();
			$('.guest-count').fadeIn(function() {})
			$('.guest-button').fadeIn(function() {})
		}
	});
	$("#no").click(function() {
		if ($(this).is(':checked')) {
			$('#yes').attr('checked', false);
			rsvp('n', $('#firstName').val(), lastName.val());
			$('#yourresponse').hide();
			finalMessage();
		}
	});

	function rsvp(data, firstName, lastName) {
		$.ajax({
			method: "POST",
			url: "rsvp.php?response=" + data + "&firstName=" + firstName + "&lastName=" + lastName
		});
	}

	function sendMail(rsvp, count, name) {
		$.ajax({
			method: "POST",
			url: "mail.php?response=" + rsvp + "&name=" + name + "&count=" + count
		});
	}

	function guestCount(data, firstName, lastName) {
		var jqxhr = $.ajax({
			method: "POST",
			url: "guestCount.php?response=" + data + "&firstName=" + firstName + "&lastName=" + lastName
		});
		return jqxhr;
	}

	$('.guest-input').keydown(function(e) {
		if (e.which === 13) {
			e.preventDefault();
			$('#click').click();
		}
	});

	function finalMessage() {
		if ($('#yes').prop('checked')) {
			$('p.final').html("Let's dance!");
			var name = firstName.val() + ' ' + lastName.val();
			sendMail('Yes', $('.guest-input').val(), name);
		} else if ($('#no').prop('checked')) {
			$('p.final').html("We will miss you!");
			var name = firstName.val() + ' ' + lastName.val();
			sendMail('No', '0', name);
		}
		$('p.final').fadeIn();
	}

	$(document.body).on("click", "#click", function(e) {
		guestCount($('.guest-input').val(), firstName.val(), lastName.val()).done(function() {
			$('#yourresponse').hide();
			finalMessage();
		});
	});

});