
(function(){

	var $drawerWrap = $( ".drawer-wrap" ),
		$actionsWrap = $( ".actions-wrap" );


	// toggle drawer and actions panels
	$( ".js-toggle-drawer" ).click(function() {
		$drawerWrap.toggleClass( "is-hidden" );
	});
	$( ".js-toggle-actions" ).click(function() {
		$actionsWrap.toggleClass( "is-hidden" );
	});


	// click for main nav link to show drawer
	$( ".main-nav__link.-files" ).click(function() {
		$drawerWrap.toggleClass( "is-hidden" );
		// toggle class on main-container when drawer is open
		$( ".main-container" ).toggleClass( "drawer-is-open" );
	});


	// click event for each row in the table (except the header)
	// when clicked, this currently shows the actions panel
	$( ".table__row:not(.-header)" ).on( "click", function(){
		$( ".table__row" ).removeClass( "is-selected" );
		$(this).toggleClass( "is-selected" );
		$actionsWrap.toggleClass( "is-hidden" );
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
	// 		Th e3 variations are hardcoded in the HTML.
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
		$(this).parent().toggleClass( "is-collapsed" );
		$( this ).parent().find( ".option-list__inner-wrap" ).animate({
			"height": "toggle"
		}, {
			duration: 300
		});
	});


	// // animate timeline group container height
	// $( ".stage__sub-heading" ).on( "click", function(){
	// 	$( ".js-event-1" ).toggle(function() {
	// 	    $(this).stop().animate({
	// 	        width: "350px",
	// 	        height: "300px"
	// 	    }, 500);
	// 	}, function() {
	// 	    $(this).stop().animate({
	// 	        width: "60px",
	// 	        height: "60px"
	// 	    }, 500);
	// 	});
	// });

	// set hidden classes to show content immediately 
	// $drawerWrap.removeClass( "is-hidden" );
	// $actionsWrap.removeClass( "is-hidden" );
	// $( ".panel-header.-stage" ).removeClass( "is-hidden" );
	$( ".panel-header.-stage" ).removeClass( "is-hidden" );
	$( ".section-wrap.-moments" ).removeClass( "is-hidden" );
	$( ".section-wrap.-files" ).removeClass( "is-hidden" );

	// $( ".panel-header.-stage" ).find( ".stage__heading" ).html( "Moments" );
	// $( ".panel-header.-stage" ).find( ".stage__sub-heading" ).html( "18 March, 2015" );


})();
