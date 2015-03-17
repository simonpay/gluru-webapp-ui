
	{# actions #}
	{%> "actions-start" %}
		
		
		{# related files #}
		{% set rObj = mydata.actions.relatedFiles %}
		{% include "options-list.swig" %}

		{# email #}
		{% set rObj = mydata.actions.email %}
		{% include "options-list.swig" %}

		{# people #}
		{% set rObj = mydata.actions.people %}
		{% include "options-list.swig" %}

		{# hierarchy #}
		{% set rObj = mydata.actions.hierarchy %}
		{% include "options-list.swig" %}

		{# web pages #}
		{% set rObj = mydata.actions.webPages %}
		{% include "options-list.swig" %}


	{%> "actions-end" %}

