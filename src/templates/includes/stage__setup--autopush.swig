{% set obj_stage_data = obj.sections[2].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[2] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Autopush</p>


                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
