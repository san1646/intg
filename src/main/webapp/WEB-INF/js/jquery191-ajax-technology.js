/**
 * Copyright (c) 2013, Sanket Bharaswadkar
 * All rights reserved.
 *
 * Licensed under the BSD, MIT, and GPL (your choice!) Licenses:
 *  BharasSc@mail.uc.edu
 *
 */
$(document).ready(function() {
	    // check name availability on focus lost
	    $('#name').blur(function() {
	        checkAvailability();
	    });
	});

	function checkAvailability() {
	    $.getJSON("account/availability", { name: $('#name').val() }, function(availability) {
	        if (availability.available) {
	            fieldValidated("name", { valid : true });
	        } else {
	            fieldValidated("name", { valid : false,
	                message : $('#name').val() + " is not available, try " + availability.suggestions });
	        }
	    });
	}