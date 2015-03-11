
(function(){

	var $drawerWrap = $( ".drawer-wrap" ),
		$actionsWrap = $( ".actions-wrap" );

	// $( ".tmp-buttons--drawer .toggle" ).click(function() {
	// 	$drawerWrap.toggleClass( "is-hidden" );
	// });
	// $( ".tmp-buttons--actions .toggle" ).click(function() {
	// 	$actionsWrap.toggleClass( "is-hidden" );
	// });
	$( ".main-nav__link.-files" ).click(function() {
		$drawerWrap.toggleClass( "is-hidden" );
		$( ".main-container" ).toggleClass( "drawer-is-open" );
	});


	$( ".table__row:not(.-header)" ).on( "click", function(){
		$(this).toggleClass( "is-selected" );
		$actionsWrap.toggleClass( "is-hidden" );
	});

	$( ".drawer__link" ).on( "click", function(){
		$(this).toggleClass( "is-selected" );
	});


})();
