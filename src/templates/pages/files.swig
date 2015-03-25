{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

<div class="main-container main-container--files js-main-container">

	{# main-nav #}
	{%> "main-nav" %}

	{# drawer #}
	{% include "src/templates/includes/drawer-files.swig" %}

	{# actions #}
	{% include "src/templates/includes/actions-files.swig" %}

	{# stage #}
	{% include "src/templates/includes/stage-files.swig" %}

</div>

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/files.js"></script>
{% endblock %}
