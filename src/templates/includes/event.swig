<div class="event-wrap js-event-wrap">

	<div class="event-time">
		<div class="event-time__text">{{ obj_event.date_time }}</div>
	</div>

	<div class="event-icon-wrap">
		<div class="event-icon {{ obj_event.type }}"></div>
	</div>

	<div class="priority-box -event -{{ obj_event.priority }} js-event" data-priority="{{ obj_event.priority }}"{% if obj_event.priority === "now" %} data-now-type="{{ obj_event.now_type }}"{% endif %}>

		<div class="media -v-center">
		    <div class="media__img">

				<div class="disc-img -event">
					<div class="disc-img__img-wrap">
					{% if obj_event.avatar_type === "icon" %}
						<div class="u-center-transform {{ obj_event.person_id }}"></div>
					{% else %}
						<img class="disc-img__img" src="img/{{ obj_event.person_id }}.png" alt="">
					{% endif %}
					</div>

					{% if obj_event.source_type !== "" %}
					<div class="inset-icon -event-source">
						<div class="u-center-transform {{ obj_event.source_type }}"></div>
					</div>
					{% endif %}
				</div>

		    </div>
		    <div class="media__body">

				<div class="priority-box__text" title="{{ obj_event.title|striptags }}">{{ obj_event.title|safe }}</div>
				<div class="priority-box__text" title="{{ obj_event.description|striptags }}">{{ obj_event.description|safe }}</div>

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


{% if obj_event.is_multiple_event %}

	<div class="event-table-wrap">

		<div class="scrollable-content">
			<div class="table">

			{% for sub_obj_event in obj_event.items %}
				
				{% if obj_event.multiple_event_type === "people" %}
					
					{% set obj_person_row = sub_obj_event %}
					{% include "table-row-people.swig" %}

				{% elseif obj_event.multiple_event_type === "files" %}

					{% set obj_file_row = sub_obj_event %}
					{% include "table-row-file.swig" %}

				{% endif %}

			{% endfor %}

			</div>
		</div><!-- // .scrollable-content -->
	</div>

{% endif %}


</div>
