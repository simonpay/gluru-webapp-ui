
(function(){

    var 
        // sections
        // create team
        $section_team_setup                             = $( ".js-section-team-setup" ),
        $section_team_name                              = $( ".js-section-team-name" ),
        $section_team_settings                          = $( ".js-section-team-settings" ),
        $section_team_settings_sources                  = $( ".js-section-team-settings-sources" ),
        $section_team_access_settings                   = $( ".js-section-team-access-settings" ),
        $section_team_invite_people                     = $( ".js-section-team-invite-people" ),
        $section_submit                                 = $( ".js-section-submit" ),

        // autopush
        $section_autopush_destination                   = $( ".js-section-autopush-destination" ),
        $section_autopush_notifications                 = $( ".js-section-autopush-notifications" ),

        $btn_next                                       = $( ".js-btn-next" ),
        $btn_add_team                                   = $( ".js-btn-add-team" ),

        $team_access_settings_row_container             = $( ".js-team-access-settings-row-container" ),
        $invite_people_row_container_clone              = $( ".js-invite-people-row-container-clone" ),
        $invite_people_row_wrapper                      = $( ".js-invite-people-row-wrapper" ),
        $team_access_settings_row_clone                 = $( ".js-team-access-settings-row-clone" ),
        $invite_people_row_clone                        = $( ".js-invite-people-row-clone" ),
        $add_new_email                                  = $( ".js-add-new-email" ),
        $add_new_favourite                              = $( ".js-add-new-favourite" ),
        $favourite_row                                  = $( ".js-favourite-row" ),
        $favourite_row_container                        = $( ".js-favourites-row-container" ),
        // $team_access_settings_row               = $( ".js-team-access-settings-row" )

        $autopush_source_multi_select                   = $( ".js-autopush-source__multi-select" ),
        $autopush_destination_multi_select              = $( ".js-autopush-destination__multi-select" ),

        $rdo_invited_member_connect_source_yes          = $( "#rdo-invited-member-connect-source-yes" ),
        $rdo_invited_member_connect_source_no           = $( "#rdo-invited-member-connect-source-no" ),

        $team_settings_source_multi_select              = $( ".js-team-settings-source__multi-select" ),
        
        $checkbox_slider                                = $( ".js-checkbox-slider" ),

        $prevent_fout                                   = $( ".prevent-fout" )

        ;


    var form_actions = {


        _set_section_state: function ( ary_sections, state ) {

            var sections = ary_sections;

            for (var i=0; i<sections.length; i++) {

                // console.log( sections[i] );

                if ( state === "show" ) {

                    ary_sections[i].removeClass( "is-hidden" );

                } else {

                    ary_sections[i].addClass( "is-hidden" );
                }
            }
        },



        add_favourites: {


            _clone_favourite: function (e) {

                $favourite_row
                    .clone()
                        .appendTo( $favourite_row_container );

                e.preventDefault();
            }
        },



        autopush: {


            _do_add_source: function () {

                obj_form_actions._set_section_state( [ $section_autopush_destination ], "show" );
            },


            _do_remove_source: function () {

                var $this = $(this);
                var source_data = $this.select2( "data" );

                console.log( source_data.length );
                
                if ( source_data.length === 0 ) {
                    obj_form_actions._set_section_state( [ $section_autopush_destination, $section_autopush_notifications, $btn_next ], "hide" );

                    // reset $autopush_destination_multi_select
                    $autopush_destination_multi_select.val(null).trigger("change");
                }
            },


            _do_add_destination: function () {

                obj_form_actions._set_section_state( [ $section_autopush_notifications, $btn_next ], "show" );
            },


            _do_remove_destination: function () {

                var $this = $(this);
                var source_data = $this.select2( "data" );

                // console.log( source_data.length );

                if ( source_data.length === 0 ) {
                    obj_form_actions._set_section_state( [ $section_autopush_notifications, $btn_next ], "hide" );
                }
            },
        },



        create_team: {


            _create_team: function (e) {
                
                var $this = $(this),
                    obj_form_actions = form_actions;
                // console.log( e );

                if ( $this.hasClass( "is-selected" ) ) {

                    // console.log( "hide team input" );

                    obj_form_actions._set_section_state( [ $section_team_settings, $section_team_name ], "hide" );
                    obj_form_actions._set_section_state( [ $section_submit ], "show" );

                    $this.removeClass( "is-selected" );

                    // location.href = "#top";

                } else {
                    
                    // console.log( "show team input" );

                    obj_form_actions._set_section_state( [ $section_team_settings, $section_team_name ], "show" );
                    obj_form_actions._set_section_state( [ $section_submit ], "hide" );

                    $this.addClass( "is-selected" );

                    // location.href = "#team-setup";

                }

                e.preventDefault();
            },


            _do_invite_sources_radio_click: function ( yep_nope ) {

                // yes
                if ( yep_nope === "yes" ) {

                    // reset select2 sources box
                    $( ".js-example-basic-multiple" ).val(null).trigger("change");

                    obj_form_actions._set_section_state( [ $section_team_settings_sources ], "show" );
                    obj_form_actions._set_section_state( [ $section_team_access_settings, $section_team_invite_people, $section_submit ], "hide" );

                // no
                } else if ( yep_nope === "no" ) {

                    obj_form_actions._set_section_state( [ $section_team_invite_people, $section_submit ], "show" );
                    obj_form_actions._set_section_state( [ $section_team_settings_sources, $section_team_access_settings ], "hide" );

                    // reset
                    obj_form_actions.create_team._remove_invite_people_rows();
                    obj_form_actions.create_team._remove_invite_people_containers();

                    obj_form_actions.create_team._clone_invite_people_row();

                    // reset select2 sources box
                    $( ".js-example-basic-multiple" ).val(null).trigger("change");
                }
            },


            _do_add_source: function () {

                var $this = $(this);

                obj_form_actions._set_section_state( [ $section_team_access_settings, $section_team_invite_people, $section_submit ], "show" );
                obj_form_actions.create_team._build_team_access_rows.call( $this );
            },


            _remove_access_setting_rows: function () {

                $( ".js-team-access-settings-row" ).remove();
            },


            _remove_invite_people_rows: function () {

                $( ".js-invite-people-row" ).remove();
            },


            _remove_invite_people_containers: function () {

                $( ".js-invite-people-row-container" ).remove();
            },


            _build_team_access_rows: function () {

                var $this = $(this);
                var source_data = $this.select2('data');

                // console.log( source_data );
                // console.log( typeof(source_data) );
                // console.log( data[0].text );

                // console.log( source_data.length );

                // reset
                obj_form_actions.create_team._remove_access_setting_rows();
                obj_form_actions.create_team._remove_invite_people_rows();
                obj_form_actions.create_team._remove_invite_people_containers();

                // loop around sources in select2 multiple select and build form rows 
                for ( var i=0; i<source_data.length; i++) {

                    // console.log( "cloned a row" );

                    // clone access settings row
                    $team_access_settings_row_clone
                        .clone()
                        .removeClass( "js-team-access-settings-row-clone" )
                        .addClass( "js-team-access-settings-row" )
                        .show()
                        .appendTo( $team_access_settings_row_container )
                            .find( ".js-source-name" )
                            .html( source_data[i].text )
                                .closest( ".js-team-access-settings-row" )
                                    .find( "input[type='checkbox']" )
                                    .attr( "id", "applySettingsForWholeTeam" + source_data[i].text )
                                        .parent()
                                        .find( "label" )
                                        .attr( "for", "applySettingsForWholeTeam" + source_data[i].text )
                                            .parent().find( ".checkbox_slider" )
                                            .button()
                                                .closest( ".js-team-access-settings-row" )
                                                .find( "label" ).last()
                                                .attr( "for", "applySettingsForWholeTeam" + source_data[i].text )
                                                    .closest( ".js-team-access-settings-row" )
                                                    .find( ".js-access-settings" )
                                                    .select2({
                                                        minimumResultsForSearch: Infinity
                                                    })
                                                    ;

                    // clone invite people email row
                    var _invite_people_row = $invite_people_row_clone
                        .clone()
                        .removeClass( "js-invite-people-row-clone" )
                        .addClass( "js-invite-people-row" )
                        .show()
                        .appendTo( $invite_people_row_container_clone )
                            .find( ".js-source-name" )
                            .html( source_data[i].text )
                                .end()
                                    .find( ".js-user-type, .js-access-settings" ).select2({
                                        minimumResultsForSearch: Infinity
                                    })
                                        .end()
                                        ;

                    // remove email field from each row except the first one
                    if ( i > 0 ) {
                        _invite_people_row
                            .find( ".js-invite-people-email" )
                            .removeClass( ".js-invite-people-email" )
                            .html( "&nbsp;" )
                                ;
                    }
                }

                if ( source_data.length === 0 ) {
                    obj_form_actions._set_section_state( [ $section_team_access_settings, $section_team_invite_people ], "hide" );
                }
            },


            _clone_invite_people_row: function () {

                // var $this = $(this);
                // var source_data = $this.select2('data');

                $invite_people_row_clone
                    .clone()
                    .removeClass( "js-invite-people-row-clone" )
                    .addClass( "js-invite-people-row" )
                    .show()
                    .appendTo( $invite_people_row_container_clone )
                        // .find( ".js-source-name" )
                        // .html( source_data[i].text )
                        //     .end()
                                .find( ".js-user-type, .js-access-settings" ).select2({
                                    minimumResultsForSearch: Infinity
                                })
                                    ;
            },


            _add_new_email_recipient: function (e) {

                var _invite_people_row_container = $invite_people_row_container_clone
                    // clone the container which holds all the sources
                    .clone()
                        .removeClass( "js-invite-people-row-container-clone" )
                        .addClass( "js-invite-people-row-container" )
                            .appendTo( $invite_people_row_wrapper )
                                // find and remove the 'clone' row
                                .find( ".js-invite-people-row-clone" ).remove()
                                    .end()
                                        // find all .select2 select boxes that were part 
                                        // created as part of the clone process above
                                        // and remove them
                                        .find( ".select2" ).remove()
                                        .end()
                                            // programmatic-init select2 on these select boxes 
                                            .find( ".js-user-type, .js-access-settings" ).select2({
                                                minimumResultsForSearch: Infinity
                                            })
                                            ;

                e.preventDefault();
            }
        }

    };


    // GENERIC
    // -------------------------------------------------
    var obj_form_actions = form_actions;


    // select menu items
    $( ".js-header-nav__link.is-selected" )
        .closest( ".js-header-nav__item" )
        .prevAll()
            .find( ".js-header-nav__link" )
                .addClass( "is-complete" );



    // -------------------------------------------------
    // FAVOURITES PAGE
    // -------------------------------------------------

    $add_new_favourite.on( "click", function(e) {
        obj_form_actions.add_favourites._clone_favourite.call( $(this), e );
    });



    // -------------------------------------------------
    // AUTOPUSH PAGE
    // -------------------------------------------------

    // init select2 on <select> els if in DOM
    if ( $autopush_source_multi_select.length > 0 ) $autopush_source_multi_select.select2();
    if ( $autopush_destination_multi_select.length > 0 ) $autopush_destination_multi_select.select2();

    // init jquery-ui button (checkbox slider) if el in DOM
    if ( $checkbox_slider.length > 0 ) $checkbox_slider.button();

    // add source
    $autopush_source_multi_select.on("select2:select", function (e) { 
        obj_form_actions.autopush._do_add_source();
    });
    // remove source
    $autopush_source_multi_select.on("select2:unselect", function (e) { 
        obj_form_actions.autopush._do_remove_source.call( $(this) );
    });

    // add destination
    $autopush_destination_multi_select.on("select2:select", function (e) { 
        obj_form_actions.autopush._do_add_destination();
    });
    // remove destination
    $autopush_destination_multi_select.on("select2:unselect", function (e) { 
        obj_form_actions.autopush._do_remove_destination.call( $(this) );
    });



    // -------------------------------------------------
    // CREATE TEAM PAGE
    // -------------------------------------------------

    // add team button
    $btn_add_team.on( "click", function(e){
        obj_form_actions.create_team._create_team.call( $(this), e );
    });

    // init select2 on <select> els if in DOM
    if ( $team_settings_source_multi_select.length > 0 ) $team_settings_source_multi_select.select2();

    // invite member radio button - YES
    $rdo_invited_member_connect_source_yes.on( "click", function(){
        obj_form_actions.create_team._do_invite_sources_radio_click( "yes" );
    });

    // invite member radio button - NO
    $rdo_invited_member_connect_source_no.on( "click", function(){
        obj_form_actions.create_team._do_invite_sources_radio_click( "no" );
    });

    // team access add source
    $team_settings_source_multi_select.on("select2:select", function (e) { 
        obj_form_actions.create_team._do_add_source.call( $(this) );
    });
    // team access remove source
    $team_settings_source_multi_select.on("select2:unselect", function (e) { 
        obj_form_actions.create_team._do_add_source.call( $(this) );
    });

    // add new email recipient
    $add_new_email.on( "click", function(e) {
        obj_form_actions.create_team._add_new_email_recipient.call( $(this), e );
    });



    // remove class that hides content whilst form els are 
    // initiated to prevent FOUT 
    $prevent_fout.removeClass( "prevent-fout" );




    // .js-team-setup
    // .js-team-name
    // .js-team-settings
    // .js-team-settings-sources
    // .js-team-access-settings
    // .js-team-invite-people

})();
