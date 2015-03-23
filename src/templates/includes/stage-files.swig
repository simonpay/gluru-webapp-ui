{%> "stage-start" %}

{% set obj = mydata.files.stage_data %}
{% include "panel-header-stage.swig" %}

	{# section files #}
	<section class="section-wrap -files js-section-files">

		{# single view #}
		<div class="table-wrap-outer -cols-1 -narrow-view">

			<div class="table-wrap-container -col-1 js-file-view">
			
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

				<div class="table-wrap">

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
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->

		</div>




		{# split-view - 2 col3 #}
		<div class="table-wrap-outer -split-view -cols-2">

			<div class="table-wrap-container -col-1 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="table-wrap">
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
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->



			<div class="table-wrap-container -col-2 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="table-wrap">
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
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->



		</div><!-- // .table-wrap-outer -->





		{# split-view - 3 cols #}
		<div class="table-wrap-outer -split-view -cols-3">

			<div class="table-wrap-container -col-1 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="table-wrap">
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
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->

			<div class="table-wrap-container -col-2 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="table-wrap">
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
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->

			<div class="table-wrap-container -col-3 js-file-view">
			
				<header class="panel-header panel-header--location">
					<div class="media">
					    <div class="media__img sub-menu-trigger js-tt" data-tt="Change Source">
					    	<div class="icon-gdrive"></div>
					    </div>
					    <div class="media__body -location-text">My Drive</div>
					</div>
				</header>

				<div class="table-wrap">
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
				</div><!-- // .table-wrap -->
			</div><!-- // .table-container -->
		</div><!-- // .table-wrap-outer -->
	</section><!-- // .section-files -->

{%> "stage-end" %}

