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


		<!-- split-view combos -->

		<!-- single col -->
		<div class="split-view-wrap-outer -cols-1 js-timeline-wrap-outer">

			<div class="split-view-wrap-container -col-1">
				<div class="split-view-wrap">
					<div class="scrollable-content">
						<section class="stage-section timeline-wrap js-timeline-wrap">
							{% include "timeline.swig" %}
						</section><!-- // .timeline-wrap -->
					</div><!-- // .scrollable-content -->
				</div><!-- // .split-view-wrap -->
			</div><!-- // .split-view-wrap-container -->
			
		</div><!-- // .split-view-wrap-outer -->


		<!-- double col -->
		<div class="split-view-wrap-outer -split-view -cols-2 js-timeline-wrap-outer">

			<div class="split-view-wrap-container -col-1">
				<div class="split-view-wrap">
					<div class="scrollable-content">
						<section class="stage-section timeline-wrap js-timeline-wrap">
							{% include "timeline.swig" %}
						</section><!-- // .timeline-wrap -->
					</div><!-- // .scrollable-content -->
				</div><!-- // .split-view-wrap -->
			</div><!-- // .split-view-wrap-container -->

			<div class="split-view-wrap-container -col-2">
				<div class="split-view-wrap">
					<div class="scrollable-content">
						<section class="stage-section timeline-wrap js-timeline-wrap">
							{% include "timeline.swig" %}
						</section><!-- // .timeline-wrap -->
					</div><!-- // .scrollable-content -->
				</div><!-- // .split-view-wrap -->
			</div><!-- // .split-view-wrap-container -->

		</div><!-- // .split-view-wrap-outer -->


		<!-- triple col -->
		<div class="split-view-wrap-outer -split-view -cols-3 js-timeline-wrap-outer">

			<div class="split-view-wrap-container -col-1">
				<div class="split-view-wrap">
					<div class="scrollable-content">
						<section class="stage-section timeline-wrap js-timeline-wrap">
							{% include "timeline.swig" %}
						</section><!-- // .timeline-wrap -->
					</div><!-- // .scrollable-content -->
				</div><!-- // .split-view-wrap -->
			</div><!-- // .split-view-wrap-container -->

			<div class="split-view-wrap-container -col-2">
				<div class="split-view-wrap">
					<div class="scrollable-content">
						<section class="stage-section timeline-wrap js-timeline-wrap">
							{% include "timeline.swig" %}
						</section><!-- // .timeline-wrap -->
					</div><!-- // .scrollable-content -->
				</div><!-- // .split-view-wrap -->
			</div><!-- // .split-view-wrap-container -->

			<div class="split-view-wrap-container -col-3">
				<div class="split-view-wrap">
					<div class="scrollable-content">
						<section class="stage-section timeline-wrap js-timeline-wrap">
							{% include "timeline.swig" %}
						</section><!-- // .timeline-wrap -->
					</div><!-- // .scrollable-content -->
				</div><!-- // .split-view-wrap -->
			</div><!-- // .split-view-wrap-container -->

		</div><!-- // .split-view-wrap-outer -->



	</section><!-- // .section-moments -->

{%> "stage-end" %}
