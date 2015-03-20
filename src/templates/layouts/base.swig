<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{% block title %}{% endblock %}</title>
    <meta name="description" content="{% block meta-description %}{% endblock %}">
    <meta name="keywords" content="{% block meta-keywords %}{% endblock %}">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	{% block head %}
	<link rel="stylesheet" href="css/app.css" />
	{% endblock %}

    <script src="js/modernizr.min.js"></script>

</head>

<body>

<div class="main-container js-main-container">
    {% block content %}{% endblock %}
    <div class="tooltip is-hidden js-tooltip"></div>
</div>


{# TODO: remove this when finished dev! #}
<div class="tmp-buttons">
    <div class="button-group js-buttons-generic">
        <div class="label">Actions</div>
        <button class="button js-open-actions">open</button>
        <button class="button js-close-actions">close</button>
        <button class="button js-toggle-actions">toggle</button>
    </div>

    <div class="button-group js-buttons-generic">
        <div class="label">Drawer</div>
        <button class="button js-open-drawer">open</button>
        <button class="button js-close-drawer">close</button>
        <button class="button js-toggle-drawer">toggle</button>
    </div>

    <div class="button-group js-buttons-files">
        <button class="button js-single" data-class=".-cols-1"><strong>Single</strong> View</button>
        <button class="button js-double" data-class=".-cols-2">Split - <strong>2 cols</strong></button>
        <button class="button js-triple" data-class=".-cols-3">Split - <strong>3 cols</strong></button>
    </div>
</div>


{% block javascripts %}
<script src="js/app.js"></script>
{% endblock %}

</body>

</html>
