
(function(){

	$( ".js-header-nav__link.is-selected" )
		.closest( ".js-header-nav__item" )
		.prevAll()
			.find( ".js-header-nav__link" )
				.addClass( "is-complete" );


	$( "#addTeam" ).on( "click", function(){
		if ( $(this).is(':checked') ) {
			$( ".js-team-settings, .js-team-name" ).removeClass( "is-hidden" );
		} else {
			$( ".js-team-settings, .js-team-name, .js-team-settings, .js-team-settings-sources, .js-team-access-settings, .js-team-invite-people" ).addClass( "is-hidden" );

			// reset redio button for "team settings"
			$( "#radio input" ).removeAttr('checked');
			$( "#radio" ).buttonset('refresh');
		}
	});

	$( "#ConnectSource" ).on( "click", function(){
		$( ".js-team-settings-sources, .js-team-access" ).fadeIn();
	});

	$( ".js-invitedMemberConnectSource#invitedMemberConnectSourceYes" ).on( "click", function(){
		$( ".js-team-settings-sources" ).removeClass( "is-hidden" );
		$( ".js-team-invite-people" ).addClass( "is-hidden" );
	});

	$( ".js-invitedMemberConnectSource#invitedMemberConnectSourceNo" ).on( "click", function(){
		$( ".js-team-invite-people" ).removeClass( "is-hidden" );
		$( ".js-team-settings-sources" ).addClass( "is-hidden" );
		$( ".js-team-access-settings" ).addClass( "is-hidden" );

		// reset select2 sources box
		$( ".js-example-basic-multiple" ).val("").trigger("change");
	});


	$('.js-example-basic-multiple').on("select2:select", function (e) { 
		console.log( "Changed" ); 
		$( ".js-team-access-settings, .js-team-invite-people" ).removeClass( "is-hidden" );
	});


	// .js-team-setup
	// .js-team-name
	// .js-team-settings
	// .js-team-settings-sources
	// .js-team-access-settings
	// .js-team-invite-people

})();
