{% set section = "signup" %}
{% include "stage-start.swig" %}

{% set obj = mydata.setup.stage_data %}
{% include "panel-header-stage.swig" %}

	{# section signup #}
	<section class="section-wrap -setup js-section-setup">
		
		<header class="panel-header panel-header--timeline">
			<nav class="header-nav -setup">
				<ul class="header-nav__list">
					<li class="header-nav__item">
						<a href="#" 
						class="header-nav__link is-complete" 
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
						<a href="#" 
						class="header-nav__link is-complete" 
						data-timeline-range="future">

                            <div class="media -v-center">
                                <div class="media__img">
                                    <div class="header-nav__icon header-nav__icon-text -num">2</div>
                                </div>
                                <div class="media__body">
                                    <div class="header-nav__text">Account Type</div>
                                </div>
                            </div>

						</a>
					</li>
					<li class="header-nav__item">
						<a href="#" 
						class="header-nav__link is-selected" 
						data-timeline-range="future">

                            <div class="media -v-center">
                                <div class="media__img">
                                    <div class="header-nav__icon header-nav__icon-text -num">3</div>
                                </div>
                                <div class="media__body">
                                    <div class="header-nav__text">Team Setup</div>
                                </div>
                            </div>

						</a>
					</li>
					<li class="header-nav__item">
						<a href="#" 
						class="header-nav__link" 
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
					<li class="header-nav__item">
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
				</ul>
			</nav>
		</header>

	</section><!-- // .section-wrap.-setup -->

{% include "stage-end.swig" %}
