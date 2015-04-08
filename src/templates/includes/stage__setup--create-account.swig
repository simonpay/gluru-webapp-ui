{% set obj_stage_data = obj.sections[0].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[0] %}
{% include "stage__setup--start.swig" %}

    <div class="info-panel__heading-text">Create a Gluru account</div>
    <div class="stage__text">You can create an account with Google+ or email.</div>

    <div class="btn__wrap">

        <button class="btn__lozenge">
            <div class="btn__icon icon-lrg__googleplus">
                {# <div class=""></div> #}
            </div>
            <div class="btn__text-pos btn__text">Sign up with Google</div>
        </button>

        <div class="or or-text">or</div>

        <button class="btn__lozenge">
            <div class="btn__icon icon-lrg__email">
                {# <div class=""></div> #}
            </div>
            <div class="btn__text-pos btn__text">Sign up with email</div>
        </button>
        
        <div class="stage__text-wrap">
            <p class="stage__text -cta">Already have an account? <a href="#" class="link -stage"><strong>Sign in</strong></a></p>
        </div>
        
    </div>
                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
