<div class="actions-wrap is-hidden js-actions-wrap">

{% if moments_header %}

	<div class="event event--actions-header -now js-event--actions-header">

		<div class="avatar -event">
			<div class="avatar__img-wrap">
				<img class="avatar__img" src="img/tmp_avatar_1.png" alt="">
			</div>
			<div class="avatar__source-type">
				<div class="-icon icon-gdrive-sml"></div>
			</div>
		</div>

		<div class="event__text-wrap">
			<div class="event__title"><strong>Alex Li</strong> renamed this file</div>
			<div class="event__description">Monday 10th meeting notes.docx</div>
		</div>

		<div class="close-button-wrap__header-panel">
			<div class="icon-button -center-transform -right -reverse js-close-actions">
				<div class="icon-close"></div>
			</div>

		</div>

	</div>


{% else %}

	<header class="panel-header panel-header--actions">
		<div class="actions__heading">Footprint</div>
		<div class="icon-button -center-transform -right js-close-actions">
			<div class="icon-close"></div>
		</div>
	</header>

{% endif %}

	<aside class="actions">
