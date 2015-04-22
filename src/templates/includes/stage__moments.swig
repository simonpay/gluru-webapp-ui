{% set obj_stage_data = obj.stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

    {% set moments_section = "timeline" %}
    {% include "panel-header--moments.swig" %}

    {# single view #}
    {% set cols = 1 %}
    {% set cols_class = "-cols-1" %}
    {% set split_view_class = "" %}
    {% include "stage__moments--split-view__row.swig" %}

    {# split-view - 2 cols #}
    {% set cols = 2 %}
    {% set cols_class = "-cols-2" %}
    {% set split_view_class = "-split-view" %}
    {% include "stage__moments--split-view__row.swig" %}

    {# split-view - 3 cols #}
    {% set cols = 3 %}
    {% set cols_class = "-cols-3" %}
    {% set split_view_class = "-split-view" %}
    {% include "stage__moments--split-view__row.swig" %}

{% include "stage-end.swig" %}
