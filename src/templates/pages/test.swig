{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

	{% set bln_hide_dev_buttons = 1 %}
	{% set obj = mydata.setup %}

	{# main-nav #}
	{% include "src/templates/includes/main-nav.swig" %}

	{# stage #}
	{% include "src/templates/includes/stage__setup--test.swig" %}

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/moments.js"></script>
{% endblock %}
