<header class="panel-header -stage">
	<div class="stage__heading-wrap">
		<div class="stage__heading">{{ obj.stage_heading }}</div>
		<div class="stage__sub-heading">{{ obj.stage_sub_heading }}</div>
	</div>
	<nav class="stage-nav">
		<ul class="stage-nav__list">
			<li class="stage-nav__item">
				<div class="stage-nav__icon -search js-search js-tt"
				data-tt="Search"
				data-tt-dir="right"></div>
			</li>
			<li class="stage-nav__item">
				<div class="stage-nav__icon -now js-now js-tt"
				data-tt="Now"
				data-tt-dir="right"></div>
			</li>
			<li class="stage-nav__item">
				<div class="stage-nav__icon -drawer js-toggle-drawer js-tt"
				data-tt="Toggle Drawer"
				data-tt-dir="right"></div>
			</li>
			<li class="stage-nav__item">
				<div class="stage-nav__icon -actions js-toggle-actions js-tt"
				data-tt="Toggle Actions"
				data-tt-dir="right"></div>
			</li>
			<li class="stage-nav__item">
			{% if obj.stage_id === "moments" %}
				<div class="stage-nav__icon -infinity js-toggle-timeline-view js-tt"
				data-tt="Toggle View"
				data-tt-dir="right"></div>
			{% elseif obj.stage_id === "files" %}
				<div class="stage-nav__icon -infinity js-toggle-file-view js-tt"
				data-tt="Toggle View"
				data-tt-dir="right"></div>
			{% endif %}
			</li>
			<li class="stage-nav__item">
				<div class="stage-nav__icon -sort js-tt"
				data-tt="Sort Options"
				data-tt-dir="right"></div>
			</li>
		</ul>
	</nav>
</header>
