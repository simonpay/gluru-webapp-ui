{% set section = "moments" %}
{% include "stage-start.swig" %}

{% set obj = mydata.moments.stage_data %}
{% include "panel-header-stage.swig" %}

    {# todo: remove inline style attr - these are just for testing #}

    {# section moments #}
    <section class="section-wrap -moments js-section-moments">
        
        <header class="panel-header panel-header--timeline">
            <nav class="header-nav">
                <ul class="header-nav__list">
                    <li class="header-nav__item">
                        <a href="#" 
                        class="header-nav__link is-selected js-timeline-range" 
                        data-timeline-range="recent">

                            <div class="media -v-center">
                                <div class="media__img">
                                    <div class="header-nav__icon -recent"></div>
                                </div>
                                <div class="media__body">
                                    <div class="header-nav__text">Recent</div>
                                </div>
                            </div>

                        </a>
                    </li>
                    <li class="header-nav__item">
                        <a href="#" 
                        class="header-nav__link js-timeline-range" 
                        data-timeline-range="future">

                            <div class="media -v-center">
                                <div class="media__img">
                                    <div class="header-nav__icon -future"></div>
                                </div>
                                <div class="media__body">
                                    <div class="header-nav__text">Future</div>
                                </div>
                            </div>

                        </a>
                    </li>
                </ul>
            </nav>
        </header>


        {# single view #}
        {% set cols = 1 %}
        {% set cols_class = "-cols-1" %}
        {% set split_view_class = "" %}
        {% include "stage__moments--split-view-wrap-outer.swig" %}

        {# split-view - 2 cols #}
        {% set cols = 2 %}
        {% set cols_class = "-cols-2" %}
        {% set split_view_class = "-split-view" %}
        {% include "stage__moments--split-view-wrap-outer.swig" %}

        {# split-view - 3 cols #}
        {% set cols = 3 %}
        {% set cols_class = "-cols-3" %}
        {% set split_view_class = "-split-view" %}
        {% include "stage__moments--split-view-wrap-outer.swig" %}


    </section><!-- // .section-wrap.-moments -->

{% include "stage-end.swig" %}
