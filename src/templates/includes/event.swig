<div class="event-wrap js-event-wrap">

	<div class="event-time">{{ event_obj.date_time }}</div>

	<div class="event-icon-wrap">
		<div class="event-icon {{ event_obj.type }}"></div>
	</div>

	<div class="priority-box -event -{{ event_obj.priority }} js-event" data-priority="{{ event_obj.priority }}">

		<div class="media -v-center">
		    <div class="media__img">

				<div class="disc-img -event">
					<div class="disc-img__img-wrap">
					{% if event_obj.avatar_type === "icon" %}
						<div class="u-center-transform {{ event_obj.person_id }}"></div>
					{% else %}
						<img class="disc-img__img" src="img/{{ event_obj.person_id }}.png" alt="">
					{% endif %}
					</div>

					{% if event_obj.source_type !== "" %}
					<div class="inset-icon -event-source">
						<div class="u-center-transform {{ event_obj.source_type }}"></div>
					</div>
					{% endif %}
				</div>

		    </div>
		    <div class="media__body">

				<div class="text {% if event_obj.priority !== 'now' %}-nowrap{% endif %} -xxlrg -c-white -fw-light">{{ event_obj.title|safe }}</div>
				<div class="text -nowrap -xxlrg -c-white -fw-light">{{ event_obj.description|safe }}</div>

		    </div>
		</div>


		<nav class="event-nav">
			<ul class="event-nav__list">
				<li class="event-nav__item">
					<div class="icon__folder--white js-event-nav__link"></div>
				</li>
				<li class="event-nav__item">
					<div class="icon__share--white js-event-nav__link"></div>
				</li>
			</ul>
			<div class="event-nav__more">
				<div class="dot"></div>
				<div class="dot"></div>
				<div class="dot"></div>
			</div>
		</nav>

	</div>


{% if event_obj.is_multiple_event %}

	<div class="event-table-wrap">

		<div class="scrollable-content">
			<div class="table">

			{% for sub_obj_2 in event_obj.items %}
				
				{% if event_obj.multiple_event_type === "people" %}

					{%> "table-row-people" %}

				{% elseif event_obj.multiple_event_type === "files" %}

					{%> "table-row-file" %}

				{% endif %}

			{% endfor %}

			</div>
		</div><!-- // .scrollable-content -->
	</div>

{% endif %}


</div>
