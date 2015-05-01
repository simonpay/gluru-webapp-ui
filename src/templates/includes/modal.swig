<div class="modal is-hidden js-modal">

	<div class="modal__screen"></div>

	<div class="modal__box js-modal-box">
		
		{# this wrapping div is just for the demo #}
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__default">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Modal Box</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>

		</div>

		{# this wrapping div is just for the demo #}
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__add-team-member">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Add Team Members</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>


			<div class="modal-box__content">

		        <section class="form-section -team-invite-people js-section-team-invite-people">

		            <div class="row">
		                <div class="med-11">
		                    <h1 class="stage__heading-text">Invite people</h1>
		                </div>
		            </div>
		            
		            <div class="row -grid-header">
		                <div class="med-4">
		                    Type email address
		                </div>
		                <div class="med-2">
		                    Type
		                </div>
		                <div class="med-2">
		                    Source
		                </div>
		                <div class="med-3">
		                    Access Settings
		                </div>
		                <div class="med-1"></div>
		            </div>
		            
		            <div class="js-invite-people-row-wrapper">
		                <div class="invite-people-row-container js-invite-people-row-container-clone">
		                    {% set display_value = "block" %}
		                    {% include "form__row--invite-people.swig" %}
		                </div>
		            </div>

		            <a href="#" class="btn -clear -padh0 js-add-new-email">
		                <span class="btn__icon icon__add"></span><!--
		                --><span class="btn__text">Invite more people</span>
		            </a>

		            <div class="med-11">
		                <hr>
		            </div>

		        </section>



		        <section class="form-section -submit js-section-submit">

		            <p>
		                <a href="#" class="btn -lozenge -positive">
		                    Create
		                </a>
		            </p>

		        </section>

			</div>

		</div>

		{# this wrapping div is just for the demo #}
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__create-team">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Create New Team</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>


			<div class="modal-box__content">

		        <section class="form-section -team-name js-section-team-name">

		            <div class="row">

		                <div class="med-6">

		                    <h2 class="stage__heading-text">Team name</h2>

		                    <p>
		                        <input 
		                            type="text" 
		                            class="text-input -full-width" 
		                            ng-model="" 
		                            name="team-name" 
		                            placeholder="Team Name" 
		                            required/>
		                    </p>
		                </div>
		            </div>

		        </section>

		        <section class="form-section -team-invite-people js-section-team-invite-people">

		            <div class="row">
		                <div class="med-11">
		                    <h1 class="stage__heading-text">Invite people</h1>
		                </div>
		            </div>
		            
		            <div class="row -grid-header">
		                <div class="med-4">
		                    Type email address
		                </div>
		                <div class="med-2">
		                    Type
		                </div>
		                <div class="med-2">
		                    Source
		                </div>
		                <div class="med-3">
		                    Access Settings
		                </div>
		                <div class="med-1"></div>
		            </div>
		            
		            <div class="js-invite-people-row-wrapper">
		                <div class="invite-people-row-container js-invite-people-row-container-clone">
		                    {% set display_value = "block" %}
		                    {% include "form__row--invite-people.swig" %}
		                </div>
		            </div>

		            <a href="#" class="btn -clear -padh0 js-add-new-email">
		                <span class="btn__icon icon__add"></span><!--
		                --><span class="btn__text">Invite more people</span>
		            </a>

		            <div class="med-11">
		                <hr>
		            </div>

		        </section>



		        <section class="form-section -submit js-section-submit">

		            <p>
		                <a href="#" class="btn -lozenge -positive">
		                    Create
		                </a>
		            </p>

		        </section>

			</div>

		</div>

		{# this wrapping div is just for the demo #}
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__setting-up-account">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Account Set-up</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>

			<div class="modal-box__content">

				<p>Please wait whilst your account is set up. This may take a while...</p>

			    {% include "loader.swig" %}
				
			</div>

			
		</div>
		
	</div>

</div>