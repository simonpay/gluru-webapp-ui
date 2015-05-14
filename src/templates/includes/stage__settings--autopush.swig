{% set index = settings_index__autopush %}

{% set obj_stage_data = obj.sections[index].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[index] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Autopush</h1>
    <p class="stage__text u-mb++">Manage your autopush settings</p>



{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
