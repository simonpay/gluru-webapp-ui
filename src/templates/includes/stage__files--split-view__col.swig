{# this is the div to dupicate for split view #}
{# set the col_class to be "-col-{n}" where 'n' is the order of cols (1-3)  #}

<div class="split-view__col {{ col_class }} js-file-view">

	{% include "panel-header--files-table.swig" %}

	{# <div class="split-view-wrap"> #}
	<div class="scrollable-content__wrap -files">
		<div class="scrollable-content">
			<div class="table -selectable -sortable">

				{%> "table-row__file--header" %}

				<div class="table__body">

					{% for obj_file_row in obj.table_data.files %}
						{% set obj_file_row = obj_file_row %}
						{% include "table-row-file.swig" %}
					{% endfor %}


					{% if col_class === "-col-2" %}

						{% for obj_file_row in obj.table_data.files %}
							{% set obj_file_row = obj_file_row %}
							{% include "table-row-file.swig" %}
						{% endfor %}
						{% for obj_file_row in obj.table_data.files %}
							{% set obj_file_row = obj_file_row %}
							{% include "table-row-file.swig" %}
						{% endfor %}
						{% for obj_file_row in obj.table_data.files %}
							{% set obj_file_row = obj_file_row %}
							{% include "table-row-file.swig" %}
						{% endfor %}
						{% for obj_file_row in obj.table_data.files %}
							{% set obj_file_row = obj_file_row %}
							{% include "table-row-file.swig" %}
						{% endfor %}

					{% endif %}

					{% if col_class === "-col-3" %}

						{% for obj_file_row in obj.table_data.files %}
							{% set obj_file_row = obj_file_row %}
							{% include "table-row-file.swig" %}
						{% endfor %}
						{% for obj_file_row in obj.table_data.files %}
							{% set obj_file_row = obj_file_row %}
							{% include "table-row-file.swig" %}
						{% endfor %}
						{% for obj_file_row in obj.table_data.files %}
							{% set obj_file_row = obj_file_row %}
							{% include "table-row-file.swig" %}
						{% endfor %}

					{% endif %}

				</div><!-- // .tbody -->
			</div><!-- // .table -->
		</div><!-- // .scrollable-content -->
	</div><!-- // .scrollable-content__wrap -->
</div><!-- // .split-view__col -->
