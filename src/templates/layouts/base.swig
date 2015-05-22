<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{% block title %}{% endblock %}</title>
    <meta name="description" content="{% block meta-description %}{% endblock %}">
    <meta name="keywords" content="{% block meta-keywords %}{% endblock %}">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="icon" type="image/ico" href="favicon.ico">

	{% block head %}
	<link rel="stylesheet" href="css/app.css" />
	{% endblock %}

    <script src="js/modernizr.min.js"></script>

</head>

<body>

{# settings data array indexes #}
{% set settings_index__profile = 0 %}
{% set settings_index__sources = 1 %}
{% set settings_index__autopush = 2 %}
{% set settings_index__teams = 3 %}
{% set settings_index__notifications = 4 %}
{% set settings_index__security = 5 %}
{% set settings_index__billing = 6 %}
{% set settings_index__support = 7 %}

{% include "../includes/status-bar.swig" %}
<div class="main-container js-main-container">
    {% block content %}{% endblock %}
</div>
{%> "tool-tip" %}
{%> "pop-menu" %}
{% include "../includes/loading.swig" %}
{% include "../includes/modal.swig" %}
{# {% include "../includes/annotations.swig" %} #}


{% if !bln_hide_dev_buttons %}
{# TODO: remove this when finished dev! #}
<div class="tmp-buttons">
    <div class="button-group is-hidden js-buttons-generic">
        <div class="label">Modal</div>
        <button class="button [ js-show-modal js-modal-trigger ]" data-modal-content="default">Show</button>
    </div>

    <div class="button-group is-hidden js-buttons-generic">
        <div class="label">Actions</div>
        <button class="button js-toggle-actions">toggle</button>
    </div>

    <div class="button-group is-hidden js-buttons-generic">
        <div class="label">Drawer</div>
        <button class="button js-toggle-drawer">toggle</button>
    </div>

    <div class="button-group is-hidden js-buttons-generic">
        <div class="label">Setup Pages</div>
        <button class="button js-setup-pages">Take me there</button>
    </div>

    <div class="button-group is-hidden js-buttons-generic">
        <div class="label">Status Bar</div>
        <button class="button js-toggle-status-bar">Toggle</button>
    </div>

    <div class="button-group is-hidden js-buttons-files">
        <button class="button js-single" data-class=".-cols-1"><strong>Single</strong> View</button>
        <button class="button js-double" data-class=".-cols-2">Split - <strong>2 cols</strong></button>
        <button class="button js-triple" data-class=".-cols-3">Split - <strong>3 cols</strong></button>
    </div>

    <div class="button-group is-hidden js-buttons-moments">
        <button class="button js-single" data-class=".-cols-1"><strong>Single</strong> View</button>
        <button class="button js-double" data-class=".-cols-2">Split - <strong>2 cols</strong></button>
        <button class="button js-triple" data-class=".-cols-3">Split - <strong>3 cols</strong></button>
    </div>
</div>
{% endif %}

{% block javascripts %}
<script src="js/app.js"></script>
{% endblock %}

{% block tourdata %}
{% endblock %}

</body>
</html>
