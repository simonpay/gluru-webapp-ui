
	{# actions #}
	{% include "actions-start.swig" %}
		
		{%> "actions-file-summary" %}

		{# related files #}
		{% set rObj = mydata.actions.relatedFiles %}
		{% include "options-list.swig" %}

		{# email #}
		{% set rObj = mydata.actions.email %}
		{% include "options-list.swig" %}

		{# people #}
		{% set rObj = mydata.actions.people %}
		{% include "options-list.swig" %}

	{%> "actions-end" %}

