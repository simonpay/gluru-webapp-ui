<section class="search-wrap is-hidden js-search-wrap">

		<div class="close-button-wrap__header-panel">
			<div class="icon-button -center-transform -right js-close-search">
				<div class="icon-close"></div>
			</div>
		</div>

		<div class="search-results-wrap">

			<div class="scrollable-content">
				<div class="table">
					<div class="table__row -header">
						<div class="table__col -file-name"><div class="th-inner">Filename</div></div>
						<div class="table__col -modified"><div class="th-inner">Modified</div></div>
						<div class="table__col -source"><div class="th-inner">Source</div></div>
					</div>

					{% for obj in mydata.files.table_data.files %}
						{% set obj = obj %}
						{% include "table-row-file.swig" %}
					{% endfor %}
					{% for obj in mydata.files.table_data.files %}
						{% set obj = obj %}
						{% include "table-row-file.swig" %}
					{% endfor %}
					{% for obj in mydata.files.table_data.files %}
						{% set obj = obj %}
						{% include "table-row-file.swig" %}
					{% endfor %}

				</div>
			</div><!-- // .scrollable-content -->
			
		</div>

</section>
