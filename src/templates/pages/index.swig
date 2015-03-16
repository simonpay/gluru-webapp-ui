{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

{%> "main-nav" %}
{%> "drawer"  %}
{%> "actions" %}
{%> "stage-start" %}
{%> "stage-end" %}

{% endblock %}

{% block javascripts %}
	{% parent %}
{% endblock %}
