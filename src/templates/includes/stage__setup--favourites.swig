{% set obj_stage_data = obj.sections[3].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[3] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Add Favourites</p>

    <div class="info-panel__content-block">

        <form>

            
            <div class="js-favourites-row-container">

                <div class="row -grid-header">
                    <div class="large-10">
                        <span class="grid-header__text">Type email address</span>
                    </div>
                </div>
                
                <div class="row -form js-favourite-row">
                    <div class="large-10">
                        <input 
                            type="email" 
                            class="text-input -full-width" 
                            ng-model="signup.data.email" 
                            name="email" 
                            placeholder="Email" 
                            required/>
                    </div>
                    <div class="large-2">
                        {# {% include "loader.swig" %} #}
                    </div>
                </div>

            </div>

            <a href="#" class="link link--add js-add-new-favourite">
                <div class="link__icon icon__add"></div>
                Add more favourites
            </a>

            <hr class="hr__line">

            <p>
                <button class="btn__lozenge -green -icon-right">
                    <div class="btn__icon icon__arrow--white"></div>
                    Next
                </button>
            </p>

        </form>

    </div>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
