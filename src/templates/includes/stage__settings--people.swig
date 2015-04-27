{% set obj_stage_data = obj.sections[2].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[2] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Manage people to your team</h1>
    <p class="stage__text">You can manage, remove or invite more people to your team.</p>

    </div>
                        
{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
