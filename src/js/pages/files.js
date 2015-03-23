
(function(){

	$( ".main-nav__link.-files" ).addClass( "is-selected" );

	// show debug buttons
	$( ".button-group" ).addClass( "is-hidden" );
	$( ".js-buttons-files" ).removeClass( "is-hidden" );
	$( ".js-buttons-generic" ).removeClass( "is-hidden" );

	$( ".stage-nav__icon.js-toggle-drawer" ).click();

})();
