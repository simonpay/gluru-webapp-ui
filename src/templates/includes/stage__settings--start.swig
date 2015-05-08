<div class="panel-header panel-header--absolute">
	<nav class="header-nav">
		<ul class="header-nav__list">
			
			{# {% set current_section = obj_setup_data.section_id %} #}
			{% set current_section = obj_setup_data.section_id %}
			{% for obj_section in obj.sections %}

				<li class="header-nav__item js-header-nav__item">
					<a href="{{ obj_section.url }}" 
					class="header-nav__link{% if obj_section.section_id === current_section %} is-selected{% endif %} js-header-nav__link">

                        <div class="media -v-center">
                            <div class="media__img">
	                            <div class="header-nav__icon -{{ obj_section.icon_class }}"></div>
                            </div>
                            <div class="media__body -float-left">
                                <div class="header-nav__text">{{ obj_section.text }}</div>
                            </div>
                        </div>

					</a>
				</li>

			{% endfor %}

		</ul>
	</nav>
</div>

<div class="scrollable-content__wrap -settings">
	<div class="scrollable-content">
		<div class="scrollable-content__inner-wrap -stage">
