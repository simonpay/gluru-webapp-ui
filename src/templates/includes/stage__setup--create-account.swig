{% set obj_stage_data = obj.sections[0].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[0] %}
{% include "stage__setup--start.swig" %}

    <h1 class="info-panel__heading-text">Create a Gluru account</h1>
    <p class="stage__text">You can create an account with Google+ or email.</p>

    <div class="info-panel__content-block -narrow">

        <p>
            <button class="[ btn__lozenge -large -icon-left ] [ js-sign-in js-modal-trigger ]" data-modal-content="setting-up-account">
                <div class="btn__icon icon-lrg__googleplus"></div>
                Sign up with Google
            </button>
        </p>
        
        <p><div class="or or-text">or</div></p>

        <p>
            <button class="[ btn__lozenge -large -icon-left ] [ js-sign-in js-modal-trigger ]" data-modal-content="setting-up-account">
                <div class="btn__icon icon-lrg__email"></div>
                Sign up with email
            </button>
        </p>
        
        <p class="stage__text -cta">
            Already have an account? <a href="#" class="link -stage"><strong>Sign in</strong></a>
        </p>
        
    </div>
                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
