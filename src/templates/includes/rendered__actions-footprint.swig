
	{# actions #}
	{% include "actions-start.swig" %}
		
		{# current file #}
		{%> "rendered__actions-options-list--current-file" %}

		{# hierarchy #}
		{%> "rendered__actions-options-list--hierarchy" %}

		{# summary #}
		{%> "rendered__actions-options-list--summary" %}

		{# related files #}
		{%> "rendered__actions-options-list--related-files" %}

		{# people #}
		{%> "rendered__actions-options-list--people" %}

		{# web pages #}
		{%> "rendered__actions-options-list--web-links" %}


	{%> "actions-end" %}

