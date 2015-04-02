{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

<div class="main-container js-main-container">

	{# main-nav #}
	{%> "main-nav" %}

	{# drawer #}
	{% include "src/templates/includes/drawer-files.swig" %}

	{# actions #}
	{# {% set moments_header = true %} #}
	{% include "src/templates/includes/actions-footprint.swig" %}

	{# stage #}
	{% set type = "future" %}
	{% include "src/templates/includes/stage__moments.swig" %}

</div>

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/moments.js"></script>
	<script>
        $( ".js-timeline-range" ).removeClass( "is-selected" );
        $( ".js-timeline-range[data-timeline-range='future']" ).addClass( "is-selected" );
	</script>
{% endblock %}
