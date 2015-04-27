<nav class="stage-nav">
	<ul class="stage-nav__list">
		<li class="stage-nav__item">
			<div class="icon-button js-icon-button -drawer js-toggle-drawer js-tt"
				data-tt="Toggle Drawer" 
				data-tt-pos="left"></div>
		</li>
		<li class="stage-nav__item">
			<div class="icon-button js-icon-button -actions js-toggle-actions js-tt"
				data-tt="Toggle Actions" 
				data-tt-pos="left"></div>
		</li>
		
		{% if obj_stage_data.stage_id === "moments" || obj_stage_data.stage_id === "files" %}

			<li class="stage-nav__item">

				{% if obj_stage_data.stage_id === "moments" %}

					<div class="icon-button js-icon-button -infinity js-toggle-timeline-view js-tt"
						data-tt="Toggle View" 
						data-tt-pos="left"></div>

				{% elseif obj_stage_data.stage_id === "files" %}

					<div class="icon-button js-icon-button -infinity js-toggle-file-view js-tt"
						data-tt="Toggle View" 
						data-tt-pos="left"></div>

				{% endif %}

			</li>

		{% endif %}

		<li class="stage-nav__item">
			<div class="icon-button js-icon-button -sort js-sort js-pmt js-tt" 
				data-pop-menu="sort" 
				data-tt="Sort Options" 
				data-tt-pos="left"></div>
		</li>
	</ul>
</nav>
