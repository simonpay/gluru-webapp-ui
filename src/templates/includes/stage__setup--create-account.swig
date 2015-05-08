{% set obj_stage_data = obj.sections[0].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[0] %}
{% include "stage__setup--start.swig" %}

    <h1 class="stage__heading-text">Create a Gluru account</h1>
    <p class="stage__text u-mb+">You can create an account with Google+ or email.</p>

    <div class="u-layout -w-310">

        <p>
            <a href="#" class="btn -lozenge -white -col-grey -large -full js-sign-in js-modal-trigger" data-modal-content="setting-up-account">
                <span class="btn__icon icon-lrg__googleplus"></span><!--
                --><span class="btn__text -divider">Sign up with Google</span>
            </a>
        </p>
        
        <p><div class="or or-text">or</div></p>

        <p>
            <a href="#" class="btn -lozenge -white -col-grey -large -full js-sign-in js-modal-trigger" data-modal-content="setting-up-account">
                <span class="btn__icon icon-lrg__email"></span><!--
                --><span class="btn__text -divider">Sign up with email</span>
            </a>
        </p>
        
        <p>
            <a href="login.html" class="btn -clear -padh0 -full">
                <span class="btn__text -c-gray -fw-light">Already have an account?</span> Sign in
            </a>
        </p>
        
    </div>
                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
