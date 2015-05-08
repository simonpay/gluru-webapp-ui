{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

	{% set bln_hide_dev_buttons = 1 %}
	{% set bln_login_page = 1 %}
	{% set obj = mydata.login %}

	{# main-nav #}
	{% include "src/templates/includes/main-nav.swig" %}

	{# stage #}
	{% include "src/templates/includes/stage__login.swig" %}

{% endblock %}

{% block javascripts %}
	{% parent %}
    <script src="js/pages/setup.js"></script>
{% endblock %}
