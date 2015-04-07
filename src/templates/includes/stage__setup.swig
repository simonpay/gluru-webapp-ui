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
                                    <div class="header-nav__text">Account Setup</div>
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
                                    <div class="header-nav__text">Connect Sources</div>
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

		<div class="scrollable-content__wrap -stage">
			<div class="scrollable-content">
				<div class="scrollable-content__inner-wrap -stage">
					<div class="process__text-pos">
						<div class="process__heading-text">Almost there!</div>
						<div class="process__subheading-text">Create a team and invite some team members.</div>
					</div>
					<div class="info-panel">
						<header class="panel-header -info-panel">
							<div class="info-panel-header__text-pos info-panel-header__text"><strong>Step 3</strong> - Team Setup</div>
						</header>
					</div>
				</div>
			</div>
		</div>


	</section><!-- // .section-wrap.-setup -->

{% include "stage-end.swig" %}
