
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

	$( ".options-list__link" ).on( "click", function(){
		$(this).toggleClass( "is-selected" );
	});


	$( ".drawer .options-list__link" ).on( "click", function(){
		$( ".section-wrap.-files, .panel-header.-stage" ).animate({
			"opacity": "toggle"
		}, {
			duration: 300
		});
	});


	var setFileExplorerView = function (obj) {
		$( ".table-wrap-outer" ).hide();
		obj.show();
	};
	
	$( ".js-buttons-files .button" ).on( "click", function(){
		setFileExplorerView($( $(this).data("class") ));
	});
	setFileExplorerView($( ".-cols-1" ));


	$( ".js-toggle-expand-list" ).on( "click", function(){
		// console.log("hit");
		$(this).parent().toggleClass( "is-collapsed" );
		$( this ).parent().find( ".option-list__inner-wrap" ).animate({
			"height": "toggle"
		}, {
			duration: 300
		});
	});


	// $actionsWrap.removeClass( "is-hidden" );
	// $drawerWrap.removeClass( "is-hidden" );
	// $drawerWrap.removeClass( "is-hidden" );


})();
