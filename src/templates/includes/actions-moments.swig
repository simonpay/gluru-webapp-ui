
	{# actions #}
	{% set moments_header = true %}
	{% include "actions-start.swig" %}
		
		{# summary #}
		{% set rObj = mydata.actions.file_summary %}
		{% include "options-list.swig" %}

		{# related files #}
		{% set rObj = mydata.actions.relatedFiles %}
		{% include "options-list.swig" %}

		{# email #}
		{# {% set rObj = mydata.actions.email %} #}
		{# {% include "options-list.swig" %} #}

		{# people #}
		{% set rObj = mydata.actions.people %}
		{% include "options-list.swig" %}

	{%> "actions-end" %}

