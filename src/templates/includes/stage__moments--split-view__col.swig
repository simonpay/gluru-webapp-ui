{# this is the div to dupicate for split view #}
{# set the col_class to be "-col-{n}" where 'n' is the order of cols (1-3)  #}

<div class="split-view__col {{ col_class }}">

	{% if moments_section === "timeline" %}

		<div class="panel-header panel-header--timeline">
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
		</div>

	{% endif %}


	<div class="scrollable-content__wrap -{{ moments_section }}{% if moments_section === 'timeline' %} js-scrollable-content__wrap--timeline{% endif %}">
		<div class="scrollable-content{% if moments_section === 'timeline' %} js-scrollable-content-timeline{% endif %}">

			{% if moments_section === "timeline" %}

				<section class="stage-section timeline-wrap js-timeline-wrap">
					{% include "timeline.swig" %}
				</section><!-- // .timeline-wrap -->

			{% elseif moments_section === "daily-digest" %}

				<section class="stage-section daily-digest-wrap">
					{% include "daily-digest.swig" %}
				</section><!-- // .timeline-wrap -->

			{% endif %}
		</div><!-- // .scrollable-content -->
	</div><!-- // .scrollable-content__wrap -->
</div><!-- // .split-view__col -->
