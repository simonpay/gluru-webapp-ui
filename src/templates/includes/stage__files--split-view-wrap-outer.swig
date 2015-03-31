{# this is the containing div for the split view #}
{# set the split_view_class to be "-cols-{n}" where 'n' is the number of cols in the split (1-3)  #}

{# todo: remove inline style attr - these are just for testing #}

<div class="split-view-wrap-outer {{ split_view_class }} {{ cols_class }} js-file-table-wrap-outer" style="display:none">


	{% set col_class = "-col-1" %}
	{% include "stage__files--split-view-wrap-container.swig" %}


{% if cols === 2 || cols === 3 %}

	{% set col_class = "-col-2" %}
	{% include "stage__files--split-view-wrap-container.swig" %}

{% endif %}


{% if cols === 3 %}

	{% set col_class = "-col-3" %}
	{% include "stage__files--split-view-wrap-container.swig" %}

{% endif %}


</div><!-- // .split-view-wrap-outer -->
