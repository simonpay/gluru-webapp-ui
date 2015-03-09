{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

<div class="main-container">

	<nav class="main-nav">
		<a href="#" class="main-nav__logo"></a>
		<ul class="main-nav__list">
			<li class="main-nav__item -primary"><a href="#" class="main-nav__link avatar">Avatar</a></li>
			<li class="main-nav__item -primary"><a href="#" class="main-nav__link add">Add</a></li>
			<li class="main-nav__item -primary -divider"><a href="#" class="main-nav__link search">Search</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link files highlight">Files</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link moments highlight">Moments</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link people highlight">People</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link projects highlight">Projects</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link auto-push highlight">Auto-push</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link settings highlight">Settings</a></li>
		</ul>
	</nav>

	<div class="drawer__wrap is-visible">
		<aside class="drawer">
			<header class="panel-header">
				<div class="drawer__heading">Files</div>
			</header>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Sources</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--everything"></span>
							<span class="drawer__text">Everything</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--box"></span>
							<span class="drawer__text">Box</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--drive"></span>
							<span class="drawer__text">Drive</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--dropbox"></span>
							<span class="drawer__text">Dropbox</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--evernote"></span>
							<span class="drawer__text">Evernote</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Favourites</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--tmp-fav-avatar-1"></span>
							<span class="drawer__text">Alex Li</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--tmp-fav-avatar-2"></span>
							<span class="drawer__text">Jason Smith</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--tmp-fav-avatar-3"></span>
							<span class="drawer__text">Stephanie Clarke</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Teams</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon -team -sales"></span>
							<span class="drawer__text">Sales Team</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon -team -marketing"></span>
							<span class="drawer__text">Marketing Team</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon -team -development"></span>
							<span class="drawer__text">Development Team</span>
						</a>
					</li>
				</ul>
			</div>

{# 			<div class="drawer__options">
				<div class="drawer__sub-heading">Teams</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Sales Team</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Marketing Team</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Development Team</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Teams</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Sales Team</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Marketing Team</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Development Team</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Teams</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Sales Team</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Marketing Team</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__text">Development Team</span>
						</a>
					</li>
				</ul>
			</div>
 #}
		</aside>

	</div>

	<div class="actions__wrap is-visible">
		<aside class="actions">
			<header class="panel-header">
				<div class="actions__heading">Footprint</div>
			</header>

				<div class="drawer__options">
					<div class="drawer__sub-heading">Sources</div>
					<ul class="drawer__list">
						<li class="drawer__item">
							<a href="#" class="drawer__link ">
								<span class="drawer__icon drawer__icon--everything"></span>
								<span class="drawer__text">Everything</span>
							</a>
						</li>
						<li class="drawer__item">
							<a href="#" class="drawer__link">
								<span class="drawer__icon drawer__icon--box"></span>
								<span class="drawer__text">Box</span>
							</a>
						</li>
						<li class="drawer__item">
							<a href="#" class="drawer__link">
								<span class="drawer__icon drawer__icon--drive"></span>
								<span class="drawer__text">Drive</span>
							</a>
						</li>
						<li class="drawer__item">
							<a href="#" class="drawer__link">
								<span class="drawer__icon drawer__icon--dropbox"></span>
								<span class="drawer__text">Dropbox</span>
							</a>
						</li>
						<li class="drawer__item">
							<a href="#" class="drawer__link">
								<span class="drawer__icon drawer__icon--evernote"></span>
								<span class="drawer__text">Evernote</span>
							</a>
						</li>
					</ul>
				</div>


				<div class="drawer__options">
					<div class="drawer__sub-heading">Sources</div>
					<ul class="drawer__list">
						<li class="drawer__item">
							<a href="#" class="drawer__link ">
								<span class="drawer__icon drawer__icon--everything"></span>
								<span class="drawer__text">Everything</span>
							</a>
						</li>
						<li class="drawer__item">
							<a href="#" class="drawer__link">
								<span class="drawer__icon drawer__icon--box"></span>
								<span class="drawer__text">Box</span>
							</a>
						</li>
						<li class="drawer__item">
							<a href="#" class="drawer__link">
								<span class="drawer__icon drawer__icon--drive"></span>
								<span class="drawer__text">Drive</span>
							</a>
						</li>
						<li class="drawer__item">
							<a href="#" class="drawer__link">
								<span class="drawer__icon drawer__icon--dropbox"></span>
								<span class="drawer__text">Dropbox</span>
							</a>
						</li>
						<li class="drawer__item">
							<a href="#" class="drawer__link">
								<span class="drawer__icon drawer__icon--evernote"></span>
								<span class="drawer__text">Evernote</span>
							</a>
						</li>
					</ul>
				</div>

		</aside>
	</div>

	<div class="stage__wrap">
		<main class="stage">
			<header class="panel-header panel-header--stage">
				<div class="stage__heading-wrap">
					<div class="stage__heading">Files</div>
					<div class="stage__sub-heading">2,1145 files</div>
				</div>
			</header>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Sources</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link ">
							<span class="drawer__icon drawer__icon--everything"></span>
							<span class="drawer__text">Everything</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--box"></span>
							<span class="drawer__text">Box</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--drive"></span>
							<span class="drawer__text">Drive</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--dropbox"></span>
							<span class="drawer__text">Dropbox</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--evernote"></span>
							<span class="drawer__text">Evernote</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Sources</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link ">
							<span class="drawer__icon drawer__icon--everything"></span>
							<span class="drawer__text">Everything</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--box"></span>
							<span class="drawer__text">Box</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--drive"></span>
							<span class="drawer__text">Drive</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--dropbox"></span>
							<span class="drawer__text">Dropbox</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--evernote"></span>
							<span class="drawer__text">Evernote</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Sources</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link ">
							<span class="drawer__icon drawer__icon--everything"></span>
							<span class="drawer__text">Everything</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--box"></span>
							<span class="drawer__text">Box</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--drive"></span>
							<span class="drawer__text">Drive</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--dropbox"></span>
							<span class="drawer__text">Dropbox</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--evernote"></span>
							<span class="drawer__text">Evernote</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="drawer__options">
				<div class="drawer__sub-heading">Sources</div>
				<ul class="drawer__list">
					<li class="drawer__item">
						<a href="#" class="drawer__link ">
							<span class="drawer__icon drawer__icon--everything"></span>
							<span class="drawer__text">Everything</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--box"></span>
							<span class="drawer__text">Box</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--drive"></span>
							<span class="drawer__text">Drive</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--dropbox"></span>
							<span class="drawer__text">Dropbox</span>
						</a>
					</li>
					<li class="drawer__item">
						<a href="#" class="drawer__link">
							<span class="drawer__icon drawer__icon--evernote"></span>
							<span class="drawer__text">Evernote</span>
						</a>
					</li>
				</ul>
			</div>

	{# 		<div class="tmp-panel"></div>
			<div class="tmp-panel"></div>
			<div class="tmp-panel"></div>
	 #}	</main>
	</div>

</div>

<div class="tmp-buttons tmp-buttons--drawer">
	<button class="toggle">Toggle Drawer</button>
</div>
<div class="tmp-buttons tmp-buttons--actions">
	<button class="toggle">Toggle Actions</button>
</div>


{% endblock %}

{% block javascripts %}
	{% parent %}
{% endblock %}
