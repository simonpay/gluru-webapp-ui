{# this is the div to dupicate for split view #}
{# set the col_class to be "-col-{n}" where 'n' is the order of cols (1-3)  #}

<div class="split-view-wrap-container {{ col_class }} js-file-view">

	{%> "panel-header--files-table" %}

	<div class="split-view-wrap">
		<div class="scrollable-content">
			<div class="table">

				{%> "table-row__file--header" %}

				{%> "table-row-file" %}
				{%> "table-row-file" %}
				{%> "table-row-file" %}
				{%> "table-row-file" %}
				{%> "table-row-file" %}

			{% if col_class === "-col-2" %}

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

			{% endif %}

			{% if col_class === "-col-3" %}

				{%> "table-row-file" %}
				{%> "table-row-file" %}
				{%> "table-row-file" %}
				{%> "table-row-file" %}

			{% endif %}

			</div><!-- // .table -->
		</div><!-- // .scrollable-content -->
	</div><!-- // .split-view-wrap -->
</div><!-- // .split-view-wrap-container -->
