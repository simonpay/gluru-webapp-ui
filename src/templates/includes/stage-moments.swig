{%> "stage-start" %}

{% set obj = mydata.moments.stage_data %}
{% include "panel-header-stage.swig" %}

	{# section moments #}
	<section class="section-wrap -moments js-section-moments">
		

		{# Notifications #}
		<section class="stage-section notifications-wrap" role="notifications">
			<header class="content-panel-header">
				<div class="content-panel-heading">Notifications</div>
			</header>

			<div class="notifications">
				
				<div class="notification -critical"></div>
				<div class="notification -non-critical"></div>
				<div class="notification -now"></div>

			</div>
		</section>


		{# Timeline #}
		{# classes to config this el #}
			{# -split-view: #}
			{# -cols-{n} #}
		<section class="stage-section timeline-wrap js-timeline-wrap">
			<header class="content-panel-header">
				<div class="content-panel-heading">Timeline</div>
			</header>

			{% include "timeline.swig" %}
			{% include "timeline.swig" %}
			{% include "timeline.swig" %}
		</section><!-- // .timeline-wrap -->
	</section><!-- // .section-moments -->

{%> "stage-end" %}
