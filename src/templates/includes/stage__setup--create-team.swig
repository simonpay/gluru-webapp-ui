{% set obj_stage_data = obj.sections[4].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[4] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Team Name</p>

    <form>
        <div class="row">
            <div class="large-12">
                <input 
                    type="text" 
                    ng-model="" 
                    name="team-name" 
                    placeholder="Team Name" 
                    required/>
            </div>
        </div>

        <p class="info-panel__heading-text">Team Settings</p>

        <div class="row">
            <div class="large-10">
                <p class="stage__text">Do you want each invited member to connect a source to join? The benefit is more shared data for gluru to help organise your team. <strong>Click below to add Sources</strong>.</p>
            </div>
            <div class="large-2">
                <input type="checkbox">
            </div>
        </div>

        <div class="row">
            <div class="large-12">

                <select class="js-example-basic-multiple" multiple="multiple" style="width:100%;">
                    <option value="AK">Alaska</option>
                    <option value="HI">Hawaii</option>
                    <option value="CA">California</option>
                    <option value="NV">Nevada</option>
                    <option value="OR">Oregon</option>
                    <option value="WA">Washington</option>
                    <option value="AZ">Arizona</option>
                    <option value="CO">Colorado</option>
                    <option value="ID">Idaho</option>
                    <option value="MT">Montana</option>
                    <option value="NE">Nebraska</option>
                    <option value="NM">New Mexico</option>
                    <option value="ND">North Dakota</option>
                    <option value="UT">Utah</option>
                    <option value="WY">Wyoming</option>
                </select>

{#                 <input 
                    type="text" 
                    class="-full-width" 
                    ng-model="" 
                    name="" 
                    placeholder="" 
                    required/> #}
            </div>
        </div>

        <hr class="hr__line">

        <p class="info-panel__heading-text">Team Access Settings</p>

        <p>Do you want each invited member to connect a source to join?</p>


        <div class="row">
            
            <div class="large-5">
                
                <div class="media">
                    <div class="media__img">

                        <input type="checkbox">

                    </div>
                    <div class="media__body">

                        <p class="stage__text">Apply these settings for the whole team?</p>

                    </div>
                </div>

            </div>

        </div>

        <p class="info-panel__heading-text">Invite People</p>
        
        <div class="row">
            <div class="large-3">
                Type email address
            </div>
            <div class="large-2">
                Type
            </div>
            <div class="large-3">
                Source
            </div>
            <div class="large-3">
                Access Settings
            </div>
            <div class="large-1"></div>
        </div>
        
        <div class="row">
            <div class="large-3">
                <input 
                    type="text" 
                    class="-full-width" 
                    ng-model="" 
                    name="" 
                    placeholder="" 
                    required/>
            </div>
            <div class="large-2">
                <input 
                    type="text" 
                    class="-full-width" 
                    ng-model="" 
                    name="" 
                    placeholder="" 
                    required/>
            </div>
            <div class="large-3">
                <input 
                    type="text" 
                    class="-full-width" 
                    ng-model="" 
                    name="" 
                    placeholder="" 
                    required/>
            </div>
            <div class="large-3">
                <input 
                    type="text" 
                    class="-full-width" 
                    ng-model="" 
                    name="" 
                    placeholder="" 
                    required/>
            </div>
            <div class="large-1">
                {% include "loader.swig" %}
            </div>
        </div>
        

    </form>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
