<section class="search-wrap is-hidden js-search-wrap">

		<div class="close-button-wrap__header-panel">
			<div class="icon-button -center-transform -right js-close-search">
				<div class="icon-close"></div>
			</div>
		</div>

		<div class="search-results-wrap">

			<div class="scrollable-content">
				<div class="table -selectable">
					<div class="table__header">
						<div class="table__col -file-name">
							<div class="table__text--header">Filename</div>
						</div>
						<div class="table__col -modified">
							<div class="table__text--header">Modified</div>
						</div>
						<div class="table__col -source">
							<div class="table__text--header">Source</div>
						</div>
					</div>

					{% for obj in mydata.files.table_data.files %}
						{% set obj_file_row = obj %}
						{% include "table-row-file.swig" %}
					{% endfor %}
					{% for obj in mydata.files.table_data.files %}
						{% set obj_file_row = obj %}
						{% include "table-row-file.swig" %}
					{% endfor %}
					{% for obj in mydata.files.table_data.files %}
						{% set obj_file_row = obj %}
						{% include "table-row-file.swig" %}
					{% endfor %}

				</div>
			</div><!-- // .scrollable-content -->
			
		</div>

</section>
