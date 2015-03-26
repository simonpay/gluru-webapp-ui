{%> "stage-start" %}

{% set obj = mydata.files.stage_data %}
{% include "panel-header-stage.swig" %}

	{# todo: remove inline style attr - these are just for testing #}

	{# section files #}
	<section class="section-wrap -files js-section-files">

		{# single view #}
		<div class="split-view-wrap-outer -cols-1 js-file-table-wrap-outer" style="display:none">

			<div class="split-view-wrap-container -col-1 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt js-pmt" 
					    	data-tt="Change Source" 
					    	data-tt-config='{ "offset": {"top": 0, "left": 50} }'>
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="split-view-wrap">

					<div class="scrollable-content">
						<div class="table">
							<div class="table__row -header">
								<div class="table__col -file-name"><div class="th-inner">Filename</div></div>
								<div class="table__col -modified"><div class="th-inner">Modified</div></div>
								<div class="table__col -source"><div class="th-inner">Source</div></div>
							</div>

							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}

						</div>
					</div><!-- // .scrollable-content -->
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->

		</div>




		{# split-view - 2 col3 #}
		<div class="split-view-wrap-outer -split-view -cols-2 js-file-table-wrap-outer" style="display:none">

			<div class="split-view-wrap-container -col-1 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="split-view-wrap">
					<div class="scrollable-content">
						<div class="table">
							<div class="table__row -header">
								<div class="table__col -file-name"><div class="th-inner">Filename</div></div>
								<div class="table__col -modified"><div class="th-inner">Modified</div></div>
								<div class="table__col -source"><div class="th-inner">Source</div></div>
							</div>

							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}

						</div><!-- // .table -->
					</div><!-- // .scrollable-content -->
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->



			<div class="split-view-wrap-container -col-2 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="split-view-wrap">
					<div class="scrollable-content">
						<div class="table">
							<div class="table__row -header">
								<div class="table__col -file-name"><div class="th-inner">Filename</div></div>
								<div class="table__col -modified"><div class="th-inner">Modified</div></div>
								<div class="table__col -source"><div class="th-inner">Source</div></div>
							</div>

							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}

						</div><!-- // .table -->
					</div><!-- // .scrollable-content -->
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->



		</div><!-- // .table-wrap-outer -->





		{# split-view - 3 cols #}
		<div class="split-view-wrap-outer -split-view -cols-3 js-file-table-wrap-outer" style="display:none">

			<div class="split-view-wrap-container -col-1 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="split-view-wrap">
					<div class="scrollable-content">
						<div class="table">
							<div class="table__row -header">
								<div class="table__col -file-name"><div class="th-inner">Filename</div></div>
								<div class="table__col -modified"><div class="th-inner">Modified</div></div>
								<div class="table__col -source"><div class="th-inner">Source</div></div>
							</div>

							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}

						</div>
					</div><!-- // .scrollable-content -->
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->

			<div class="split-view-wrap-container -col-2 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="split-view-wrap">
					<div class="scrollable-content">
						<div class="table">
							<div class="table__row -header">
								<div class="table__col -file-name"><div class="th-inner">Filename</div></div>
								<div class="table__col -modified"><div class="th-inner">Modified</div></div>
								<div class="table__col -source"><div class="th-inner">Source</div></div>
							</div>

							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}

						</div>
					</div><!-- // .scrollable-content -->
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->

			<div class="split-view-wrap-container -col-3 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="split-view-wrap">
					<div class="scrollable-content">
						<div class="table">
							<div class="table__row -header">
								<div class="table__col -file-name"><div class="th-inner">Filename</div></div>
								<div class="table__col -modified"><div class="th-inner">Modified</div></div>
								<div class="table__col -source"><div class="th-inner">Source</div></div>
							</div>

							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
							{%> "table-row-file" %}
						</div>
					</div><!-- // .scrollable-content -->
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->
		</div><!-- // .table-wrap-outer -->
	</section><!-- // .section-files -->

{%> "stage-end" %}

