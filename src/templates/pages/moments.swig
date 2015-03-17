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
	{% include "src/templates/includes/drawer-moments.swig" %}

	{# actions #}
	{% include "src/templates/includes/actions-moments.swig" %}

	{# stage #}
	{%> "stage-start" %}
		{%> "panel-header-stage" %}
		{%> "stage-moments" %}
	{%> "stage-end" %}

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/moments.js"></script>
{% endblock %}
