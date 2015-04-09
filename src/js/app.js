
(function(){

    // cached objects
    var $main_container         = $( ".js-main-container" ),
        $drawer_wrap            = $( ".js-drawer-wrap" ),
        $actions_wrap           = $( ".js-actions-wrap" ),
        $actions                = $( ".js-actions" ),
        $search_wrap            = $( ".js-search-wrap" ),

        // main nav
        $add_button             = $( ".js-add" ),

        // modal
        $modal                  = $( ".js-modal" ),
        $show_modal             = $( ".js-show-modal" ),
        $close_modal            = $( ".js-close-modal" ),
    
        // accounts nav
        $notifications          = $( ".js-notifications" ),
    
        // stage nav
        $js_sort                = $( ".js-sort" ),
            
        // drawer   
        $toggle_drawer          = $( ".js-toggle-drawer" ),
        $close_drawer           = $( ".js-close-drawer" ),
    
        // actions  
        $toggle_actions         = $( ".js-toggle-actions" ),
        $close_actions          = $( ".js-close-actions" ),
        $actions_current_file   = $( ".js-actions--current-item" ),

        // search
        $search                 = $( ".js-search" ),
        $search_field_wrap      = $( ".js-search-field-wrap" ),
        $search_field           = $( ".js-search-field" ),
        $close_search           = $( ".js-close-search" ),
    
        // moments  
        $now                    = $( ".js-now" ),
        $timeline_wrap          = $( ".js-timeline-wrap" ),
        $timeline_wrap_outer    = $( ".js-timeline-wrap-outer" ),
        $timeline_range         = $( ".js-timeline-range" ),
        $toggle_timeline_view   = $( ".js-toggle-timeline-view" ),
        
        // tooltips
        $tooltip                = $( ".js-tooltip" ),
        $tooltip_text           = $( ".js-tooltip-text" ),
        $tooltip_triggers       = $( ".js-tt" ),
        
        // pop menu
        $pop_menu_wrap          = $( ".js-pop-menu-wrap" ),
        $pop_menu_triggers      = $( ".js-pmt" ),
        $pop_menu_item          = $( ".js-pop-menu-item" ),
        
        // collapsable lists
        $expandable_lists       = $( ".js-toggle-expand-list" ),
        $options_list_link      = $( ".options-list__link" ),
        
        // files
        $table_wraps            = $( ".js-file-table-wrap-outer" );



    var gluru_app = {

        // cache main app obj to variable
        _obj_gluru: gluru_app,


        modal: {

            _show: function () {
                $modal.removeClass( "is-hidden" );
            },

            _hide: function () {
                $modal.addClass( "is-hidden" );
            },

        },

        drawer: {

            set_state: function ( requested_state ) {

                var $this = $(this),
                drawer_is_open = !$drawer_wrap.hasClass( "is-hidden" );

                // open/close drawer based on param "requested_state" passed to function
                if ( requested_state !== undefined ) {

                    obj_gluru.drawer["_" + requested_state]();

                // toggle drawer
                } else {

                    if ( drawer_is_open ) {

                        // select drawer toggle button
                        $this.removeClass( "is-selected" );
                        $add_button.removeClass( "is-selected" );

                        // close drawer
                        obj_gluru.drawer._close.call( $(this) );

                    } else {

                        // deselect drawer toggle button
                        $this.addClass( "is-selected" );
                        $add_button.addClass( "is-selected" );

                        // open drawer
                        obj_gluru.drawer._open.call( $(this) );

                    }

                }

            },

            _open: function () {

                $drawer_wrap.removeClass( "is-hidden" );
            },

            _close: function () {

                $drawer_wrap.addClass( "is-hidden" );
            }

        },


        actions: {

            set_state: function ( requested_state ) {

                var $this = $(this),
                    actions_is_open = !$actions_wrap.hasClass( "is-hidden" );

                // open/close actions based on param "requested_state" passed to function
                if ( requested_state !== undefined ) {

                    obj_gluru.actions["_" + requested_state]();

                    if (requested_state === "open") $toggle_actions.addClass( "is-selected" );

                // toggle actions
                } else {

                    if ( actions_is_open ) {

                        // select actions toggle button
                        $this.removeClass( "is-selected" );

                        // close actions
                        obj_gluru.actions._close();

                    } else {

                        // deselect actions toggle button
                        $this.addClass( "is-selected" );

                        // open actions
                        obj_gluru.actions._open();
                    }

                }

            },

            _open: function () {

                $actions_wrap.removeClass( "is-hidden" );
            },

            _close: function () {

                $actions_wrap.addClass( "is-hidden" );
            },

            current_file: {

                _show: function () {
                    $actions_current_file.show();
                    $actions.show();
                },

                _hide: function () {
                    $actions_current_file.hide();
                    $actions.hide();
                }

            }

        },


        main_nav: {

            do_click: function () {
                
                var $this           = $(this),
                    _is_gluru_logo  = $(this).hasClass( "js-gluru" ),
                    _is_add         = $(this).hasClass( "-add" ),
                    _is_moments     = $(this).hasClass( "-moments" ),
                    _is_files       = $(this).hasClass( "-files" )
                    ;

                if ( _is_gluru_logo ) {

                    location.href = "index.html";

                } else if ( _is_moments ) {

                    location.href = "moments.html";

                } else if ( _is_add ) {

                    // console.log("HIT");

                    if ( $drawer_wrap.hasClass( "is-hidden" ) ) {
                        $( ".-drawer.js-toggle-drawer" ).click();
                        $this.addClass( "is-selected" );
                        // $this.toggleClass( "is-selected" );
                    } else {
                        $( ".-drawer.js-toggle-drawer" ).click();
                        $this.removeClass( "is-selected" );
                    }

                } else if ( _is_files ) {

                    location.href = "files.html";

                }
            }

        },


        search: {

            activate_field: function () {

                $search_field_wrap.addClass( "is-selected" );
            },

            deactivate_field: function () {

                $search_field_wrap.removeClass( "is-selected" );
            },

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

                $search_wrap
                    .removeClass( "is-hidden" )
                    .find( ".search__field" )
                        .focus()
                        ;
                $main_container.addClass( "search-is-open" );
            },

            _close: function () {

                $search_wrap
                    .addClass( "is-hidden" )
                    .find( ".search__field" )
                        .blur()
                        ;

                $main_container
                    .removeClass( "search-is-open" );
            }

        },


        moments: {

            timeline: {

                do_click: function () {

                    // cache event nav menu item clicked
                    var $this = $(this),
                        _priority_class = "-" + $this.closest( ".js-event" ).data( "priority" );

                    // open actions
                    obj_gluru.actions.set_state( "open" );

                    $( ".js-event-wrap" ).removeClass( "is-selected" );

                    $this
                        .closest( ".js-event-wrap" )
                        .addClass( "is-selected" );

                    $actions_wrap
                        .addClass( "item-is-selected" );

                    $actions_current_file
                        .removeClass( "-now -critical -non-critical" )
                        .addClass( _priority_class )
                        ;

                    obj_gluru.actions.current_file._show();

                },

                now: function () {

                    location.href = "moments-now.html";
                },

                // // toggle timeline between infinity and split view
                // set_timeline_view: function ( requested_view ) {

                //  var $this   = $(this);
                //      $target = $( $this.data("class") );

                //  if ( requested_view !== undefined ) {
                //      $target = $( requested_view );
                //  }

                //  $table_wraps.hide();
                //  $target.show();
                // },

                // change single / split view
                set_timeline_view: function ( requested_view ) {

                    var $this   = $(this);
                        $target = $( $this.data("class") );

                    if ( requested_view !== undefined ) {
                        $target = $( requested_view );
                    }

                    // console.log();
                    $timeline_wrap_outer
                        .hide();

                    $target
                        .show();
                },

                // toggle button between infinity and split view
                toggle_timeline_view: function () {
                    var $this       = $(this),
                        _obj_gluru  = gluru_app;

                    if ( $this.hasClass( "is-split-view" ) ) {

                        // make it single view - infinity
                        _obj_gluru.moments.timeline.set_timeline_view( ".-cols-1" );
                        // $timeline_wrap.removeClass( "-split-view -cols-1 -cols-2 -cols-3" );
                    } else {

                        // make it split view - 2 cols
                        _obj_gluru.moments.timeline.set_timeline_view( ".-cols-2" );
                        // $timeline_wrap.addClass( "-split-view -cols-2" );
                    }

                    $this.toggleClass( "is-split-view" );

                },

                do_range_nav_click: function () {
                    var $this               = $(this),
                        _timeline_range     = $this.data( "timeline-range" ),
                        _obj_gluru          = gluru_app;

                    if ( _timeline_range === "future" ) {
                        location.href = "moments-future.html";
                    } else {
                        location.href = "moments.html";
                    }

                },

                select_range_link: function () {
                    var $this = $(this);

                    $timeline_range
                        .removeClass( "is-selected" );

                    $this
                        .addClass( "is-selected" );
                }
            }
        },


        files: {

            // click row in files table
            do_click: function () { 

                // cache file clicked
                var $this = $(this);

                // open actions
                obj_gluru.actions.set_state( "open" );

                $( ".js-table-row" ).removeClass( "is-selected" );

                $this
                    .addClass( "is-selected" );

                $actions_wrap
                    .addClass( "item-is-selected" );

                obj_gluru.actions.current_file._show();
                

            },

            // change single / split view
            set_file_explorer_view: function ( requested_view ) {

                var $this   = $(this);
                    $target = $( $this.data("class") );

                if ( requested_view !== undefined ) {
                    $target = $( requested_view );
                }

                $table_wraps
                    .hide();

                $target
                    .show();
            },

            toggle_file_view: function () {
                var $this       = $(this),
                    _obj_gluru  = gluru_app;

                if ( $this.hasClass( "is-split-view" ) ) {

                    // make it single view - infinity
                    _obj_gluru.files.set_file_explorer_view( ".-cols-1" );
                } else {

                    // make it split view - 2 cols
                    _obj_gluru.files.set_file_explorer_view( ".-cols-2" );
                }

                $this.toggleClass( "is-split-view" );

            }
        },


        notifications: {

            do_click: function () {
                location.href = "moments.html";
            }
        },


        tooltips: {

            show: function () {

                var $this                       = $(this),
                    _button_width               = $this.outerWidth(),
                    _button_height              = $this.outerHeight(),
                    _offset                     = $this.offset(),
                    _tooltip_text               = $this.data( "tt" ),
                    _tooltip_config             = $this.data( "tt-config" ),
                    _tooltip_position           = $this.data( "tt-pos" ),
                    _is_main_nav_item           = $this.hasClass( "js-main-nav__link" ),
                    _tooltip_position_class     = "",
                    _left,
                    _top,
                    _arrow_width                = 6 + 5
                    ;

                    // console.log(_offset);

                    if ( _tooltip_position !== undefined ) {
                        _tooltip_position_class = "-" + _tooltip_position;
                    }


                if ( _tooltip_config === undefined) {

                    // if ( _is_main_nav_item ) {
                    //     _offset.top += 0;
                    //     _offset.left += _button_width + 10;
                    // }

                } else {

                    _offset.top += _tooltip_config.offset.top;
                    _offset.left += _tooltip_config.offset.left;
                }

                // set tooltip text
                $tooltip_text
                    .html( _tooltip_text )
                    ;

                // position tooltip
                $tooltip
                    .addClass( _tooltip_position_class )
                    .offset({ left: _offset.left, top: _offset.top })
                    ;

                var _tooltip_width = $tooltip.outerWidth(),
                    _tooltip_height = $tooltip.outerHeight();

                // console.log(_offset);
                // console.log("button offset: " + _offset);
                
                if ( _tooltip_position === "left" ) {

                    $tooltip.offset({ left: _offset.left - _tooltip_width - _arrow_width });


                } else if ( _tooltip_position === "right" ) {

                    $tooltip.offset({ left: _offset.left + _button_width + _arrow_width });


                } else if ( _tooltip_position === "above" ) {

                    _left = _offset.left - ( _tooltip_width / 2 ) + ( _button_width / 2 );
                    _top = _offset.top - _button_height - _arrow_width;

                    $tooltip.offset({ left: _left, top: _top });


                } else if ( _tooltip_position === "below" ) {

                    _left = _offset.left - ( _tooltip_width / 2 ) + ( _button_width / 2 );
                    _top = _offset.top + _button_height + _arrow_width;

                    $tooltip.offset({ left: _left, top: _top });

                }

                $tooltip.removeClass( "is-hidden" );
            },

            hide: function () {
                // console.log( "tooltips.hide()" );
                $tooltip
                    .removeClass( "-left -right -above -below" )
                    .addClass( "is-hidden" )
                    .removeAttr("style")
                    ;
            }
        },


        options_list: {

            toggle: function () {

                $this = $(this);

                $this
                    .parent()
                    .toggleClass( "is-collapsed" )
                        .find( ".options-list__inner-wrap" )
                        .animate({
                                "height": "toggle"
                            }, {
                                duration: 300
                            });
            },

            select_item: function () {

                $this = $(this);

                $options_list_link.removeClass( "is-selected" );
                $this.addClass( "is-selected" );


            }
        },


        pop_menu: {

            show: function () {
                // console.log( "SHOW" );
                var $this                   = $(this),
                    $_pop_menu__list        = $( ".js-pop-menu__list" ),
                    $_pop_menu_to_show      = $( ".js-pop-menu__list--" + $this.data( "pop-menu" ) ),
                    _window_width           = $(window).width(),
                    _button_height          = $this.height(),
                    _button_width           = $this.width(),
                    _button_offset          = $this.offset(),
                    _obj_gluru              = gluru_app,
                    _pop_menu_offset_left;

                $_pop_menu__list.hide();
                $_pop_menu_to_show.show();

                var _pop_menu_width         = $pop_menu_wrap.width();

                $this.addClass( "is-selected" );

                // console.log( _window_width );

                if ( (_button_offset.left - _button_width + _pop_menu_width) > _window_width ) {
                    _pop_menu_offset_left = _button_offset.left - _pop_menu_width + _button_width;
                } else {
                    _pop_menu_offset_left = _button_offset.left;
                }
                _pop_menu_offset_top = _button_offset.top + _button_height + 5;

                $pop_menu_wrap
                    .removeClass( "is-hidden" )
                    .offset({ left: _pop_menu_offset_left, top: _pop_menu_offset_top })
                    ;
            },

            hide: function () {

                $pop_menu_triggers.removeClass( "is-selected" );

                $pop_menu_wrap
                    .addClass( "is-hidden" )
                    .removeAttr("style")
                    ;
            },

            select_item: function () {
                var $this        = $(this),
                    _obj_gluru   = gluru_app;

                $this
                    .closest( ".js-pop-menu__list" )
                    .find( ".js-pop-menu-item" )
                    .removeClass( "is-selected" );

                // console.log( $this.closest( ".js-pop-menu__list" ) );

                $this.addClass( "is-selected" );

                _obj_gluru.pop_menu.hide();
            }
        }
    };



    // cache main app obj to variable
    var obj_gluru = gluru_app;


    // MODAL
    // -------------------------------------------------
    // show
    $close_modal.on( "click", function(){
        obj_gluru.modal._hide();
    });
    // hide
    $show_modal.on( "click", function(){
        obj_gluru.modal._show();
    });

    // NOTIFICATIONS
    // -------------------------------------------------
    $notifications.on( "click", function(){
        obj_gluru.notifications.do_click.call( $(this) );
    });

    // POP MENUS
    // -------------------------------------------------
    // show pop menu
    $pop_menu_triggers.on( "click", function(){
        obj_gluru.pop_menu.show.call( $(this) );
    });
    // select pop menu item
    $pop_menu_item.on( "click", function(){
        obj_gluru.pop_menu.select_item.call( $(this) );
    });

    $(document).on('click', function(e) {
        // hide tooltip
        obj_gluru.tooltips.hide();
        // if click is NOT on a pop_menu_triggers AND NOT on the pop_menu itself
        if ( !$(e.target).closest($pop_menu_triggers).length && !$(e.target).closest($pop_menu_wrap).length ) {
            // Hide the pop_menu
            obj_gluru.pop_menu.hide.call( $(this) );
        }

        if ( !$(e.target).closest($search_field_wrap).length ) {
            obj_gluru.search.deactivate_field();
            
            // console.log( $search_field.val().length );
            // if ( $search_field.value.length ) {

            // }
        }
    });


    // TOOLTIPS
    // -------------------------------------------------
    $tooltip_triggers.on( "mouseover", function(){
        obj_gluru.tooltips.show.call( $(this) );
    });
    $tooltip_triggers.on( "mouseout", function(){
        obj_gluru.tooltips.hide.call( $(this) );
    });


    // DEV BUTTONS
    // -------------------------------------------------
    // drawer
    // // toggle drawer
    // $toggle_drawer.on( "click", function(){
    //  obj_gluru.drawer.set_state.call( $(this) );
    // });
    // open drawer
    // $open_drawer.on( "click", function(){
    //  obj_gluru.drawer.set_state( "open" );
    // });

    // actions
    // // toggle actions
    // $toggle_actions.on( "click", function(){
    //  obj_gluru.actions.set_state.call( $(this) );
    // });
    // open actions
    // $tmp_open_actions.on( "click", function(){
    //  obj_gluru.actions.set_state( "open" );
    // });


    // DRAWER
    // -------------------------------------------------
    // close drawer
    $close_drawer.on( "click", function(){
        // obj_gluru.drawer.set_state( "close" );
        
        // assuming the close button is only visible when 
        // panel is open, this will close the panel 
        // by simulating a click on the toggle button
        $( ".-drawer.js-toggle-drawer" ).click();
    });
    // toggle drawer
    $toggle_drawer.on( "click", function(){
        obj_gluru.drawer.set_state.call( $(this) );
    });


    // ACTIONS
    // -------------------------------------------------
    // close actions
    $close_actions.on( "click", function(){
        // obj_gluru.actions.set_state( "close" );
        
        // assuming the close button is only visible when 
        // panel is open, this will close the panel 
        // by simulating a click on the toggle button
        $( ".-actions.js-toggle-actions" ).click();
    });
    // toggle drawer
    $toggle_actions.on( "click", function(){
        obj_gluru.actions.set_state.call( $(this) );
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
    $now.on( "click", function() {
        obj_gluru.moments.timeline.now();
    });
    // TIMELINE SPLIT VIEW
    // -------------------------------------------------
    // set timeline view 
    // options:
    //      :single view
    //      :split-view - 2 cols
    //      :split-view - 3 cols
    //      
    //      Th 3 variations are hardcoded in the HTML.
    //      This just sets display for the 3 variations
    //      (hides all then shows the target view)
    $( ".js-buttons-moments .button" ).on( "click", function(){
        obj_gluru.moments.timeline.set_timeline_view.call( $(this) );
    });
    // toggle timeline view
    $toggle_timeline_view.on( "click", function(){
        obj_gluru.moments.timeline.toggle_timeline_view.call( $(this) );
    });
    // timeline recent and future links
    $timeline_range.on( "click", function(){
        obj_gluru.moments.timeline.do_range_nav_click.call( $(this) );
    });
    // set the initial view
    obj_gluru.moments.timeline.set_timeline_view( ".-cols-1" );


    // FILES
    // -------------------------------------------------
    // click event for each row in the table (except the header)
    // $( ".js-table-row:not(.-header, .js-open-file)" ).on( "click", function(){
    $( ".js-table-row" )
        .on( "click", function(){
            obj_gluru.files.do_click.call( $(this) );
    });
    // FILE EXPLORER SPLIT VIEW
    // -------------------------------------------------
    // set file explorer view 
    // options:
    //      :single view
    //      :split-view - 2 cols
    //      :split-view - 3 cols
    //      
    //      Th 3 variations are hardcoded in the HTML.
    //      This just sets display for the 3 variations
    //      (hides all then shows the target view)
    $( ".js-buttons-files .button" ).on( "click", function(){
        obj_gluru.files.set_file_explorer_view.call( $(this) );
    });

    // toggle file view
    $( ".js-toggle-file-view" ).on( "click", function(){
        obj_gluru.files.toggle_file_view.call( $(this) );
    });
    // set the initial view
    obj_gluru.files.set_file_explorer_view( ".-cols-1" );



    // SEARCH
    // -------------------------------------------------
    // search activate
    $search_field.on( "click", function() {
        obj_gluru.search.activate_field();
    });
    // show search "modal" screen
    $search.on( "click", function(){
        obj_gluru.search.set_state( "open" );
    });
    // close search panel
    $close_search.on( "click", function(){
        obj_gluru.search.set_state( "close" );
    });


    // COLLAPSABLE OPTIONS LISTS
    // -------------------------------------------------
    // animate all collapsable lists
    $expandable_lists.on( "click", function(){
        obj_gluru.options_list.toggle.call( $(this) );
    });
    // select optins list item
    $options_list_link.on( "click", function(){
        obj_gluru.options_list.select_item.call( $(this) );
    });



    // disable iOS overscroll effect
    // http://www.html5rocks.com/en/mobile/touch/
    document.body.addEventListener('touchmove', function(e) {
        e.preventDefault();
    }, false); 


    // FORCE PANEL STATES
    // -------------------------------------------------
    // obj_gluru.actions._open();
    // obj_gluru.drawer._open();
    // obj_gluru.search._open();

    // obj_gluru.pop_menu.show.call( $( ".table-wrap-outer.-cols-1 .js-pmt" ) );


})();
