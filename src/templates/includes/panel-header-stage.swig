<header class="panel-header -stage">

	{% include "stage-heading.swig" %}
	{% if obj.stage_id !== "setup" %}
		{% include "stage-account-nav.swig" %}
		{% include "stage-nav.swig" %}
		{% include "search-input.swig" %}
	{% endif %}

</header>
