
	{# drawer #}
	{% set heading = 'Files' %}
	{% include "drawer-start.swig" %}


		{# sources #}
		{% set rObj = mydata.drawer.sources %}
		{% include "options-list.swig" %}

		{# favourites #}
		{% set rObj = mydata.drawer.favourites %}
		{% include "options-list.swig" %}

		{# teams #}
		{% set rObj = mydata.drawer.teams %}
		{% include "options-list.swig" %}


	{%> "drawer-end" %}

