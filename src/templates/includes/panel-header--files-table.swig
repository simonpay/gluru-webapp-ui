<header class="panel-header -location">
	<div class="media -v-center">
	    <div class="media__img pop-menu-trigger js-pmt js-tt" 
	    	data-tt="Change Source"
	    	data-tt-pos="above"
	    	data-pop-menu="sources"
	    	>
	    	<div class="icon__gdrive"></div>
	    </div>
	    <div class="media__body">
			
			{% set hierarchy_type = "files" %}
            {% include "hierarchy-list.swig" %}

	    </div>
	</div>
</header>
