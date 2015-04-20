{% set obj_stage_data = obj.sections[2].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[2] %}
{% include "stage__setup--start.swig" %}

    <form>

        <h1 class="info-panel__heading-text">Autopush source</h1>

        <section class="form-section -autopush-sources js-autopush-sources">

            <div class="row">
                <div class="large-11">

					<p class="stage__text">If you would like gluru to help you organise your email attachments you can <strong>click below to add sources</strong>. You can skip this step and set up autopush later if you like.</p>

                    <p>
                        <select 
                            class="js-autopush-source__multi-select prevent-fout" 
                            multiple="multiple" 
                            data-placeholder="Click to add sources..." 
                            style="width:100%">
                                <option value="Gmail">Gmail</option>
                                <option value="Exchange">Exchange</option>
                        </select>
                    </p>

                </div>
            </div>

		    <div class="row">
		        <div class="large-11">
		            <hr class="hr__line">
		        </div>
		    </div>

        </section>


        <section class="form-section -autopush-destination is-hidden js-section-autopush-destination">

	        <h1 class="info-panel__heading-text">Autopush destination source</h1>

            <div class="row">
                <div class="large-11">

					<p class="stage__text">Now select a destination source for gluru to store your attachments. Gluru will keep them safe in a folder called <strong>gluru attachments</strong>.</p>

                    <p>
                        <select 
                            class="js-autopush-destination__multi-select prevent-fout" 
                            multiple="multiple" 
                            data-placeholder="Click to add destinations..." 
                            style="width:100%">
                                <option value="Drive">Drive</option>
                                <option value="Calendar">Calendar</option>
                                <option value="Dropbox">Dropbox</option>
                                <option value="Evernote">Evernote</option>
                                <option value="Box">Box</option>
                        </select>
                    </p>

                </div>
            </div>

	        <div class="large-11">
	            <hr class="hr__line">
	        </div>

        </section>


        <section class="form-section -autopush-notifications is-hidden js-section-autopush-notifications">

	        <h1 class="info-panel__heading-text">Autopush notifications</h1>

            <div class="row">
                <div class="large-11">

                    <div class="media">
                        <div class="media__img -right -lrg-margin">
                        
                            <div class="check-box__slider prevent-fout">
                                <input 
                                    type="checkbox" 
                                    class="checkbox_slider js-checkbox-slider" 
                                    id="addTeam">
                                <label 
                                    for="addTeam">Toggle</label>
                            </div>

                        </div>
                        <div class="media__body">

							<p class="stage__text">Would you like to receive storage limit notifications for your destination source?</p>

                        </div>
                    </div>


                </div>
            </div>

	        <div class="large-11">
	            <hr class="hr__line">
	        </div>

        </section>


        <section class="form-section -submit js-section-submit">

            <button class="btn__lozenge -gray -icon-right">
                <div class="btn__icon icon__arrow--white"></div>
                Skip
            </button>
			
            <button class="btn__lozenge -green -icon-right is-hidden js-btn-next">
                <div class="btn__icon icon__arrow--white"></div>
                Next
            </button>

        </section>


        <div class="spacer -xxxlarge"></div>

    </form>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
