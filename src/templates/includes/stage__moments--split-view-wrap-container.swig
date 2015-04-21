{# this is the div to dupicate for split view #}
{# set the col_class to be "-col-{n}" where 'n' is the order of cols (1-3)  #}

<div class="split-view-wrap-container {{ col_class }}">

	{% if moments_section === "timeline" %}

		<header class="panel-header panel-header--timeline">
			<div class="media -v-center">
			    <div class="media__img pop-menu-trigger js-pmt js-tt" 
			    	data-tt="Change Source"
			    	data-tt-pos="above"
			    	data-pop-menu="timeline-source"
			    	>
			    	<div class="icon__gdrive"></div>
			    </div>
			    <div class="media__body u-inherit-height">
					
					<div class="media -v-center">
					    <div class="media__img -right -sort-icon">

							<div class="icon-button js-icon-button -sort js-sort js-pmt js-tt" 
								data-pop-menu="timeline-sort" 
								data-tt="Sort Options" 
								data-tt-pos="left"></div>

					    </div>
					    <div class="media__body">
							
							<div class="split-view__heading">Everything</div>

					    </div>
					</div>

			    </div>
			</div>
		</header>

	{% endif %}


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
