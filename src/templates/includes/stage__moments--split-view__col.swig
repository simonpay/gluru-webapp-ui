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
							
							<span class="hierarchy__text">Everything</span>

					    </div>
					</div>

			    </div>
			</div>
		</div>

	{% endif %}


	<div class="scrollable-content__wrap -{{ moments_section }}{% if moments_section === 'timeline' %} js-scrollable-content__wrap--timeline{% endif %}">
		<div class="scrollable-content{% if moments_section === 'timeline' %} js-scrollable-content-timeline{% endif %}">

			{% set str_include = moments_section + ".swig" %}
			{% if moments_section === "timeline" %}
				{% set str_js = "js-timeline-wrap" %}
			{% elseif moments_section === "daily-digest" %}
				{% set str_js = "" %}
			{% endif %}
		
			<div class="scrollable-content__inner-wrap -{{ moments_section }} {{ str_js }}">

				{% include str_include %}

			</div><!-- // .scrollable-content__inner-wrap -->
			
		</div><!-- // .scrollable-content -->
	</div><!-- // .scrollable-content__wrap -->
</div><!-- // .split-view__col -->
