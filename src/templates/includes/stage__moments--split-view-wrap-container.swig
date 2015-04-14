{# this is the div to dupicate for split view #}
{# set the col_class to be "-col-{n}" where 'n' is the order of cols (1-3)  #}

<div class="split-view-wrap-container {{ col_class }}">
	<div class="split-view-wrap">
		<div class="scrollable-content -{{ section }}">

			{% if section === "timeline" %}

				<section class="stage-section timeline-wrap js-timeline-wrap">
					{% include "timeline.swig" %}
				</section><!-- // .timeline-wrap -->

			{% elseif section === "daily-digest" %}

				<section class="stage-section daily-digest-wrap">
					{% include "daily-digest.swig" %}
				</section><!-- // .timeline-wrap -->

			{% endif %}
		</div><!-- // .scrollable-content -->
	</div><!-- // .split-view-wrap -->
</div><!-- // .split-view-wrap-container -->
