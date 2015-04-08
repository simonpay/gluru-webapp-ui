<div class="timeline">

	<div class="event-group-heading">
		<div class="event-group-heading__text-wrap">
			<div class="event-group-heading__text">Today</div>
		</div>
	</div>

	{% for obj_event in obj.timeline[type].events %}

		{% if obj_event.is_group %}

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

				{% set obj_event = obj_event %}
				{% include "event.swig" %}

		{% endif %}

	{% endfor %}

	<div class="event-group-heading">
		<div class="event-group-heading__text-wrap">
			<div class="event-group-heading__text">Start</div>
		</div>
	</div>

</div><!-- // .timeline -->
