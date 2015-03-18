
(function(){

	var $drawer_wrap = $( ".drawer-wrap" ),
		$actions_wrap = $( ".actions-wrap" ),
		$search_wrap = $( ".js-search-wrap" );


	// toggle drawer and actions panels
	$( ".js-toggle-drawer" ).click(function() {
		$drawer_wrap.toggleClass( "is-hidden" );
	});
	$( ".js-toggle-actions" ).click(function() {
		$actions_wrap.toggleClass( "is-hidden" );
	});


	// naviagte to main sections on main nav item click event
	$( ".main-nav__link.-files" ).click(function() {
		// $drawer_wrap.toggleClass( "is-hidden" );
		// toggle class on main-container when drawer is open
		// $( ".main-container" ).toggleClass( "drawer-is-open" );
		location.href = "files.html";
	});
	$( ".main-nav__link.-moments" ).click(function() {
		location.href = "moments.html";
	});


	// click event for each row in the table (except the header)
	// when clicked, this currently shows the actions panel
	$( ".table__row:not(.-header)" ).on( "click", function(){
		$( ".table__row" ).removeClass( "is-selected" );
		$(this).toggleClass( "is-selected" );
		$actions_wrap.toggleClass( "is-hidden" );
		// toggle class on main-container when actions is open
		$( ".main-container" ).toggleClass( "actions-is-open" );
	});


	// removes classes on all list-items, then sets a class on the one 
	// the user clicked on and highlights it
	$( ".options-list__link" ).on( "click", function(){
		$( ".options-list__link" ).removeClass( "is-selected" );
		$(this).toggleClass( "is-selected" );
	});


	// animates the opacity of the main section
	$( ".drawer .options-list__link" ).on( "click", function(){
		$( ".section-wrap.-files, .panel-header.-stage" ).animate({
			"opacity": "toggle"
		}, {
			duration: 300
		});
	});



	// set file exploer view 
	// options:
	// 		:single view
	// 		:split-view - 2 cols
	// 		:split-view - 3 cols
	// 		
	// 		Th 3 variations are hardcoded in the HTML.
	// 		This just sets display for the 3 variations
	// 		(hides all then shows the target view)
	var setFileExplorerView = function (obj) {
		$( ".table-wrap-outer" ).hide();
		obj.show();
	};
	
	$( ".js-buttons-files .button" ).on( "click", function(){
		setFileExplorerView($( $(this).data("class") ));
	});
	// set to single view by default
	setFileExplorerView($( ".-cols-1" ));



	// animate all collapsable lists
	$( ".js-toggle-expand-list" ).on( "click", function(){
		// console.log("hit");
		$( this ).parent().toggleClass( "is-collapsed" );
		$( this ).parent().find( ".options-list__inner-wrap" ).animate({
			"height": "toggle"
		}, {
			duration: 300
		});
	});


	// show search "modal" screen
	$( ".js-search" ).on( "click", function(){
		$( ".search-wrap" ).toggleClass( "is-hidden" );
		$actions_wrap.addClass( "is-hidden" );
	});



	// set hidden classes to show content immediately 
	// $drawer_wrap.removeClass( "is-hidden" );
	// $actions_wrap.removeClass( "is-hidden" );
	// $( ".panel-header.-stage" ).removeClass( "is-hidden" );
	$( ".panel-header.-stage" ).removeClass( "is-hidden" );
	$( ".section-wrap.-moments" ).removeClass( "is-hidden" );
	$( ".section-wrap.-files" ).removeClass( "is-hidden" );


	// hide search "modal" screen
	$search_wrap.addClass( "is-hidden" );

	// close search panel
	$( ".js-search-close" ).on( "click", function(){
		$search_wrap.addClass( "is-hidden" );
	});




})();
