{% set obj_stage_data = obj.sections[4].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[4] %}
{% include "stage__setup--start.swig" %}
    
    <form>

        <h1 class="stage__heading-text">Create team</h1>

        <p class="stage__text">You can add team functionality to Gluru.</p>

        <section class="form-section -team-setup js-section-team-setup">

            <div class="row">
                <div class="med-11">

                    <p class="stage__text">Do you want to add a team to your Gluru account? If you just want to continue with a Single User account to try gluru don’t worry, you'll still be able to create a team in the future.</p>

                </div>
            </div>

            <p>
                <a href="#" class="btn -lozenge -small -white js-btn-add-team">CREATE TEAM</a>
            </p>

            <div class="med-11">
                <hr>
            </div>

        </section>

    

        <section class="form-section -team-name is-hidden js-section-team-name">

            <div class="row">

                <div class="med-6">

                    <h2 class="stage__heading-text">Team name</h2>

                    <p>
                        <input 
                            type="text" 
                            class="text-input -full-width" 
                            ng-model="" 
                            name="team-name" 
                            placeholder="Team Name" 
                            required/>
                    </p>
                </div>
            </div>

        </section>



        <section class="form-section -team-settings is-hidden js-section-team-settings">

            <h2 class="stage__heading-text">Team settings</h2>

            <div class="row">
                <div class="med-11">
                    <div class="media">
                        <div class="media__img -right">

                            <div class="jquery-ui__form js-radio-buttonset">
                                <input type="radio" class="js-invited-member-connect-source" id="rdo-invited-member-connect-source-no" name="invited-member-connect-source"><label for="rdo-invited-member-connect-source-no">No</label>
                                <input type="radio" class="js-invited-member-connect-source" id="rdo-invited-member-connect-source-yes" name="invited-member-connect-source"><label for="rdo-invited-member-connect-source-yes">Yes</label>
                            </div>


                            {# <input type="checkbox" id="ConnectSource" style="display:none;"><label class="js-prevent-fout" for="ConnectSource" style="display:none;">Toggle</label> #}

                        </div>
                        <div class="media__body">

                            {# <p class="stage__text">Do you want each invited member to connect a source to join? The benefit is more shared data for gluru to help organise your team.</p> #}
                            <p class="stage__text">Do you want each invited member to connect a source to join? The benefit is more shared data for gluru to help organise your team. {# If not, invite some team members to join below #}</p>

                        </div>
                    </div>
                </div>
            </div>

            <section class="form-section -team-settings-sources is-hidden js-section-team-settings-sources">

                <div class="row">
                    <div class="med-11">

                        <p>
                            <select 
                                class="js-team-settings-source__multi-select" 
                                multiple 
                                data-placeholder="Click to add sources..." 
                                style="width:100%">
                                    <option value="Gmail">Gmail</option>
                                    <option value="Drive">Drive</option>
                                    <option value="Calendar">Calendar</option>
                                    <option value="Dropbox">Dropbox</option>
                                    <option value="Evernote">Evernote</option>
                                    <option value="Box">Box</option>
                                    <option value="Exchange">Exchange</option>
                            </select>
                        </p>

                        {# <hr> #}

                    </div>
                </div>

            </section>

            <div class="med-11">
                <hr>
            </div>

        </section>



        <section class="form-section -team-access-settings is-hidden js-section-team-access-settings">

            <div class="row">
                <div class="med-12">

                    <h1 class="stage__heading-text">Team access settings</h1>

                    <p class="stage__text">Do you want each invited member to connect a source to join?</p>
                    
                </div>
            </div>

            <div class="row -grid-header">

                <div class="med-6">&nbsp;</div>

                <div class="med-2">
                    Source
                </div>

                <div class="med-3">
                    Access Settings
                </div>

                <div class="med-1"></div>

            </div>
            
            <div class="js-team-access-settings-row-container u-mb">

                {% include "form__row--team-access-settings.swig" %}

            </div>

            <div class="med-11">
                <hr>
            </div>

        </section>



        <section class="form-section -team-invite-people is-hidden js-section-team-invite-people">

            <div class="row">
                <div class="med-11">
                    <h1 class="stage__heading-text">Invite people</h1>
                </div>
            </div>
            
            <div class="row -grid-header">
                <div class="med-4">
                    Type email address
                </div>
                <div class="med-2">
                    Type
                </div>
                <div class="med-2">
                    Source
                </div>
                <div class="med-3">
                    Access Settings
                </div>
                <div class="med-1"></div>
            </div>
            
            <div class="js-invite-people-row-wrapper">
                <div class="invite-people-row-container js-invite-people-row-container-clone">
                    {% set display_value = "none" %}
                    {% include "form__row--invite-people.swig" %}
                </div>
            </div>

            <a href="#" class="btn -clear -padh0 js-add-new-email">
                <span class="btn__icon icon__add"></span><!--
                --><span class="btn__text">Invite more people</span>
            </a>

            <div class="med-11">
                <hr>
            </div>

        </section>



        <section class="form-section -submit js-section-submit">

            <p>
                <a href="moments-daily-digest-first-run.html" class="btn -lozenge -positive">
                    <span class="btn__text">Finish</span><!--
                    --><span class="btn__icon icon__arrow--white"></span>
                </a>
            </p>

        </section>



        <div class="u-spacer -xxlrg"></div>

    </form>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
