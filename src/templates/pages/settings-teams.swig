{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
    <link rel="stylesheet" href="css/jquery-ui.css" />
    {% parent %}
{% endblock %}

{% block content %}

    {% set obj = mydata.settings %}

    {# main-nav #}
    {% include "src/templates/includes/main-nav.swig" %}

    {# drawer #}
    {% include "src/templates/includes/drawer-files.swig" %}

    {# actions #}
    {% include "src/templates/includes/actions.swig" %}

    {# stage #}
    {% include "src/templates/includes/stage__settings--teams.swig" %}

{% endblock %}

{% block javascripts %}
    {% parent %}
    <script src="js/pages/settings.js"></script>
    {# <script src="js/pages/setup.js"></script> #}
    <script>
        (function(){
            $( ".js-user-type, .js-access-settings" ).select2({minimumResultsForSearch: -1});


            // clone form elements for adding team members
            $( ".js-add-new-email" ).on( "click", function(){
                // console.log( "hit" );
                
                var $wrapper_to_append_to = $(this).parent().find( ".js-invite-people-row-wrapper" );

                $(this)
                    .parent()
                    .find( ".js-invite-people-row-container-clone" )
                    // clone the container which holds all the sources
                    .clone()
                        .removeClass( "js-invite-people-row-container-clone" )
                        .addClass( "js-invite-people-row-container" )
                            .appendTo( $wrapper_to_append_to )
                                // find and remove the 'clone' row
                                // .find( ".js-invite-people-row-clone" ).remove()
                                    // .end()
                                        // find all .select2-container select boxes that were 
                                        // created as part of the clone process above
                                        // and remove them before initing select2 on the select
                                        // boxes programmatically
                                        .find( ".select2-container" ).remove()
                                        .end()
                                            // programmatic-init select2 on these select boxes 
                                            .find( "select.js-user-type, select.js-access-settings" ).select2({
                                                minimumResultsForSearch: -1
                                            })
                                            ;
            });

        })();
    </script>
{% endblock %}
