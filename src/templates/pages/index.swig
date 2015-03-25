{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

<div class="main-container js-main-container">

	{%> "main-nav" %}

</div>

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/home.js"></script>
{% endblock %}
