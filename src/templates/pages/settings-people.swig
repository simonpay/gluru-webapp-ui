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
    {% include "src/templates/includes/stage__settings--people.swig" %}

{% endblock %}

{% block javascripts %}
    {% parent %}
    <script src="js/pages/settings.js"></script>
    <script>
        (function(){
            $( ".js-user-type, .js-access-settings" ).select2({minimumResultsForSearch: -1});
        })();
    </script>
{% endblock %}
