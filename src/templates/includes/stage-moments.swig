{%> "stage-start" %}

{% set obj = mydata.moments.stage_data %}
{% include "panel-header-stage.swig" %}

	{# section moments #}
	<section class="section-wrap -moments js-section-moments">
		
		<header class="panel-header panel-header--timeline">
			<nav class="header-nav">
				<ul class="header-nav__list">
					<li class="header-nav__item">
						<a href="#" 
						class="header-nav__link is-selected js-timeline-range" 
						data-timeline-range="recent">
							<div class="header-nav__icon -recent"></div>
							<div class="header-nav__text">Recent</div>
						</a>
					</li>
					<li class="header-nav__item">
						<a href="#" 
						class="header-nav__link js-timeline-range" 
						data-timeline-range="future">
							<div class="header-nav__icon -future"></div>
							<div class="header-nav__text">Future</div>
						</a>
					</li>
				</ul>
			</nav>
		</header>

		<div class="scrollable-content">

			{# Notifications #}
{# 			<section class="stage-section notifications-wrap" role="notifications">
				<header class="content-panel-header">
					<div class="content-panel-heading">Notifications</div>
				</header>

				<div class="notifications">
					
					<div class="notification -critical"></div>
					<div class="notification -non-critical"></div>
					<div class="notification -now"></div>

				</div>
			</section>
 #}

			{# Timeline #}
			{# classes to config this el #}
				{# -split-view: #}
				{# -cols-{n} #}
			<section class="stage-section timeline-wrap js-timeline-wrap">
{# 				<header class="content-panel-header">
					<div class="content-panel-heading">Timeline</div>
				</header>
 #}
				{% include "timeline.swig" %}
				{% include "timeline.swig" %}
				{% include "timeline.swig" %}
			</section><!-- // .timeline-wrap -->

		</div><!-- // .scrollable-content -->

	</section><!-- // .section-moments -->

{%> "stage-end" %}
