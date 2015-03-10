{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

<div class="main-container">
	{%> "main-nav" %}
	{%> "drawer" %}
	{%> "actions" %}
	{%> "stage" %}
</div>

<div class="tmp-buttons tmp-buttons--drawer">
	<button class="toggle">Toggle Drawer</button>
</div>
<div class="tmp-buttons tmp-buttons--actions">
	<button class="toggle">Toggle Actions</button>
</div>


{% endblock %}

{% block javascripts %}
	{% parent %}
{% endblock %}
