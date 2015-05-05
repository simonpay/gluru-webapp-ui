{% set obj_stage_data = obj.sections[2].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[2] %}
{% include "stage__setup--start.swig" %}

    <form>

        <section class="form-section -autopush-sources js-autopush-sources">

            <div class="row">
                <div class="lrg-11">

        			<h2 class="stage__heading-text">Autopush source</h2>

					<p class="stage__text">If you would like gluru to help you organise your email attachments you can <strong>click below to add sources</strong>. You can skip this step and set up autopush later if you like.</p>

                    <p>
                        <select 
                            class="js-autopush-source__multi-select prevent-fout" 
                            multiple 
                            data-placeholder="Click to add sources..." 
                            style="width:100%">
                                <option value="Gmail">Gmail</option>
                                <option value="Exchange">Exchange</option>
                        </select>
                    </p>

		            <hr>

                </div>
            </div>

        </section>



        <section class="form-section -autopush-destination is-hidden js-section-autopush-destination">

            <div class="row">
                <div class="lrg-11">

	        		<h2 class="stage__heading-text">Autopush destination source</h2>

					<p class="stage__text">Now select a destination source for gluru to store your attachments. Gluru will keep them safe in a folder called <strong>gluru attachments</strong>.</p>

                    <p>
                        <select 
                            class="js-autopush-destination__multi-select prevent-fout" 
                            multiple="multiple" 
                            data-placeholder="Click to add destinations..." 
                            style="width:100%">
                                <option value="Drive">Drive</option>
                                <option value="Dropbox">Dropbox</option>
                                <option value="Evernote">Evernote</option>
                                <option value="Box">Box</option>
                        </select>
                    </p>

    	            <hr>

                </div>
            </div>

        </section>



        <section class="form-section -autopush-notifications is-hidden js-section-autopush-notifications">

            <div class="row">
                <div class="lrg-11">

                    <div class="media">
                        <div class="media__img -right -m+++">
                        
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

					        <h2 class="stage__heading-text">Autopush notifications</h2>

							<p class="stage__text">Would you like to receive storage limit notifications for your destination source?</p>

                        </div>
                    </div>

                    <hr>

                </div>
            </div>

        </section>



        <section class="form-section -submit js-section-submit">

            <a href="#" class="btn -lozenge">
                <span class="btn__icon icon__arrow--white"></span><!--
                --><span class="btn__text">Skip</span>
            </a>
			
            <a href="#" class="btn -lozenge -positive is-hidden js-btn-next">
                <span class="btn__icon icon__arrow--white"></span><!--
                --><span class="btn__text">Next</span>
            </a>

        </section>



        <div class="u-spacer -xxlrg"></div>

    </form>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
