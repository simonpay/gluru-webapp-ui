{# {% if obj_stage_data.stage_id === "moments" %} #}
	{# {% set stage_wrap_section = moments_section %} #}
{# {% else %} #}
	{# {% set stage_wrap_section = obj_stage_data.stage_id %} #}
{# {% endif %} #}
{# <div class="stage-wrap stage-wrap--{{ stage_wrap_section }}"> #}
<div class="stage-wrap stage-wrap--{{ obj_stage_data.stage_id }}">
	{% include "../includes/status-bar.swig" %}
	<main class="stage">
