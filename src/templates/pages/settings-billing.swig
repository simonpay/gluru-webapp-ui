
{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
    {% parent %}
{% endblock %}

{% block content %}

    {% set obj = mydata.settings %}

    {# main-nav #}
    {% include "src/templates/includes/main-nav.swig" %}

    {# drawer #}
    {% include "src/templates/includes/drawer-files.swig" %}

    {# stage #}
    {% include "src/templates/includes/stage__settings--billing.swig" %}

{% endblock %}

{% block javascripts %}
    {% parent %}
    <script src="js/pages/settings.js"></script>
{% endblock %}
