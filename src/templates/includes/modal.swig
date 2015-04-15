<div class="modal is-hidden js-modal">

	<div class="modal__screen"></div>

	<div class="modal__box">
		
		{# this wrapping div is just for the prototype #}
		<div class="modal-box__content-wrap js-setting-up-account">

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