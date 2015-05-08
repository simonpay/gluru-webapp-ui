<nav class="stage-nav -account">
	<ul class="stage-nav__list">
		<li class="stage-nav__item -now">
			<div class="stage-nav__icon-wrap js-now" data-demo-only-is-timeline-page="{% if bln_timeline_page %}true{% else %}false{% endif %}">
				<div class="stage-nav__now-text-wrap">
					<div class="stage-nav__now-text">Now</div>
				</div>
				<div class="stage-nav__icon icon__now--white"></div>
				{# <div class="spinner-wrap is-hidden js-loader-wrap"> #}
				<div class="loader__container -absolute -pad-sml -width-five -white is-hidden js-loader-wrap">
					{% include "loader.swig" %}
				</div>
			</div>
		</li>
		<li class="stage-nav__item -notifications">
			<div class="stage-nav__icon-wrap">
				<div class="stage-nav__icon icon__notifications--white js-notifications"></div>
				<div class="inset-icon -notifications js-notifications">5</div>
			</div>
		</li>
		<li class="stage-nav__item -profile">
			<div class="stage-nav__icon-wrap">
				<div class="disc-img">
					<div class="disc-img__img-wrap">
						{# <img class="disc-img__img" src="img/tmp_avatar_1.png" alt=""> #}
						<div class="stage-nav__icon u-center-transform icon-sml__person--pink js-account-avatar"></div>
					</div>
				</div>
			</div>
		</li>
	</ul>
</nav>
