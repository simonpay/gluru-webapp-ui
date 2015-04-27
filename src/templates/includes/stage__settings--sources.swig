{% set obj_stage_data = obj.sections[1].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[1] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Manage your sources</h1>
    <p class="stage__text">View and manage your connected sources</p>

{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
