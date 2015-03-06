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

{% block content %}{% endblock %}

{% block javascripts %}
<script src="js/app.js"></script>
{% endblock %}

</body>

</html>
