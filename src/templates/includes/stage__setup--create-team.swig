{% set obj_stage_data = obj.sections[5].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[5] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Team Name</p>

    <form>
    
        <section class="section">

            <div class="row">
                <div class="large-6">
                    <input 
                        type="text" 
                        ng-model="" 
                        name="team-name" 
                        placeholder="Team Name" 
                        required/>
                </div>
            </div>

        </section>

        <p class="info-panel__heading-text">Team Settings</p>

        <div class="row">
            <div class="large-11">
                <div class="media">
                    <div class="media__img -right">

                        <input type="checkbox" id="inviteTeamConnectSource" style="display:none;"><label class="js-prevent-fout" for="inviteTeamConnectSource" style="display:none;">Toggle</label>

                    </div>
                    <div class="media__body">

                        <p class="stage__text">Do you want each invited member to connect a source to join? The benefit is more shared data for gluru to help organise your team. <strong>Click below to add Sources</strong>.</p>

                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="large-11">

                <p>
                    <select class="js-example-basic-multiple" multiple="multiple" style="width:100%;display:none;">
                        <option value="Gmail">Gmail</option>
                        <option value="Drive">Drive</option>
                        <option value="Calendar">Calendar</option>
                        <option value="Dropbox">Dropbox</option>
                        <option value="Evernote">Evernote</option>
                        <option value="Box">Box</option>
                        <option value="Exchange">Exchange</option>
                    </select>
                </p>

                <hr class="hr__line">

            </div>
        </div>


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

        {% include "form__row--team-access-settings.swig" %}
        {% include "form__row--team-access-settings.swig" %}

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
        {% set bln_hide_field = 1 %}
        {% include "form__row--invite-people.swig" %}
        {% include "form__row--invite-people.swig" %}
        {% set bln_hide_field = 0 %}
        {% include "form__row--invite-people.swig" %}
        {% set bln_hide_field = 1 %}
        {% include "form__row--invite-people.swig" %}
        

    </form>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
