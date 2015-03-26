
(function(){

	$( ".main-nav__link.-files" ).addClass( "is-selected" );

	// show debug buttons
	$( ".button-group" ).addClass( "is-hidden" );
	$( ".js-buttons-files" ).removeClass( "is-hidden" );
	$( ".js-buttons-generic" ).removeClass( "is-hidden" );

	$( ".js-icon-button.js-toggle-drawer" ).click();

})();
