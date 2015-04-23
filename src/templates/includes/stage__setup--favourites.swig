{% set obj_stage_data = obj.sections[3].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[3] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Add Favourites</p>

    <div class="u-layout -w-400">

        <form>
            
            <div class="js-favourites-row-container">

                <div class="row -grid-header">
                    <div class="large-10">
                        Type email address
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

            <a href="#" class="btn -clear -pad0 js-add-new-favourite">
                <span class="btn__icon icon__add"></span><!--
                --><span class="btn__text">Add more favourites</span>
            </a>

            <div class="row">
                <div class="large-10">
                    <hr>
                </div>
            </div>

            <section class="form-section -submit js-section-submit">

                <a href="#" class="btn -lozenge -icon-rightsss">
                    <span class="btn__text">Skip</span><!--
                    --><span class="btn__icon icon__arrow--white"></span>
                </a><!--
                
                --><a href="#" class="btn -lozenge -positive -icon-rightss js-btn-next">
                    <span class="btn__icon icon__arrow--white"></span><!--
                    --><span class="btn__text">Next</span>
                </a>

            </section>

        </form>

    </div>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
