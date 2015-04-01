<div class="options-list {{ rObj.options_list_type_class }}">
	<div class="options-list__heading -collapsable js-toggle-expand-list">{{ rObj.heading }}</div>
	<div class="options-list__inner-wrap">

	{% if rObj.id !== "file_summary" %}
		<ul class="options-list__list">
	{% endif %}

		{% for obj in rObj.options %}

			{% if rObj.id !== "file_summary" %}
			<li class="options-list__item">
			{% endif %}


			{% if rObj.id === "sources" || rObj.id === "favourites" || rObj.id === "teams" || rObj.id === "relatedFiles" || rObj.id === "hierarchy" %}

				<a href="#" class="options-list__link">
					<div class="options-list-link__inner-wrap">

			{% endif %}


				{% if rObj.id === "sources" || rObj.id === "favourites" || rObj.id === "teams" || rObj.id === "relatedFiles" || rObj.id === "hierarchy" %}

					{% if rObj.id === "teams" %}

						{# teams #}
						<div class="options-list__icon -team {{ obj.className }}"></div>

					{% elseif rObj.id === "favourites" %}

						<div class="options-list__icon">
							<div class="disc-img">
								<div class="disc-img__img-wrap">
									<img class="disc-img__img" src="{{ obj.img_src }}" alt="">
								</div>
							</div>
						</div>

					{% else %}

						{# sources #}
						<div class="options-list__icon">
							<div class="{{obj.className}}"></div>
						</div>

					{% endif %}

						<div class="options-list__text-wrap">
							<div class="options-list__text-container" title="{{ obj.text }}">
								<div class="text -nowrap">{{ obj.text|safe }}</div>
							</div>

						{% if rObj.id === "favourites" %}

							<div class="options-list__text-container">
								<div class="text -nowrap -sml -c-mid">{{ obj.email|safe }}</div>
							</div>

						{% endif %}

						</div>

				{% elseif rObj.id === "email" %}

				{% elseif rObj.id === "people" %}

						<div class="media">
							<div class="media__img">
								<div class="disc-img">
									<div class="disc-img__img-wrap">
										<img class="disc-img__img" src="{{ obj.img_src }}" alt="">
									</div>
								</div>
							</div>
							<div class="media__body">
								<div class="text"><strong>Alex Li</strong> renamed this file with a very long description that will wrap</div>
								<div class="text -sml -c-mid">Today, 9:00am</div>
								<div class="media__nested-media-lvl2-wrap">
									<div class="media">
										<div class="media__img">
											<div class="icon-sml__gdrive"></div>
										</div>
										<div class="media__body">
											<span class="text">Meeting Notes</span>
										</div>
									</div>
									<div class="media">
										<div class="media__img">
											<div class="icon-sml__gdrive"></div>
										</div>
										<div class="media__body">
											<span class="text">Meeting Notes</span>
										</div>
									</div>
								</div>
							</div>
						</div>


				{% elseif rObj.id === "webPages" %}

						<div class="media">
							<div class="media__img">
								<div class="icon__evernote"></div>
							</div>
							<div class="media__body">
								<div class="text text__heading">Firefox Redesigns Its Search Interface</div>
								<div class="text -paragraph">Last week we learned that Mozilla had made a pact with Yahoo to switch Firefox’s default search engine to a yet-to-be launched new version of </div>
							</div>
						</div>

				{% elseif rObj.id === "file_summary" %}

					{# <div class="thumbnail"></div> #}
					<ul class="text-list">
						<li class="text-list__item">Brand strategy 2015 across all regions.</li>
						<li class="text-list__item">Key values, core style, new branding focus.</li>
						<li class="text-list__item">Competitor benchmarking tools.</li>
						<li class="text-list__item">Brand evolution roadmap.</li>
					</ul>

				{% endif %}


			{% if rObj.id === "sources" || rObj.id === "favourites" || rObj.id === "teams" || rObj.id === "relatedFiles" || rObj.id === "hierarchy" %}

					</div>
				</a>

			{% endif %}


		{% if rObj.id !== "file_summary" %}
			</li>
		{% endif %}

		{% endfor %}

	{% if rObj.id !== "file_summary" %}
		</ul><!-- //.options-list__list -->
	{% endif %}
	</div><!-- //.options-list__inner-wrap -->
</div><!-- //.options-list -->
