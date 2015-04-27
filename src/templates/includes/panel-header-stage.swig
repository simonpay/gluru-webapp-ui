<header class="panel-header -stage{% if obj.drawer_is_not_present %} -no-drawer{% endif %} js-panel-header-stage">
	
	{% include "stage-heading.swig" %}

	{% if !obj.hide_account_nav %}
		{% include "stage-account-nav.swig" %}
	{% endif %}

	{% if !obj.hide_stage_nav %}
		{% include "stage-nav.swig" %}
	{% endif %}

	{% if !obj.hide_search_input %}
		{% include "search-input.swig" %}
	{% endif %}

</header>
