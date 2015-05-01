{% set obj_stage_data = obj.sections[3].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[3] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Notifications</h1>
    <p class="stage__text u-mb++">Manage your notifications</p>

    <section>
        
	   	{% for obj_catgeory in obj_setup_data.notifications.categories %}

	    	<h2 class="stage__subheading-text">{{ obj_catgeory.name }} notifications</h2>

		    <hr class="u-mb-">

		    <div class="u-mb++">
		    	
		    	{% set counter = loop.index %}
		    	{% for obj_notification in obj_catgeory.items %}

					<div class="row u-mb-">

						<div class="med-6">

				    		<span class="table__text" title="{{ obj_notification.name }}">{{ obj_notification.name }}</span>

						</div>

						<div class="med-6 u-text-right">

			                <div class="check-box__slider prevent-fout">
			                    <input 
			                        type="checkbox" 
			                        class="checkbox_slider" 
			                        checked
			                        id="{{ obj_notification.id }}{{ counter }}">
			                    <label 
			                        class="prevent-fout" 
			                        for="{{ obj_notification.id }}{{ counter }}"></label>
			                </div>

						</div>
					</div>

				{% endfor %}

		    </div>

		{% endfor %}

		<div class="row u-text-right">

		    <p>
		        <a href="#" class="btn -lozenge -positive -small">Save</a>
		    </p>

		</div>

	</section>


{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
