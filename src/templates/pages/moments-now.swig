{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

<div class="main-container main-container--moments js-main-container">

	{# main-nav #}
	{%> "main-nav" %}

	{# drawer #}
	{% include "src/templates/includes/drawer-moments.swig" %}

	{# actions #}
	{% include "src/templates/includes/actions-moments.swig" %}

	{# stage #}
	{% include "src/templates/includes/stage-moments.swig" %}

</div>

{% endblock %}

{% block javascripts %}
	{% parent %}
	<script src="js/pages/moments.js"></script>
	<script>
		(function(){
			$( ".stage-nav__icon.js-toggle-actions" ).click();
			$( ".js-event-nav__link" )[0].click();
		})();
		</script>
{% endblock %}
