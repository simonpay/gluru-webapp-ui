{% set index = settings_index__sources %}

{% set obj_stage_data = obj.sections[index].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[index] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Manage your sources</h1>
    <p class="stage__text u-mb++">View and manage your connected sources</p>

    <section>
        
        <p class="stage__text u-mb--">Total usage - available space</p>

        <div class="progress-bar__container u-mb">
            <div class="progress-bar" style="width:5%"></div>
            <div class="progress-bar__label lrg-label-text">95%</div>
        </div>

    </section>

	<hr class="u-mb++">

	<section>
		
	    <h2 class="stage__heading-text">Connected sources</h2>

	    <hr class="u-mb0">

		<div class="table -tall-cells">

			<div class="table__body">

            	{% for obj_source in obj_setup_data.sources %}

					<div class="table__row">

						<div class="table__col">

							<div class="media -v-center">
							    <div class="media__img">

							    	<div class="table__icon">
							    		<div class="{{ obj_source.icon_class }}"></div>
							    	</div>

							    </div>
							    <div class="media__body">

						    		<a href="#" class="table__text" title="{{ obj_source.name }}">{{ obj_source.name }}</a>

							    </div>
							</div>

						</div>

						<div class="table__col">
							<div class="table__text">Authenticated {{ obj_source.authentication_date }}</div>
						</div>

						<div class="table__col">
							<div class="table__text">{{ obj_source.usage }}</div>
						</div>

						<div class="table__col -deauth">

                            <a href="#" class="btn -lozenge -white -small -full">Deauthorise</a>

						</div>

					</div><!-- // .table__row -->

				{% endfor %}

			</div><!-- // .table__body -->
		</div><!-- // .table -->

	</section>


{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
