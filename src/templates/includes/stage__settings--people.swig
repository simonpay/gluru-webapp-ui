{% set obj_stage_data = obj.sections[2].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[2] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Manage people on your team</h1>
    <p class="stage__text u-mb++">You can manage, remove or invite more people to your team.</p>
                        
    <section>
        
        <h2 class="stage__subheading-text">Favourites</h2>

        <div class="gallery__wrap u-mb u-cf">
            
            {% for obj_source in obj_setup_data.favourites %}

                <div class="gallery__container -{{ obj_source.source }}">
                    
                    <div class="gallery__item">

                        <a href="#" class="btn -disc -full -light">
                        	<div class="icon-close -positive -add -vcenter -lrg"></div>
                        </a>

                        <div class="doughnut-chart__label lrg-label-text">{{ obj_source.percentage_available }}</div>

                    </div>

                </div>

            {% endfor %}

        </div>

    </section>



    <hr class="u-mb++">



{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
