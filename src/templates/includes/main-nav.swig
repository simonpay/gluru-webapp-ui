<nav class="main-nav">
	<div class="main-nav__logo-wrap">
		<a href="#" 
			class="main-nav__logo step-zero js-gluru js-main-nav__link js-tt" 
			data-tt="Home"
			data-tt-pos="right"></a>
	</div>
	{% if !obj.hide_nav_items %}
	<ul class="main-nav__list">
		<li class="main-nav__item -divider">
			<a href="#" 
				class="main-nav__link -add js-add js-main-nav__link js-tt" 
				data-tt="Add Stuff Here"
				data-tt-pos="right">Add</a>
		</li>
		<li class="main-nav__item">
			<a href="#" 
				class="main-nav__link -moments -highlight js-main-nav__link js-tt" 
				data-tt="Moments"
				data-tt-pos="right">Moments</a>
		</li>
		<li class="main-nav__item">
			<a href="#" 
				class="main-nav__link -files -highlight js-main-nav__link js-tt" 
				data-tt="Files"
				data-tt-pos="right">Files</a>
		</li>
{# 
		<li class="main-nav__item">
			<a href="#" 
				class="main-nav__link -people -highlight js-main-nav__link js-tt" 
				data-tt="People"
				data-tt-pos="right">People</a>
		</li>
		<li class="main-nav__item">
			<a href="#" 
				class="main-nav__link -projects -highlight js-main-nav__link js-tt" 
				data-tt="Projects"
				data-tt-pos="right">Projects</a>
		</li>
		<li class="main-nav__item">
			<a href="#" 
				class="main-nav__link -auto-push -highlight js-main-nav__link js-tt" 
				data-tt="Auto-push"
				data-tt-pos="right">Auto-push</a>
		</li>
		
 #}		<li class="main-nav__item">
			<a href="#" 
				class="main-nav__link -settings -highlight js-main-nav__link js-tt" 
				data-tt="Settings"
				data-tt-pos="right">Settings</a>
		</li>
	</ul>
	{% endif %}

{# 	<div class="loader__container -white js-loader">
	    {% include "loader.swig" %}
	</div>
 #}

	<div class="loader__container -width-three -white loader__container--main-nav is-hidden js-status-loading-sources js-open-status-bar" title="Show status bar">
	    {% include "loader.swig" %}
		<div class="icon-sml__sources--white u-center-transform"></div>
	</div>

</nav>

