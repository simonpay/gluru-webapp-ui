{% set obj_stage_data = obj.sections[2].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[2] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Account Type</p>
    <p class="stage__text">You can either select Single User or Team.</p>

	
    <div class="info-panel__content-block -wide">

		<div class="layout__item -btn-lozenge-large">
	        <button class="btn__lozenge -large">
	            Single User
	        </button>
    	</div>

    	<div class="layout__item -or">
	        <div class="or -center or-text">or</div>
    	</div>
	        
    	<div class="layout__item -btn-lozenge-large">
	        <button class="btn__lozenge -large is-selected">
	            Team Account
	        </button>
    	</div>

    </div>

    <div class="info-panel__content-block -wide">

    	<p>To get started you can select a Single User account or Team. If you just want create a Single User account to try gluru don’t worry you will still be able to create a team in the future.</p>

    	<hr class="hr__line">

    </div>


    <p>
        <button class="btn__lozenge -green -icon-right">
            <div class="btn__icon icon__arrow--white"></div>
            Next
        </button>
    </p>


{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
