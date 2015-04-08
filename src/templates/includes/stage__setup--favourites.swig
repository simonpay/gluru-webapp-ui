{% set obj_stage_data = obj.favourites.stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.favourites %}
{% include "stage__setup--start.swig" %}

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
