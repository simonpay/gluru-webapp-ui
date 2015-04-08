{% set obj_stage_data = obj.account_setup.stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.account_setup %}
{% include "stage__setup--start.swig" %}

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
