{% set obj_stage_data = obj.sections[4].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[4] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Create Team</p>
    <p class="stage__text">You can add team functionality to Gluru.</p>



    <form>

        <section class="form-section -team-setup js-team-setup">

            <div class="row">
                <div class="large-11">
                    <div class="media">
                        <div class="media__img -right -lrg-margin">
                        
                            <div class="check-box__slider prevent-fout">
                                <input 
                                    type="checkbox" 
                                    class="checkbox_slider" 
                                    id="addTeam">
                                <label 
                                    for="addTeam">Toggle</label>
                            </div>

                        </div>
                        <div class="media__body">

                            <p class="stage__text">Do you want to add a team to your Gluru account? If you just want to continue with a Single User account to try gluru don’t worry, you'll still be able to create a team in the future.</p>

                        </div>
                    </div>
                </div>
            </div>

            <div class="large-11">
                <hr class="hr__line">
            </div>

        </section>

    
        <section class="form-section -team-name is-hidden js-team-name">

            <div class="row">

                <p class="info-panel__heading-text">Team Name</p>

                <div class="large-6">
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


        <section class="form-section -team-settings is-hidden js-team-settings">

            <p class="info-panel__heading-text">Team Settings</p>

            <div class="row">
                <div class="large-11">
                    <div class="media">
                        <div class="media__img -right -lrg-margin">

                            <div id="radio">
                                <input type="radio" class="js-invitedMemberConnectSource" id="invitedMemberConnectSourceNo" name="invitedMemberConnectSource"><label for="invitedMemberConnectSourceNo">No</label>
                                <input type="radio" class="js-invitedMemberConnectSource" id="invitedMemberConnectSourceYes" name="invitedMemberConnectSource"><label for="invitedMemberConnectSourceYes">Yes</label>
                            </div>


                            {# <input type="checkbox" id="ConnectSource" style="display:none;"><label class="js-prevent-fout" for="ConnectSource" style="display:none;">Toggle</label> #}

                        </div>
                        <div class="media__body">

                            {# <p class="stage__text">Do you want each invited member to connect a source to join? The benefit is more shared data for gluru to help organise your team.</p> #}
                            <p class="stage__text">Do you want each invited member to connect a source to join? The benefit is more shared data for gluru to help organise your team. If not, invite some team members to join below</p>

                        </div>
                    </div>
                </div>
            </div>

            <section class="form-section -team-settings-sources is-hidden js-team-settings-sources">

                <div class="row">
                    <div class="large-11">

                        <p>
                            <select 
                                class="js-example-basic-multiple" 
                                multiple="multiple" 
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

                        {# <hr class="hr__line"> #}

                    </div>
                </div>

            </section>

            <div class="large-11">
                <hr class="hr__line">
            </div>

        </section>




        <section class="form-section -team-access-settings is-hidden js-team-access-settings">

            <div class="row">
                <div class="large-12">
                    <p class="info-panel__heading-text">Team Access Settings</p>

                    <p class="stage__text">Do you want each invited member to connect a source to join?</p>
                    
                </div>
            </div>

            <div class="row -grid-header">
                <div class="large-6">&nbsp;</div>
                <div class="large-2">
                    <span class="grid-header__text">Source</span>
                </div>
                <div class="large-3">
                    <span class="grid-header__text">Access Settings</span>
                </div>
                <div class="large-1"></div>
            </div>
            
            {% set i = 1 %}
            {% include "form__row--team-access-settings.swig" %}
{#             {% set i = 2 %}
            {% include "form__row--team-access-settings.swig" %}
 #}
            <div class="large-11">
                <hr class="hr__line">
            </div>

        </section>


        <section class="form-section -team-invite-people is-hidden js-team-invite-people">

            <div class="row">
                <div class="large-12">
                    <p class="info-panel__heading-text">Invite People</p>
                </div>
            </div>
            
            <div class="row -grid-header">
                <div class="large-4">
                    <span class="grid-header__text">Type email address</span>
                </div>
                <div class="large-2">
                    Type
                </div>
                <div class="large-2">
                    Source
                </div>
                <div class="large-3">
                    Access Settings
                </div>
                <div class="large-1"></div>
            </div>
            
            {% include "form__row--invite-people.swig" %}
{#             {% set bln_hide_field = 1 %}
            {% include "form__row--invite-people.swig" %}
            {% include "form__row--invite-people.swig" %}
            {% set bln_hide_field = 0 %}
            {% include "form__row--invite-people.swig" %}
            {% set bln_hide_field = 1 %}
            {% include "form__row--invite-people.swig" %}
 #}
            <div class="large-11">
                <hr class="hr__line">
            </div>

        </section>
            
{#         <hr class="hr__line">
 #}
        <p>
            <button class="btn__lozenge -green -icon-right">
                <div class="btn__icon icon__arrow--white"></div>
                Next
            </button>
        </p>

    </form>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
