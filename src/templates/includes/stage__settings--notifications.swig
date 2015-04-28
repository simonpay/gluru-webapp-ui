{% set obj_stage_data = obj.sections[3].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[3] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Notifications</h1>
    <p class="stage__text u-mb++">Manage your notifications</p>

    <section>
        
    	<h2 class="stage__subheading-text">Email notifications</h2>

	    <hr>

	    <div class="u-mb">
	    	
	    	{% for obj_source in obj_setup_data.notifications %}

				<div class="row u-mb-">

					<div class="med-6">

			    		<span class="table__text" title="{{ obj_source.name }}">{{ obj_source.name }}</span>

					</div>

					<div class="med-6 u-text-right">

		                <div class="check-box__slider prevent-fout">
		                    <input 
		                        type="checkbox" 
		                        class="checkbox_slider" 
		                        checked
		                        id="{{ obj_source.id }}">
		                    <label 
		                        class="prevent-fout" 
		                        for="{{ obj_source.id }}"></label>
		                </div>

					</div>
				</div>

			{% endfor %}

	    </div>

		<div class="row u-text-right">

		    <p>
		        <a href="#" class="btn -lozenge -positive -small">Save</a>
		    </p>

		</div>

	</section>


{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
