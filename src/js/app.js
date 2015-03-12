
(function(){

	var $drawerWrap = $( ".drawer-wrap" ),
		$actionsWrap = $( ".actions-wrap" );
	// $( ".tmp-buttons--drawer .js-toggle" ).click(function() {
	// 	$drawerWrap.toggleClass( "is-hidden" );
	// });
	// $( ".tmp-buttons--actions .js-toggle" ).click(function() {
	// 	$actionsWrap.toggleClass( "is-hidden" );
	// });
	$( ".main-nav__link.-files" ).click(function() {
		$drawerWrap.toggleClass( "is-hidden" );
		$( ".main-container" ).toggleClass( "drawer-is-open" );
	});


	$( ".table__row:not(.-header)" ).on( "click", function(){
		$(this).toggleClass( "is-selected" );
		$actionsWrap.toggleClass( "is-hidden" );
		$( ".main-container" ).toggleClass( "actions-is-open" );
	});

	$( ".drawer__link" ).on( "click", function(){
		$(this).toggleClass( "is-selected" );
	});


	var setFileExplorerView = function (obj) {
		$( ".table-wrap-outer" ).hide();
		obj.show();
	};
	
	$( ".js-buttons-files .button" ).on( "click", function(){
		setFileExplorerView($( $(this).data("class") ));
	});
	setFileExplorerView($( ".-cols-1" ));


})();
