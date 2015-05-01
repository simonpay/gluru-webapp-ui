<div class="table__row js-table-row">

	<div class="table__col -file-name">
		<div class="media -v-center">
		    <div class="media__img">

		    	<div class="table__icon">
		    		<div class="{{ obj_file_row.file_class }}"></div>
		    	</div>

		    </div>
		    <div class="media__body">

	    		<a href="#" class="table__text" title="{{ obj_file_row.text }}">{{ obj_file_row.text }}</a>
	    		{% if obj_file_row.file_summary %}
		    		<div class="table__text -light" title="{{ obj_file_row.text }}">{{ obj_file_row.file_summary }}</div>
	    		{% endif %}
		    </div>

		    {# {%> "file-nav" %} #}
		    
		</div>
	</div>

	<div class="table__col -modified">
		<div class="table__text" title="{{ obj_file_row.file_modified }}">{{ obj_file_row.file_modified }}</div>
	</div>

	<div class="table__col -source">
		<div class="media -v-center u-center-block">
		    <div class="media__img">

		    	<div class="table__icon">
		    		<div class="{{ obj_file_row.source_class }}"></div>
		    	</div>

		    </div>
		</div>
	</div>

</div>
