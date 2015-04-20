{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
    <link rel="stylesheet" href="css/jquery-ui.css" />
    {% parent %}
{% endblock %}

{% block content %}

    {% set bln_hide_dev_buttons = 1 %}
    {% set obj = mydata.setup %}

    {# main-nav #}
    {% include "src/templates/includes/main-nav.swig" %}

    {# stage #}
    {% include "src/templates/includes/stage__setup--create-team.swig" %}

{% endblock %}

{% block javascripts %}
    {% parent %}
    <script src="js/pages/setup.js"></script>
    <script>
        (function(){
            $(".js-example-basic-multiple").select2();
            $(".js-example-basic-hide-search").select2({
                minimumResultsForSearch: Infinity
            });
            // $( ".checkbox_slider" ).button();
            $( "#radio" ).buttonset();

            // remove class that sets visibility:hidden
            // $( ".prevent-fout" ).removeClass( "prevent-fout" );
        })();
    </script>
{% endblock %}
