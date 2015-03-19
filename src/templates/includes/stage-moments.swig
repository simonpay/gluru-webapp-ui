{%> "stage-start" %}

{% set obj = mydata.moments.stage_data %}
{% include "panel-header-stage.swig" %}

	{# section moments #}
	<section class="section-wrap -moments js-section-moments">
		

		{# Notifications #}
		<section class="stage-section notifications-wrap" role="notifications">
			<header class="content-panel-header">
				<div class="content-panel-heading">Notifications</div>
			</header>

			<div class="notifications">
				
				<div class="notification -critical"></div>
				<div class="notification -non-critical"></div>
				<div class="notification -now"></div>

			</div>
		</section>


		{# Timeline #}
		<section class="stage-section timeline-wrap">
			<header class="content-panel-header">
				<div class="content-panel-heading">Timeline</div>
			</header>


			<div class="timeline">

				<div class="event-group-heading">
					<div class="-text">Today</div>
				</div>

				{% for obj in mydata.moments.timeline.events %}

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

			</div><!-- // .timeline -->
		</section><!-- // .timeline-wrap -->
	</section><!-- // .section-moments -->

{%> "stage-end" %}
