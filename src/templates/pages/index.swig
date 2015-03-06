{% extends 'src/templates/layouts/base.swig' %}

{% block title %}{{meta.title}}{% endblock %}
{% block meta-description %}{{meta.description}}{% endblock %}

{% block head %}
	{% parent %}
{% endblock %}

{% block content %}

<div class="stage-container">

	<nav class="main-nav">
		<a href="#" class="main-nav__logo"></a>
		<ul class="main-nav__list">
			<li class="main-nav__item"><a href="#" class="main-nav__link avatar">Avatar</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link add">Add</a></li>
			<li class="main-nav__item divider"><a href="#" class="main-nav__link search">Search</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link files highlight">Files</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link moments highlight">Moments</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link people highlight">People</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link projects highlight">Projects</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link auto-push highlight">Auto-push</a></li>
			<li class="main-nav__item"><a href="#" class="main-nav__link settings highlight">Settings</a></li>
		</ul>
	</nav>

	<aside class="drawer">
		<h1 class="drawer__heading">Files</h1>

		<div class="drawer__list">
			<h2>Sources</h2>
			<ul class="drawer__list">
				<li class="drawer__item drawer__files">Everything</li>
				<li class="">Box</li>
				<li class="">Drive</li>
				<li class="">Dropbox</li>
				<li class="">Evernote</li>
			</ul>
		</div>

		<div class="tool-list">
			<h2>Favourites</h2>
			<ul>
				<li class="tool tool--files"></li>
			</ul>
		</div>

	</aside>

	<main class="stage">
		<header>
			<h1>Files</h1>
		</header>
		<div class="tmp-panel"></div>
		<div class="tmp-panel"></div>
		<div class="tmp-panel"></div>
	</main>

</div>

<div class="tmp-buttons">
	<button class="show">Show</button>
	<button class="hide">Hide</button>
</div>

{% endblock %}

{% block javascripts %}
	{% parent %}
{% endblock %}
