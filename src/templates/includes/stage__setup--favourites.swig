{% set obj_stage_data = obj.sections[3].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[3] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Add Favourites</p>

    <div class="info-panel__content-block -narrow">

        <form>
            <div class="row">
                <div class="large-8">
                    <input 
                        type="email" 
                        class="text-input -full-width" 
                        ng-model="signup.data.email" 
                        name="email" 
                        placeholder="Email" 
                        required/>
                </div>
                <div class="large-2">
                    {% include "loader.swig" %}
                </div>
            </div>
        </form>

    </div>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
