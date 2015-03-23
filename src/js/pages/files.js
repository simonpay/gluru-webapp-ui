
(function(){

	$( ".main-nav__link.-files" ).addClass( "is-selected" );

	// show debug buttons
	$( ".button-group" ).addClass( "is-hidden" );
	$( ".js-buttons-files" ).removeClass( "is-hidden" );
	$( ".js-buttons-generic" ).removeClass( "is-hidden" );

	$( ".-drawer.js-toggle-drawer" ).click();

})();
