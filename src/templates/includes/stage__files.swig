{% set obj_stage_data = obj.stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

	{# section files #}
	<section class="section-wrap -files js-section-files">

		{# single view #}
		{% set cols = 1 %}
		{% set cols_class = "-cols-1" %}
		{% set split_view_class = "" %}
		{% include "stage__files--split-view-wrap-outer.swig" %}

		{# split-view - 2 cols #}
		{% set cols = 2 %}
		{% set cols_class = "-cols-2" %}
		{% set split_view_class = "-split-view" %}
		{% include "stage__files--split-view-wrap-outer.swig" %}

		{# split-view - 3 cols #}
		{% set cols = 3 %}
		{% set cols_class = "-cols-3" %}
		{% set split_view_class = "-split-view" %}
		{% include "stage__files--split-view-wrap-outer.swig" %}

	</section><!-- // .section-wrap.-files -->

{% include "stage-end.swig" %}

