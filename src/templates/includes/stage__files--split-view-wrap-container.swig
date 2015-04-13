{# this is the div to dupicate for split view #}
{# set the col_class to be "-col-{n}" where 'n' is the order of cols (1-3)  #}

<div class="split-view-wrap-container {{ col_class }} js-file-view">

	{% include "panel-header--files-table.swig" %}

	<div class="split-view-wrap">
		<div class="scrollable-content">
			<div class="table">

				{%> "table-row__file--header" %}

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

			</div><!-- // .table -->
		</div><!-- // .scrollable-content -->
	</div><!-- // .split-view-wrap -->
</div><!-- // .split-view-wrap-container -->
