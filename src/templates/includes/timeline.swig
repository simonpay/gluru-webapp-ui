<div class="timeline">

	<div class="event-group-heading">
		<div class="-text">Today</div>
	</div>

	{% for obj in mydata.moments.timeline[type].events %}

		{% if obj.is_group %}

			<div class="event-group-heading">
				<div class="-text">{{ obj.group_name }}</div>
			</div>

			<div class="event-group">

			{% for sub_obj in obj.events %}
				
				{% set event_obj = sub_obj %}
				{% include "event.swig" %}

			{% endfor %}

			</div>

		{% else %}

				{% set event_obj = obj %}
				{% include "event.swig" %}

		{% endif %}

	{% endfor %}

	<div class="event-group-heading">
		<div class="-text">Start</div>
	</div>

</div><!-- // .timeline -->
