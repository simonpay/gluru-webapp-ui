{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

	{% include "src/templates/includes/main-nav.swig" %}

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/home.js"></script>
{% endblock %}
