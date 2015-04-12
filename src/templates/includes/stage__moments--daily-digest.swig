{% set obj_stage_data = obj.stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

    {# section moments #}
    <section class="section-wrap -moments js-section-moments">
        
        {% set section = "daily-digest" %}
        {% include "panel-header--moments.swig" %}

        {# daily digest doesnt have split view so always cols = 1 #}
        {% set cols = 1 %}
        {% set cols_class = "-cols-1" %}
        {% set split_view_class = "" %}
        {% include "stage__moments--split-view-wrap-outer.swig" %}

    </section><!-- // .section-wrap.-moments -->

{% include "stage-end.swig" %}
