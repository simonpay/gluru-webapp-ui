<div class="event-wrap -{{ event_obj.priority }} js-event-wrap">

	<div class="event-time">{{ event_obj.date_time }}</div>

	<div class="event-icon-wrap">
		<div class="event-icon icon-{{ event_obj.type }}"></div>
	</div>

	<div class="event">

			<div class="event-avatar">
				<div class="event-avatar__img-wrap">
					<img class="event-avatar__img" src="img/{{ event_obj.person_id }}.png" alt="">
				</div>
				{% if event_obj.source_type !== "" %}
				<div class="event-avatar__source-type">
					<div class="-icon {{ event_obj.source_type }}"></div>
				</div>
				{% endif %}
			</div>

			<div class="event__text-wrap">
				<div class="event__title">{{ event_obj.title|safe }}</div>
				<div class="event__description">{{ event_obj.description|safe }}</div>
			</div>

			<nav class="event-nav">
				<ul class="event-nav__list">
					<li class="event-nav__item">
						<div class="icon-moments js-event-nav__link"></div>
					</li>
					<li class="event-nav__item">
						<div class="icon-moments js-event-nav__link"></div>
					</li>
				</ul>
				<div class="event-nav__more">
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
				</div>
			</nav>

	</div>

</div>
