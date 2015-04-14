<div class="js-events-for-cloning u-display-none">
	{% for obj_event in obj.timeline[type].events %}

		{% if !obj_event.is_group %}

			{% set obj_event = obj_event %}
			{% include "event.swig" %}

		{% endif %}

	{% endfor %}
	{% for obj_event in obj.timeline[type].events %}

		{% if !obj_event.is_group %}

			{% set obj_event = obj_event %}
			{% include "event.swig" %}

		{% endif %}

	{% endfor %}
</div>


{% if !bln_ajax_load %}
<div class="timeline">

	<div class="event-group-heading">
		<div class="event-group-heading__text-wrap">
			<div class="event-group-heading__text">Today</div>
		</div>
	</div>
{% endif %}




	{% for obj_event in obj.timeline[type].events %}

		{% if bln_ajax_load %}
		{# make page for loading events via ajax #}

			{% if !obj_event.is_group %}

				{% set obj_event = obj_event %}
				{% include "event.swig" %}

			{% endif %}

		{% else %}
		{# normal events for app prototype #}

			{% if obj_event.is_group %}
			{# grouped events inside heading #}

				<div class="event-group-heading">
					<div class="event-group-heading__text-wrap">
						<div class="event-group-heading__text">{{ obj_event.group_name }}</div>
					</div>
				</div>

				<div class="event-group">

				{% for sub_obj_event in obj_event.events %}
					
					{% set obj_event = sub_obj_event %}
					{% include "event.swig" %}

				{% endfor %}

				</div>

			{% else %}
			{# non-grouped events #}

				{% set obj_event = obj_event %}
				{% include "event.swig" %}

			{% endif %}

		{% endif %}

	{% endfor %}


{% if !bln_ajax_load %}
{# 	<div class="event-group-heading">
		<div class="event-group-heading__text-wrap">
			<div class="event-group-heading__text">Start</div>
		</div>
	</div>
 #}
</div><!-- // .timeline -->
{% endif %}
