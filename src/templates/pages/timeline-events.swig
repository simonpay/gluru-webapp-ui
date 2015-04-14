{% extends 'src/templates/layouts/ajax-content.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

	{% set obj = mydata.moments %}
	{% set type = "recent" %}
	{% set bln_ajax_load = true %}
	{% include "src/templates/includes/timeline.swig" %}

{% endblock %}

{% block javascripts %}
	{# {% parent %} #}
{% endblock %}
