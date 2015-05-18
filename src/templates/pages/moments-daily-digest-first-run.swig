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


{% block tourdata %}
<ol class="tour__content">

	<li>
		<p class="speech-bubble__text -heading">Take the Gluru tour</p>
        <p class="speech-bubble__text">Hit 'enter' on your keyboard for the next tip. These tips show automatically but can be manual, in fact we can customise pretty much everything!</p>

	    {% include "src/templates/includes/tour__button.swig" %}
	</li>

	<li data-class="step-zero" class="-right -top-right" data-options="tipLocation:right">
		<p class="speech-bubble__text -heading">Home Button</p>
        <p class="speech-bubble__text">Takes you home...</p>

	    {% include "src/templates/includes/tour__button.swig" %}
	</li>

	<li data-class="step-one" class="-below" data-options="tipLocation:bottom">
		<p class="speech-bubble__text -heading">Daily Digest</p>
        <p class="speech-bubble__text">All the activity for all users and teams is captured in the RECENT timeline. Including Now and Daily Digest updates.</p>

	    {% include "src/templates/includes/tour__button.swig" %}
	</li>

	<li data-class="step-two" class="-below" data-options="tipLocation:bottom">
		<p class="speech-bubble__text -heading">Daily Digest</p>
        <p class="speech-bubble__text">More stuff about this item...</p>

	    {% include "src/templates/includes/tour__button.swig" %}
	</li>

	<li data-class="step-three" class="-above" data-options="tipLocation:top">
		<p class="speech-bubble__text -heading">Meeting Panel</p>
        <p class="speech-bubble__text">Stuff about this item...</p>

	    {% include "src/templates/includes/tour__button.swig" %}
	</li>

	<li>
		<p class="speech-bubble__text -heading">Modal Message</p>
        <p class="speech-bubble__text">Generic message alerting user to an important point.</p>

	    {% include "src/templates/includes/tour__button.swig" %}
	</li>

	<li data-class="step-five" class="-left -top-left" data-options="tipLocation:left">
		<p class="speech-bubble__text -heading">Now Button</p>
        <p class="speech-bubble__text">Stuff about the 'now' button...</p>
		
		{% set button_text = "End tour" %}
		{% set bln_hide_button_icon = true %}
	    {% include "src/templates/includes/tour__button.swig" %}
	</li>

</ol>
{% endblock %}


