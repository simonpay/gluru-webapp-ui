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
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__settings-upgrade">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Upgrade Account</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>

		</div>



		{# this wrapping div is just for the demo #}
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__change-username">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Change Username</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>

		</div>



		{# this wrapping div is just for the demo #}
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__change-password">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Change Password</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>

		</div>



		{# this wrapping div is just for the demo #}
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__settings-deactivate">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Deactivate Account</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>

			<div class="scrollable-content__wrap -modal -large">
				<div class="scrollable-content">

					<div class="modal-box__content">

				        <section class="form-section">

				            <div class="row">
				                <div class="med-11">

							        <h1 class="stage__heading-text u-mb0">Account Deactivation</h1>
							        <p class="stage__text u-mb++">If you no longer wish to keep your gluru account</p>

							        <h2 class="stage__subheading-text">Are you sure you want to delete your Gloo account?</h2>

							        <p class="stage__text">We'll be sad to see you go! Are you having issues with your account? If you think we can help fix the issue please try <a href="#"><strong>contacting the glooteam</strong></a> first.</p>

							        <p class="stage__text u-mb++">Are you sure you want to permanently delete your Gloo account? Once you do, your files will cease syncing with your connected sources and all your data will be deleted from Gloo.</p>

								</div>

				                <div class="med-5">

							        <h2 class="stage__subheading-text">Why are you leaving us?</h2>
									<p class="u-mb++">
									    <select class="js-reasons-for-leaving" style="width:100%;">
									        <option value="">Select one...</option>
									    </select>
									</p>
								</div>

				                <div class="med-11">

							        <h2 class="stage__subheading-text">Would you like to give us any additional feedback before you go? (Optional)</h2>

							        <p>
								        <textarea class="text-area -full-width" name="" id="" cols="30" rows="10" resizable="no"></textarea>
							        </p>
								</div>

				            </div>

				        </section>


				        <section class="form-section -submit js-section-submit">

				            <p>
				                <a href="#" class="btn -lozenge -positive -small">
				                    Delete account
				                </a>
				                <a href="#" class="btn -lozenge -white -small js-close-modal">
				                    Cancel
				                </a>
				            </p>

				        </section>

					</div>

				</div>
			</div>

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


			<div class="scrollable-content__wrap -modal -large">
				<div class="scrollable-content">

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


			<div class="scrollable-content__wrap -modal -large">
				<div class="scrollable-content">

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

				<div class="loader__wrap -large">
					<div class="loader__container -large -width-twenty -fill-parent">
					    {% include "loader.swig" %}
					</div>
				</div>
			    {# {% include "loader.swig" %} #}
				
			</div>

			
		</div>
		


		{# this wrapping div is just for the demo #}
		<div class="[ demo-only -modal-box__content-wrap ] js-demo-only__indexing-files">

			<header class="panel-header">
				<div class="modal-box__heading-wrap">
					<div class="modal__heading-text">Indexing Files</div>
				</div>
				<div class="icon-button -center-transform -right js-close-modal">
					<div class="icon-close"></div>
				</div>
			</header>

			<div class="modal-box__content">

			    <div class="progress-bar__wrap -full-width u-mb+">

					<div class="media u-mb------">
					    <div class="media__img">

							<div class="stage__text -dark">Source indexing completion</div>

					    </div>
					    <div class="media__body">

							<div class="stage__text -dark u-text-right"><strong class="u-black">1,212</strong> of <strong class="u-black">5,341 files</strong> - <strong class="u-green">95%</strong></div>

					    </div>
					</div>

				    <div class="progress-bar__container">
				        <div class="progress-bar"></div>
				    </div>
			    </div>

				<div class="row">
					<aside class="med-6">
						
						<div class="speech-bubble -setup">
							<div class="speech-bubble__text -heading">See you soon Tim!</div>
							<div class="speech-bubble__text">Ok you’re all setup, I’m busy indexing all your data.</div>
						</div>

						<div class="sprite__gluru-bot--med u-center-block"></div>

					</aside>
					<div class="med-6">

						<p><strong>All done.</strong></p>
						<p>Gluru is now indexing all your files. We will let you know when this is complete. You will receive an email once this is complete.</p>
						<p><strong>See you soon!</strong></p>
					
					</div><!-- // .info-panel__content -->
				</div>
				
			</div>

			
		</div>
		
	</div>

</div>