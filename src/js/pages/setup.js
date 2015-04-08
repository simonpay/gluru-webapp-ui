
(function(){

	$( ".js-header-nav__link.is-selected" )
		.closest( ".js-header-nav__item" )
		.prevAll()
			.find( ".js-header-nav__link" )
				.addClass( "is-complete" );

})();
