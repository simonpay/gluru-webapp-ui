{% set obj_stage_data = obj.sections[0].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[0] %}
{% include "stage__setup--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Log in to Gluru</h1>
    <p class="stage__text u-mb+">You can log in with Google+ or email.</p>

    <form>

        <div class="u-layout -w-400">
            
            <div class="row -form">
                <div class="lrg-12">
                    <input 
                        class="text-input -full-width" 
                        ng-model="" 
                        name="username" 
                        placeholder="Username" 
                        required/>
                </div>
            </div>

            <div class="row -form u-mb">
                <div class="lrg-12">
                    <input 
                        class="text-input -full-width" 
                        ng-model="" 
                        name="password" 
                        placeholder="Password" 
                        required/>
                </div>
            </div>

            <p class="u-mb-">
                <a href="#" class="btn -lozenge -positive js-btn-next">
                    <span class="btn__icon icon__arrow--white"></span><!--
                    --><span class="btn__text">Log in</span>
                </a>
            </p>

            <p class="u-mb-">
                <a href="login.html" class="btn -clear -padh0 -padh0">
                    <span class="btn__text -c-gray -fw-light">Forgot your password?</span> Reset it
                </a>
            </p>


            <hr>

            <h2 class="stage__subheading-text u-mb">Signed up with your Google account?</h2>

            <p class="u-mb+">
                <a href="#" class="btn -lozenge -white -col-grey -large js-sign-in js-modal-trigger" data-modal-content="setting-up-account">
                    <span class="btn__icon icon-lrg__googleplus"></span><!--
                    --><span class="btn__text -divider">Sign up with Google</span>
                </a>
            </p>

            <hr class="u-mb-">

            <p>
                <a href="login.html" class="btn -clear -padh0 -padh0">
                    <span class="btn__text -c-gray -fw-light">Don't have an account yet?</span> Create a Gluru account
                </a>
            </p>

        </div>

    </form>

                        
{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
