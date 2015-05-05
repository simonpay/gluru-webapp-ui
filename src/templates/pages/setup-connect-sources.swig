{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

	{% set obj = mydata.setup %}

	{# main-nav #}
	{% include "src/templates/includes/main-nav.swig" %}

	{# stage #}
	{% include "src/templates/includes/stage__setup--connect-sources.swig" %}

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/setup.js"></script>
{% endblock %}
