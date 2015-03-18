<div class="event-wrap -{{ event_obj.priority }}">

	<div class="event-time">{{ event_obj.date_time }}</div>

	<div class="event-icon-wrap">
		<div class="event-icon icon-{{ event_obj.type }}"></div>
	</div>

	<div class="event">
		{# <div class="event__inner-wrap"> #}
			<div class="event__avatar">
				<img class="event__avatar-img" src="img/tmp_avatar.png" alt="">
			</div>
			<div class="event__text-wrap">
				<div class="event__title">{{ event_obj.title|safe }}</div>
				<div class="event__description">{{ event_obj.description|safe }}</div>
			</div>

			<nav class="event-nav">
				<ul class="event-nav__list">
					<li class="event-nav__item">
						<div class="icon-moments"></div>
					</li>
					<li class="event-nav__item">
						<div class="icon-moments"></div>
					</li>
				</ul>
				<div class="event-nav__more">
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
				</div>
			</nav>
		{# </div> #}
	</div>

</div>
