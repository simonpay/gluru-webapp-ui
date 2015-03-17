{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

	{# main-nav #}
	{%> "main-nav" %}

	{# drawer #}
	{% include "src/templates/includes/drawer-files.swig" %}

	{# actions #}
	{% include "src/templates/includes/actions-files.swig" %}
	{# {%> "actions" %} #}

	{# stage #}
	{%> "stage-start" %}
		{%> "panel-header-stage" %}
		{%> "stage-files" %}
	{%> "stage-end" %}

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/files.js"></script>
{% endblock %}
