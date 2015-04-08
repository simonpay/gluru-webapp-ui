{% set obj_stage_data = obj.sections[4].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[4] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Select the sources you want to connect to gluru</p>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
