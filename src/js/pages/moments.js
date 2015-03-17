
(function(){

	$( ".panel-header.-stage" ).find( ".stage__heading" ).html( "Moments" );
	$( ".panel-header.-stage" ).find( ".stage__sub-heading" ).html( "18 March, 2015" );
	$( ".main-nav__link.-moments" ).addClass( "is-selected" );

	var $drawerWrap = $( ".drawer-wrap" ),
		$actionsWrap = $( ".actions-wrap" );

	$drawerWrap.addClass( "is-hidden" );
	$actionsWrap.addClass( "is-hidden" );

})();
