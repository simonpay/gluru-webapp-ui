
	{# actions #}
	{% include "actions-start.swig" %}
		
		<div class="options-list__item -current-file">
			<div class="options-list-link__inner-wrap">
				<div class="options-list__icon">
					<div class="icon-file-evernote"></div>
				</div>
				<a href="#" class="options-list__text options-list__text--current-file">current_file_with_a_very_long_name_which_cant_fit_on_the_screen.doc</a>
				<div class="options-list__icon -right">
					<div class="icon-gdrive-sml"></div>
				</div>
			</div>
		</div>

		{# summary #}
		{% set rObj = mydata.actions.file_summary %}
		{% include "options-list.swig" %}

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

