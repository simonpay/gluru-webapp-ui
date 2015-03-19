
(function(){

	// cached objects
	var $main_container = 		$( ".js-main-container" ),
		$drawer_wrap = 			$( ".js-drawer-wrap" ),
		$actions_wrap = 		$( ".js-actions-wrap" ),
		$search_wrap = 			$( ".js-search-wrap" ),

		// drawer
		$tmp_open_drawer = 		$( ".js-open-drawer" ),
		$tmp_close_drawer = 	$( ".js-close-drawer" ),
		$tmp_toggle_drawer = 	$( ".js-toggle-drawer" ),

		// actions
		$tmp_open_actions = 	$( ".js-open-actions" ),
		$tmp_close_actions = 	$( ".js-close-actions" ),
		$tmp_toggle_actions = 	$( ".js-toggle-actions" );


	var gluru_app = {

		// cache main app obj to variable
		_obj_gluru: gluru_app,


		drawer: {

			set_state: function ( requested_state ) {


				var drawer_is_open = $main_container.hasClass( "drawer-is-open" );
				$( ".js-toggle-drawer" ).removeClass( "-left -right" );

				// open/close drawer based on param "requested_state" passed to function
				if ( requested_state !== undefined ) {

					obj_gluru.drawer["_" + requested_state]();

				// toggle drawer
				} else {

				// console.log( $(this) );
					if ( drawer_is_open ) {
						// // close drawer
						obj_gluru.drawer._close.call( $(this) );
					} else {
						// // open drawer
						obj_gluru.drawer._open.call( $(this) );
					}

				}

			},

			_open: function () {
				$drawer_wrap.removeClass( "is-hidden" );
				$main_container.addClass( "drawer-is-open" );

				// $(this).removeClass( "-left -right" );
				// $(this).addClass( "-left" );
				$( ".js-toggle-drawer" ).addClass( "-left" );
			},

			_close: function () {
				$drawer_wrap.addClass( "is-hidden" );
				$main_container.removeClass( "drawer-is-open" );

				// $(this).removeClass( "-left -right" );
				// $(this).addClass( "-right" );
				$( ".js-toggle-drawer" ).addClass( "-right" );
			}

		},


		actions: {

			set_state: function ( requested_state ) {

				var actions_is_open = $main_container.hasClass( "actions-is-open" );

				// open/close actions based on param "requested_state" passed to function
				if ( requested_state !== undefined ) {

					obj_gluru.actions["_" + requested_state]();

				// toggle actions
				} else {

					if ( actions_is_open ) {
						// // close actions
						obj_gluru.actions._close();
					} else {
						// // open actions
						obj_gluru.actions._open();
					}

				}

			},

			_open: function () {
				$actions_wrap.removeClass( "is-hidden" );
				$main_container.addClass( "actions-is-open" );
			},

			_close: function () {
				$actions_wrap.addClass( "is-hidden" );
				$main_container.removeClass( "actions-is-open" );

				// deselect table row in files
				$( ".js-table-row" ).removeClass( "is-selected" );
				// deselect event in timeline
				$( ".js-event-wrap" ).removeClass( "is-selected" );
			}

		},


		main_nav: {

			do_click: function () {
				// console.log( $(this) );
				_is_files 		= $(this).hasClass( "-files" );
				_is_moments 	= $(this).hasClass( "-moments" );
				_is_gluru_logo 	= $(this).hasClass( "-gluru" );

				if ( _is_files ) {
					location.href = "files.html";
				} else if ( _is_moments ) {
					location.href = "moments.html";
				} else if ( _is_gluru_logo ) {
					location.href = "index.html";
				}
			}

		},


		search: {

			set_state: function ( requested_state ) {

				var search_is_open = $main_container.hasClass( "search-is-open" );

				// open/close search based on param "requested_state" passed to function
				if ( requested_state !== undefined ) {

					obj_gluru.search["_" + requested_state]();

				// toggle search
				} else {

					if ( search_is_open ) {
						// // close search
						obj_gluru.search._close();
					} else {
						// // open search
						obj_gluru.search._open();
					}

				}

			},

			_open: function () {
				$search_wrap.removeClass( "is-hidden" );
				$main_container.addClass( "search-is-open" );
			},

			_close: function () {
				$search_wrap.addClass( "is-hidden" );
				$main_container.removeClass( "search-is-open" );
			}

		},


		moments: {

			timeline: {

				do_click: function () {

					// cache event nav menu item clicked
					$this = $(this);

					// open actions
					obj_gluru.actions.set_state( "open" );

					$( ".js-event-wrap" ).removeClass( "is-selected" );

					$this
						.closest( ".js-event-wrap" )
						.addClass( "is-selected" );
					
				}
			}
		},


		files: {

			do_click: function () {

				// cache file clicked
				$this = $(this);

				// open actions
				obj_gluru.actions.set_state( "open" );

				$( ".js-table-row" ).removeClass( "is-selected" );

				$this.addClass( "is-selected" );
				
			}
		}
	};



	// cache main app obj to var
	var obj_gluru = gluru_app;

	// DEV BUTTONS
	// -------------------------------------------------
	// drawer
	// toggle drawer
	$tmp_toggle_drawer.on( "click", function(){
		obj_gluru.drawer.set_state.call( $(this) );
	});
	// open drawer
	$tmp_open_drawer.on( "click", function(){
		obj_gluru.drawer.set_state( "open" );
	});
	// close drawer
	$tmp_close_drawer.on( "click", function(){
		obj_gluru.drawer.set_state( "close" );
	});

	// actions
	// toggle actions
	$tmp_toggle_actions.on( "click", function(){
		obj_gluru.actions.set_state();
	});
	// open actions
	$tmp_open_actions.on( "click", function(){
		obj_gluru.actions.set_state( "open" );
	});
	// close actions
	$tmp_close_actions.on( "click", function(){
		obj_gluru.actions.set_state( "close" );
	});


	// MAIN NAV 
	// -------------------------------------------------
	// clicks
	$( ".js-main-nav__link" ).on( "click", function(){
		obj_gluru.main_nav.do_click.call( $(this) );
	});


	// MOMENTS
	// -------------------------------------------------
	// event nav links
	$( ".js-event-nav__link" ).on( "click", function(){
		obj_gluru.moments.timeline.do_click.call( $(this) );
	});


	// FILES
	// -------------------------------------------------
	// click event for each row in the table (except the header)
	$( ".js-table-row:not(.-header)" ).on( "click", function(){
		obj_gluru.files.do_click.call( $(this) );
	});


	// SEARCH
	// -------------------------------------------------
	// show search "modal" screen
	$( ".js-nav-search" ).on( "click", function(){
		obj_gluru.search.set_state( "open" );
	});
	// close search panel
	$( ".js-search-close" ).on( "click", function(){
		obj_gluru.search.set_state( "close" );
	});






	// -------------------------------------------------
	// scripts that dont access main gluru obj
	// These wil be moved up into the obj when 
	// the complexity requires it
	// -------------------------------------------------

	// FILE EXPLORER SPLIT VIEW
	// -------------------------------------------------
	// set file explorer view 
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



	// COLLAPSABLE OPTIONS LISTS
	// -------------------------------------------------
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


	// FORCE PANEL STATES
	// -------------------------------------------------
	// obj_gluru.actions._open();
	// obj_gluru.drawer._open();
	// obj_gluru.search._open();


})();
