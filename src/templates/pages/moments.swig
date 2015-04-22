{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

	{% set obj = mydata.moments %}
	{% set bln_timeline_page = 1 %}

	{# main-nav #}
	{% include "src/templates/includes/main-nav.swig" %}

	{# drawer #}
	{% include "src/templates/includes/drawer-files.swig" %}

	{# actions #}
	{% include "src/templates/includes/actions.swig" %}

	{# stage #}
	{% set type = "recent" %}
	{# {% set moments_section = "timeline" %} #}
	{% include "src/templates/includes/stage__moments.swig" %}

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/moments.js"></script>
	<script src="js/pages/timeline.js"></script>
{% endblock %}
