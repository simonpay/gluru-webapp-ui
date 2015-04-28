
(function(){

    // cached objects
    var $main_container                     = $( ".js-main-container" ),
        $drawer_wrap                        = $( ".js-drawer-wrap" ),
        $actions_wrap                       = $( ".js-actions-wrap" ),
        $actions                            = $( ".js-actions" ),
        $search_wrap                        = $( ".js-search-wrap" ),

        // main nav     
        $main_nav_link                      = $( ".js-main-nav__link" ),
        $add_button                         = $( ".js-add" ),

        // modal     
        $modal                              = $( ".js-modal" ),
        $modal_triggers                     = $( ".js-modal-trigger" ),
        $show_modal                         = $( ".js-show-modal" ),
        $close_modal                        = $( ".js-close-modal" ),

        // accounts nav     
        $notifications                      = $( ".js-notifications" ),

        // stage nav     
        $js_sort                            = $( ".js-sort" ),

        // drawer        
        $toggle_drawer                      = $( ".js-toggle-drawer" ),
        $close_drawer                       = $( ".js-close-drawer" ),

        // actions       
        $toggle_actions                     = $( ".js-toggle-actions" ),
        $close_actions                      = $( ".js-close-actions" ),
        $actions_current_file               = $( ".js-actions--current-item" ),

        // search     
        $search                             = $( ".js-search" ),
        $search_field_wrap                  = $( ".js-search-field-wrap" ),
        $search_field                       = $( ".js-search-field" ),
        $close_search                       = $( ".js-close-search" ),

        // moments       
        $now                                = $( ".js-now" ),
        $timeline_wrap                      = $( ".js-timeline-wrap" ),
        $timeline_wrap_outer                = $( ".js-timeline-wrap-outer" ),
        $timeline_range                     = $( ".js-timeline-range" ),
        $toggle_timeline_view               = $( ".js-toggle-timeline-view" ),
        //daily digest
        $expandable_daily_digest_tables     = $( ".js-toggle-daily-digest-table" ),
        // $table_wraps_daily_digest    = $( ".daily-digest .js-table-wrap" ),

        // tooltips
        $tooltip                            = $( ".js-tooltip" ),
        $tooltip_text                       = $( ".js-tooltip-text" ),
        $tooltip_triggers                   = $( ".js-tt" ),

        // pop menu
        $pop_menu_wrap                      = $( ".js-pop-menu-wrap" ),
        $pop_menu_triggers                  = $( ".js-pmt" ),
        $pop_menu_item                      = $( ".js-pop-menu-item" ),

        // collapsable lists
        $expandable_lists                   = $( ".js-toggle-expand-list" ),
        $options_list_link                  = $( ".options-list__link" ),

        // files
        $table_wraps                        = $( ".js-file-table-wrap-outer" ),

        // forms
        $set_up_form_sign_in                = $( ".js-sign-in" );



    var gluru_app = {

        // cache main app obj to variable
        _obj_gluru: gluru_app,


        modal: {

            _show: function () {

                var $this = $(this);

                // console.log( $this.data( "modal-content" ) );

                $modal
                    .removeClass( "is-hidden" )
                        .find( ".js-demo-only__" + $this.data( "modal-content" ) )
                        .show()
                            ;
            },

            _hide: function () {
                $modal
                    .addClass( "is-hidden" )
                        .find( ".-modal-box__content-wrap" )
                            .hide()
                                ;
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

                _show: function ( header_type ) {

                    // console.log( header_type );

                    // show current-file header in actions panel
                    $actions_current_file.removeClass( "is-hidden" );

                    // hide all actions header content blocks
                    $( ".js-demo-only__actions-header-current-item__contents-wrap" ).hide();

                    // show specific header based on "header_type" argument passed to func
                    $( ".js-demo-only__actions-header-current-item__contents-wrap" + ".-" + header_type ).show();

                    //show actions panel contents
                    // $actions.removeClass( "is-hidden" );
                },

                _hide: function () {
                    $actions_current_file.addClass( "is-hidden" );
                    // $actions.addClass( "is-hidden" );
                }

            },

            actions_content: {

                _show: function ( actions_type ) {

                    // console.log( actions_type );

                    // hide all actions content wrap blocks
                    $( ".js-demo-only__actions-content-wrap" ).hide();

                    // show specific actions content based on "actions_type" argument passed to func
                    $( ".js-demo-only__actions-content-wrap" + ".-" + actions_type ).show();

                    // show actions panel contents
                    $actions.removeClass( "is-hidden" );
                }
            }
        },


        main_nav: {

            do_click: function ( e ) {
                
                var $this           = $(this),
                    _is_gluru_logo  = $(this).hasClass( "js-gluru" ),
                    _is_add         = $(this).hasClass( "-add" ),
                    _is_moments     = $(this).hasClass( "-moments" ),
                    _is_files       = $(this).hasClass( "-files" ),
                    _is_settings    = $(this).hasClass( "-settings" )
                    ;

                if ( _is_gluru_logo ) {

                    location.href = "index.html";

                } else if ( _is_moments ) {

                    location.href = "moments.html";

                } else if ( _is_settings ) {

                    location.href = "settings-profile.html";

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

                e.preventDefault();
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
                    var $this           = $(this),
                        $pbox_event     = $this.closest( ".js-event" ),  
                        _priority       = $pbox_event.data( "priority" ),
                        _priority_class = "-" + _priority,
                        _now_type       = $pbox_event.data( "now-type" );

                    // console.log( "priority = " + _priority );

                    // daily digest event
                    if ( _priority === "daily-digest" ) {

                        location.href = "moments-daily-digest.html";

                    // everything else
                    } else {

                        // open actions
                        obj_gluru.actions.set_state( "open" );

                        // remove "is-selected" from all events
                        $( ".js-event-wrap" ).removeClass( "is-selected" );

                        // add "is-selected" to current events
                        $this
                            .closest( ".js-event-wrap" )
                            .addClass( "is-selected" );

                        // set class "item-is-selected" which sets a 'top' value in the css for '.actions' panel
                        // to accomodate the taller 'priority-box' style header 
                        $actions_wrap
                            .addClass( "item-is-selected" );

                        // remove all 'priority' classes from 'current file' priority-box in actions panel
                        $actions_current_file
                            .removeClass( "-now -critical -non-critical -daily-digest" )
                            .addClass( _priority_class )
                            ;

                        // actions header
                        // call function to show 'current-file' 'priority-box'
                        var header_type;
                        if ( _priority === "now" ) {
                            header_type = _priority + "-" + _now_type;
                        } else {
                            header_type = "footprint";
                        }
                        // console.log( "_priority = " + _priority );
                        // console.log( "header_type = " + header_type );
                        obj_gluru.actions.current_file._show( header_type );


                        // actions content
                        // call function to show specific content in actions panel
                        // options for actions_type are:
                        // -now-calendar
                        // -now-non-calendar
                        // -footprint
                        var actions_type;
                        if ( _priority === "now" ) {
                            actions_type = _priority + "-" + _now_type;
                        } else {
                            actions_type = "footprint";
                        }
                        // console.log( "_priority = " + _priority );
                        // console.log( "actions_type = " + actions_type );
                        obj_gluru.actions.actions_content._show( actions_type );

                    }

                },

                now: function () {

                    $this = $(this);

                    // console.log( $this.data( "demo-only-is-timeline-page" ) );

                    // if now button is in a page that has the timeline (moments or moments-now)
                    // clone now event
                    if ( $this.data( "demo-only-is-timeline-page" ) ) {
                        // console.log( "clone event" );

                        // set now button to 'waiting' state with loader
                        $this
                            .addClass( "is-selected is-waiting" )
                                .find( ".js-loader-wrap" )
                                    .removeClass( "is-hidden" )
                                        ;

                        setTimeout(function(){
                            // $( ".js-events-for-cloning .event-wrap" ).first()
                            $( ".js-events-for-cloning .priority-box.-event.-now" ).first()
                                .closest( ".event-wrap" )
                                    .clone()
                                        .insertAfter( ".timeline > .event-group-heading" )
                                            // .css({
                                            //     "background": "red"
                                            // })
                                            ;
                            // console.log( "cloned" );

                            // return now button to previous state
                            $this
                                .removeClass( "is-selected is-waiting" )
                                    .find( ".js-loader-wrap" )
                                        .addClass( "is-hidden" )
                                            ;


                        }, 750);
                    
                    // otherwsie, take user to moments-now.html where 
                    // this function is called by activating click on 
                    // now button from script on page
                    } else {
                        // console.log( "go to moments-now page" );
                        location.href = "moments-now.html";
                    }

                },

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

                    if ( _timeline_range === "daily-digest" ) {
                        location.href = "moments-daily-digest.html";
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
            },

            daily_digest: {

                section_headers: {

                    toggle: function () {

                        $this = $(this);

                        $this
                            .toggleClass( "is-collapsed" )
                                .parent()
                                    .next( ".js-table-wrap" )
                                        .animate({
                                                "height": "toggle"
                                            }, {
                                                duration: 300
                                            });
                    }
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

                obj_gluru.actions.current_file._show( "footprint" );
                obj_gluru.actions.actions_content._show( "footprint" );

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

            _show: function () {

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

            _hide: function () {
                // console.log( "tooltips._hide()" );
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

            _show: function () {
                // console.log( "SHOW" );
                
                var $this                   = $(this),
                    $_pop_menu__list        = $( ".js-pop-menu__list" ),
                    _pop_menu_content       = $this.data( "pop-menu" ),
                    $_pop_menu_to_show      = $( ".js-pop-menu__list--" + _pop_menu_content ),
                    _window_width           = $(window).width(),
                    _button_height          = $this.height(),
                    _button_width           = $this.width(),
                    _button_offset          = $this.offset(),
                    _obj_gluru              = gluru_app,
                    _pop_menu_offset_left;

                // if pop menu is visible && pop menu type is sort && sort is visible - hide pop menu
                if ( !$pop_menu_wrap.hasClass( "is-hidden" ) && _pop_menu_content === "sort" && $( ".js-pop-menu__list--sort" ).css( "display" ) === "block" ) {

                    _obj_gluru.pop_menu._hide();

                // if pop menu is visible && pop menu type is sources && sources is visible - hide pop menu
                } else if ( !$pop_menu_wrap.hasClass( "is-hidden" ) && _pop_menu_content === "sources" && $( ".js-pop-menu__list--sources" ).css( "display" ) === "block" ) {

                    _obj_gluru.pop_menu._hide();

                // if pop menu is visible && pop menu type is timeline-source && timeline-source is visible - hide pop menu
                } else if ( !$pop_menu_wrap.hasClass( "is-hidden" ) && _pop_menu_content === "timeline-source" && $( ".js-pop-menu__list--timeline-source" ).css( "display" ) === "block" ) {

                    _obj_gluru.pop_menu._hide();

                // if pop menu is visible && pop menu type is timeline-sort && timeline-sort is visible - hide pop menu
                } else if ( !$pop_menu_wrap.hasClass( "is-hidden" ) && _pop_menu_content === "timeline-sort" && $( ".js-pop-menu__list--timeline-sort" ).css( "display" ) === "block" ) {

                    _obj_gluru.pop_menu._hide();

                // pop menu is hidden - show pop menu
                } else {

                    $_pop_menu__list.hide();
                    $_pop_menu_to_show.show();

                    // get width of pop menu now its visible
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

                }

            },

            _hide: function () {

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

                $this.addClass( "is-selected" );

                _obj_gluru.pop_menu._hide();
            }
        },

        gluru_forms: {

            sign_up: function () {
                var $this        = $(this),
                    _obj_gluru   = gluru_app;

                _obj_gluru.modal._show.call( $this );
            }
        }
    };



    // cache main app obj to variable
    var obj_gluru = gluru_app;


    // FORMS
    // -------------------------------------------------
    // show
    $set_up_form_sign_in.on( "click", function(){
        obj_gluru.gluru_forms.sign_up.call( $(this) );
    });


    // MODAL
    // -------------------------------------------------
    // show
    $modal_triggers.on( "click", function(){
        // console.log( "modal click" );
        obj_gluru.modal._show.call( $(this) );
    });
    // hide
    $close_modal.on( "click", function(){
        obj_gluru.modal._hide();
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
        obj_gluru.pop_menu._show.call( $(this) );
    });
    // select pop menu item
    $pop_menu_item.on( "click", function(){
        obj_gluru.pop_menu.select_item.call( $(this) );
    });

    // hide items 
    $(document).on('click', function(e) {

        // console.log( "doc click" );

        // hide tooltip
        obj_gluru.tooltips._hide();

        // pop menu
        // if click is NOT on a pop_menu_triggers AND NOT on the pop_menu itself
        if ( !$(e.target).closest($pop_menu_triggers).length && !$(e.target).closest($pop_menu_wrap).length ) {
            // Hide the pop_menu
            // console.log( "doc click hiding" );
            obj_gluru.pop_menu._hide.call( $(this) );
        }

        // search
        if ( !$(e.target).closest($search_field_wrap).length ) {
            obj_gluru.search.deactivate_field();
        }

        // modal
        // if click event is not on modal box or on trigger
        if ( !$(e.target).closest( ".modal__box" ).length && !$(e.target).closest( $modal_triggers ).length ) {
            // console.log( "hide modal" );
            obj_gluru.modal._hide();
        }
            
    });


    // TOOLTIPS
    // -------------------------------------------------
    $tooltip_triggers.on( "mouseover", function(){
        obj_gluru.tooltips._show.call( $(this) );
    });
    $tooltip_triggers.on( "mouseout", function(){
        obj_gluru.tooltips._hide.call( $(this) );
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
    // link to setup section
    $( ".js-setup-pages" ).on( "click", function( e ){
        location.href = "setup-create-account.html";
        e.preventDefault();
    });


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
    $main_nav_link.on( "click", function( e ){
        obj_gluru.main_nav.do_click.call( $(this), e );
    });


    // MOMENTS
    // -------------------------------------------------
    // event nav links
    // attach to .timeline and pass the trigger button to the function 
    // as some events are created dynmically and dont exist yet in the dom
    $( ".timeline" ).on( "click", ".js-event-nav__link", function(){
        obj_gluru.moments.timeline.do_click.call( $(this) );
    });
    $now.on( "click", function() {
        obj_gluru.moments.timeline.now.call( $(this) );
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

    // dev buttons
    $( ".js-buttons-moments .button" ).on( "click", function(){
        obj_gluru.moments.timeline.set_timeline_view.call( $(this) );
    });
    // toggle timeline view
    $toggle_timeline_view.on( "click", function(){
        obj_gluru.moments.timeline.toggle_timeline_view.call( $(this) );
    });
    // timeline recent and daily digest links
    $timeline_range.on( "click", function(){
        obj_gluru.moments.timeline.do_range_nav_click.call( $(this) );
    });
    // set the initial view
    obj_gluru.moments.timeline.set_timeline_view( ".-cols-1" );


    // DAILY DIGEST
    // -------------------------------------------------
    $expandable_daily_digest_tables.on( "click", function(){
        obj_gluru.moments.daily_digest.section_headers.toggle.call( $(this) );
    });


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

    // dev buttons
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





    // sortable file table rows
    var fixHelperModified = function(e, tr) {
        var $originals = tr.children();
        var $helper = tr.clone();
        $helper.children().each(function(index)
        {
          $(this).width($originals.eq(index).width());
        });
        return $helper;
    };

    //Make table sortable
    $(".table.sortable .table__body").sortable({
        helper: fixHelperModified,
        stop: function(event,ui) {
            renumber_table('.table.sortable');
        }
    }).disableSelection();


    //Renumber table rows
    function renumber_table(tableID) {
        $( tableID + " .table__row" ).each( function() {
            count = $(this).parent().children().index($(this)) + 1;
            $(this).find('.priority').html(count);
        });
    }



    // use js to set the width of .panel-header.-stage on re-size
    // would need to use setInterval to set width during css transition 
    // of drawer-wrap which affects the width of this el
    // $(window).on( "resize", function(){
    //     console.log( "resized" );
    //     $( ".js-panel-header-stage" ).outerWidth( $(window).width() - 86 - $( ".js-drawer-wrap" ).outerWidth() );
    // });
    
    // this makes the actions panel resizable along with jqueryui js and css
    // this will be committed if needed and then removed
    // to make it work properly, the css transition woldahve to be removed from 
    // action-wrap whilst the element is being resized and then replaced once 
    // its finished, the inline stles would also have to be removed from the action-wrap 
    // if the actions bar needs to be animated back closed again
    // the contents of actions-wrap would have to be made to be 100% width as well
    // this also needs these 2 dep's added to grunt concat task:
    // '<%= pkg.project_paths.bower_folder %>jquery-ui/ui/mouse.js',
    // '<%= pkg.project_paths.bower_folder %>jquery-ui/ui/resizable.js',
    // and this in head
    // <link rel="stylesheet" href="css/jquery-ui.css" />
    // $('.actions-wrap').resizable({
    //         handles     : 'e,w',
    //         resize      : function (event,ui){
    //                        ui.position.left = ui.originalPosition.left;
    //                        // ui.size.width    = ( ui.size.width - ui.originalSize.width )*2 + ui.originalSize.width;
    //                     }
    // });


    // FORCE PANEL STATES
    // -------------------------------------------------
    // obj_gluru.actions._open();
    // obj_gluru.drawer._open();
    // obj_gluru.search._open();

    // obj_gluru.pop_menu.show.call( $( ".table-wrap-outer.-cols-1 .js-pmt" ) );


})();
