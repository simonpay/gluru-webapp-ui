{% if !bln_login_page %}
<div class="panel-header -absolute">
	<nav class="header-nav -setup">
		<ul class="header-nav__list">
			
			{# {% set current_section = obj_setup_data.section_id %} #}
			{% set current_section = obj_setup_data.section_id %}
			{% for obj_section in obj.sections %}

				<li class="header-nav__item js-header-nav__item">
					<a href="{{ obj_section.url }}" 
					class="header-nav__link{% if obj_section.section_id === current_section %} is-selected{% endif %} js-header-nav__link" 
					data-timeline-range="recent">

                        <div class="media -v-center">
                            <div class="media__img">
                                <div class="header-nav__icon header-nav__icon-text -num">{{ loop.index }}</div>
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
{% endif %}

<div class="scrollable-content__wrap{% if !bln_login_page %} -setup{% endif %}">
	<div class="scrollable-content">
		<div class="scrollable-content__inner-wrap -setup">

			{% if !bln_remove_sidebar %}
			<aside class="stage__sidebar">
				
				<div class="speech-bubble -setup -above">
					<div class="speech-bubble__text -heading">{{ obj_setup_data.help_data.heading }}</div>
					<div class="speech-bubble__text">{{ obj_setup_data.help_data.subheading }}</div>

{# 					<div class="speech-bubble__triangle-wrap">
						<div class="speech-bubble__triangle-shadow"></div>
						<div class="speech-bubble__triangle"></div>
					</div>
 #}
				</div>

				<div class="sprite__gluru-bot u-center-block"></div>

			</aside>
			{% endif %}
			<div class="stage__content">
