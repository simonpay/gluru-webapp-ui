{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

	{% set obj = mydata.moments %}

	{# main-nav #}
	{% include "src/templates/includes/main-nav.swig" %}

	{# drawer #}
	{% include "src/templates/includes/drawer-files.swig" %}

	{# actions #}
	{% include "src/templates/includes/actions.swig" %}

	{# stage #}
	{% set type = "future" %}
	{# {% set moments_section = "daily-digest" %} #}
	{% include "src/templates/includes/stage__moments--daily-digest.swig" %}

	<div class="demo-only daily-digest-first-run" style="display:none;"></div>

{% endblock %}



{% block javascripts %}
	{% parent %}
	<script src="js/pages/moments.js"></script>
	<script>
        $( ".js-timeline-range" ).removeClass( "is-selected" );
        $( ".js-timeline-range[data-timeline-range='daily-digest']" ).addClass( "is-selected" );
	    $( ".js-toggle-timeline-view" )
	    	.off() // remove event handler
	    		.addClass( "is-disabled" );
		$( ".js-actions--current-item" ).removeClass( "-now" ).addClass( "-daily-digest" );
	</script>
{% endblock %}
