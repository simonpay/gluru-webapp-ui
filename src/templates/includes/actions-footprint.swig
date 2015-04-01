
	{# actions #}
	{% include "actions-start.swig" %}
		
		{# hierarchy #}
		{% set rObj = mydata.actions.hierarchy %}
		{% include "options-list.swig" %}

		{# summary #}
		{% set rObj = mydata.actions.file_summary %}
		{% include "options-list.swig" %}

		{# related files #}
		{% set rObj = mydata.actions.related_files %}
		{% include "options-list.swig" %}

		{# email #}
		{# {% set rObj = mydata.actions.email %} #}
		{# {% include "options-list.swig" %} #}

		{# people #}
		{% set rObj = mydata.actions.people %}
		{% include "options-list.swig" %}

		{# web pages #}
		{% set rObj = mydata.actions.web_pages %}
		{% include "options-list.swig" %}


	{%> "actions-end" %}

