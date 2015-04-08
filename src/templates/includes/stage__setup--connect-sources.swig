{% set obj_stage_data = obj.connect_sources.stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.connect_sources %}
{% include "stage__setup--start.swig" %}

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
