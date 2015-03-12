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

{# <div class="tmp-buttons tmp-buttons--drawer">
	<button class="button js-toggle">Toggle Drawer</button>
</div>
<div class="tmp-buttons tmp-buttons--actions">
	<button class="button js-toggle">Toggle Actions</button>
</div>
 #}

<div class="tmp-buttons js-buttons-files">
	<button class="button js-single" data-class=".-cols-1">Single View</button>
	<button class="button js-double" data-class=".-cols-2">Split - 2 cols</button>
	<button class="button js-triple" data-class=".-cols-3">Split - 3 cols</button>
</div>


{% endblock %}

{% block javascripts %}
	{% parent %}
{% endblock %}
