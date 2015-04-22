{% set obj_stage_data = obj.stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

    {% set moments_section = "daily-digest" %}
    {% include "panel-header--moments.swig" %}

    {# daily digest doesnt have split view so always cols = 1 #}
    {% set cols = 1 %}
    {% set cols_class = "-cols-1" %}
    {% set split_view_class = "" %}
    {% include "stage__moments--split-view__row.swig" %}

{% include "stage-end.swig" %}
