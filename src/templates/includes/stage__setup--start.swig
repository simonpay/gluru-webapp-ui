{# section signup #}
<section class="section-wrap -setup js-section-setup">
	
	<header class="panel-header panel-header--setup">
		<nav class="header-nav -setup">
			<ul class="header-nav__list">
				
				{# {% set current_section = obj_setup_data.section_id %} #}
				{% set current_section = obj_setup_data.section_id %}
				{% for obj_section in obj.sections %}

				<li class="header-nav__item js-header-nav__item">
					<a href="{{ obj_section.url }}" 
					class="header-nav__link {% if obj_section.section_id === current_section %}is-selected{% endif %} js-header-nav__link" 
					data-timeline-range="recent">

                        <div class="media -v-center">
                            <div class="media__img">
                                <div class="header-nav__icon header-nav__icon-text -num">{{ loop.index }}</div>
                            </div>
                            <div class="media__body">
                                <div class="header-nav__text">{{ obj_section.text }}</div>
                            </div>
                        </div>

					</a>
				</li>

				{% endfor %}


{# 				<li class="header-nav__item">
					<a href="create-account.html" 
					class="header-nav__link {% if obj_setup_data.bln_create_account_complete %}is-complete {% endif %} {% if obj_setup_data.section_id === 'create_account' %}is-selected {% endif %}" 
					data-timeline-range="recent">

                        <div class="media -v-center">
                            <div class="media__img">
                                <div class="header-nav__icon header-nav__icon-text -num">1</div>
                            </div>
                            <div class="media__body">
                                <div class="header-nav__text">Create Account</div>
                            </div>
                        </div>

					</a>
				</li>
				<li class="header-nav__item">
					<a href="account-setup.html" 
					class="header-nav__link {% if obj_setup_data.bln_account_setup_complete %}is-complete {% endif %} {% if obj_setup_data.section_id === 'account_setup' %}is-selected {% endif %}" 
					data-timeline-range="future">

                        <div class="media -v-center">
                            <div class="media__img">
                                <div class="header-nav__icon header-nav__icon-text -num">2</div>
                            </div>
                            <div class="media__body">
                                <div class="header-nav__text">Account Setup</div>
                            </div>
                        </div>

					</a>
				</li>
				<li class="header-nav__item">
					<a href="connect-sources.html" 
					class="header-nav__link {% if obj_setup_data.bln_connect_sources_complete %}is-complete {% endif %} {% if obj_setup_data.section_id === 'connect_sources' %}is-selected {% endif %}" 
					data-timeline-range="future">

                        <div class="media -v-center">
                            <div class="media__img">
                                <div class="header-nav__icon header-nav__icon-text -num">3</div>
                            </div>
                            <div class="media__body">
                                <div class="header-nav__text">Connect Sources</div>
                            </div>
                        </div>

					</a>
				</li>
				<li class="header-nav__item">
					<a href="favourites.html" 
					class="header-nav__link {% if obj_setup_data.bln_favourites_complete %}is-complete {% endif %} {% if obj_setup_data.section_id === 'favourites' %}is-selected {% endif %}" 
					data-timeline-range="future">

                        <div class="media -v-center">
                            <div class="media__img">
                                <div class="header-nav__icon header-nav__icon-text -num">4</div>
                            </div>
                            <div class="media__body">
                                <div class="header-nav__text">Favourites</div>
                            </div>
                        </div>

					</a>
				</li>
 #}
{# 				<li class="header-nav__item">
					<a href="#" 
					class="header-nav__link" 
					data-timeline-range="future">

                        <div class="media -v-center">
                            <div class="media__img">
                                <div class="header-nav__icon header-nav__icon-text -num">5</div>
                            </div>
                            <div class="media__body">
                                <div class="header-nav__text">Auto-Push</div>
                            </div>
                        </div>

					</a>
				</li>
 #}
			</ul>
		</nav>
	</header>

	<div class="scrollable-content__wrap -stage">
		<div class="scrollable-content">
			<div class="info-panel">

				<aside class="info-panel__aside">
					
					<div class="speech-bubble">
						<div class="speech-bubble__text -heading">{{ obj_setup_data.help_data.heading }}</div>
						<div class="speech-bubble__text">{{ obj_setup_data.help_data.subheading }}</div>
					</div>

					<div class="sprite__gluru-bot u-center-block"></div>

				</aside>
				<div class="info-panel__content">
