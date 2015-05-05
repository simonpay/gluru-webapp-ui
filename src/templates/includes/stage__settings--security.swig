{% set obj_stage_data = obj.sections[4].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[4] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Security settings</h1>
    <p class="stage__text u-mb++">View and manage your username, password and sessions</p>

    <section>

        <div class="row">
            <div class="lrg-4 u-cf">

                <div class="media -settings">
                    <div class="media__img -right">

                        <p>
                            <a href="#" class="btn -lozenge -white -small u-ml- js-modal-trigger" data-modal-content="change-username">Change</a>
                        </p>

                    </div>
                    <div class="media__body">

				        <h2 class="stage__subheading-text u-mb0">Username</h2>

                    </div>
                </div>

            </div>

        </div>

    </section>

	<hr>

    <section>

        <div class="row">
            <div class="lrg-4 u-cf">

                <div class="media -settings">
                    <div class="media__img -right">

                        <p>
                            <a href="#" class="btn -lozenge -white -small u-ml- js-modal-trigger" data-modal-content="change-password">Change</a>
                        </p>

                    </div>
                    <div class="media__body">

				        <h2 class="stage__subheading-text u-mb0">Password</h2>

                    </div>
                </div>

            </div>

        </div>

    </section>

	<hr>

    <section>
		
		<h2 class="stage__subheading-text u-mb0">Security settings</h2>
    	<p class="stage__text">Current and recent web app and mobile app sessions</p>

	    <hr class="u-mb0">

		<div class="table -tall-cells">

			<div class="table__body">

            	{% for obj_source in obj_setup_data.sessions %}

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
							<div class="table__text">{{ obj_source.timing }}</div>
						</div>

						<div class="table__col -deauth">

							<a class="icon-button -center-transform -right">
								<div class="icon-close"></div>
							</a>

						</div>

					</div><!-- // .table__row -->

				{% endfor %}

			</div><!-- // .table__body -->
		</div><!-- // .table -->

    </section>



{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
