<nav class="stage-nav">
	<ul class="stage-nav__list">
{# 		<li class="stage-nav__item">
			<div class="icon-button js-icon-button -search js-search js-tt"
			data-tt="Search"
			data-tt-dir="right"></div>
		</li>
 #}		<li class="stage-nav__item">
			<div class="icon-button js-icon-button -now js-now js-tt"
			data-tt="Now"
			data-tt-dir="right"></div>
		</li>
		<li class="stage-nav__item">
			<div class="icon-button js-icon-button -drawer js-toggle-drawer js-tt"
			data-tt="Toggle Drawer"
			data-tt-dir="right"></div>
		</li>
		<li class="stage-nav__item">
			<div class="icon-button js-icon-button -actions js-toggle-actions js-tt"
			data-tt="Toggle Actions"
			data-tt-dir="right"></div>
		</li>
		<li class="stage-nav__item">
		{% if obj.stage_id === "moments" %}
			<div class="icon-button js-icon-button -infinity js-toggle-timeline-view js-tt"
			data-tt="Toggle View"
			data-tt-dir="right"></div>
		{% elseif obj.stage_id === "files" %}
			<div class="icon-button js-icon-button -infinity js-toggle-file-view js-tt"
			data-tt="Toggle View"
			data-tt-dir="right"></div>
		{% endif %}
		</li>
		<li class="stage-nav__item">
			<div class="icon-button js-icon-button -sort js-tt"
			data-tt="Sort Options"
			data-tt-dir="right"></div>
		</li>
	</ul>
</nav>
