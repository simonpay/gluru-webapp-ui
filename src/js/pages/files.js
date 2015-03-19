
(function(){

	$( ".main-nav__link.-files" ).addClass( "is-selected" );

	var $drawerWrap = $( ".drawer-wrap" ),
		$actionsWrap = $( ".actions-wrap" );

	// $drawerWrap.removeClass( "is-hidden" );
	// $actionsWrap.removeClass( "is-hidden" );

	// show debug buttons
	$( ".button-group" ).addClass( "is-hidden" );
	$( ".js-buttons-files" ).removeClass( "is-hidden" );
	$( ".js-buttons-generic" ).removeClass( "is-hidden" );

})();
