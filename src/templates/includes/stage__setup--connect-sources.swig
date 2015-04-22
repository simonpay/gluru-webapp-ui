{% set obj_stage_data = obj.sections[1].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[1] %}
{% include "stage__setup--start.swig" %}

    <p class="info-panel__heading-text">Select the sources you want to connect to gluru</p>


    <div class="sources__container">

        {% for obj_source in obj_setup_data.sources %}

        <div class="sources__row">
            <div class="sources__col--source">

                <div class="media -v-center">
                    <div class="media__img">

                        <div class="table__icon">
                            <div class="{{ obj_source.icon_class }}"></div>
                        </div>

                    </div>
                    <div class="media__body">

                        <div class="table__text--heading">{{ obj_source.name }}</div>
                        <div class="table__text--sub-heading">{{ obj_source.info }}</div>

                    </div>
                </div>
                
            </div>
            <div class="sources__col--status">
                <div class="media -v-center">
                    <div class="media__body">
                        <div class="table__text -light">indexing...</div>
                    </div>
                </div>
            </div>
            <div class="sources__col--action">
                <div class="media -v-center">
                    <div class="media__body">

                    {% if obj_source.action_type === "loader" %}
                        
                        {% include "loader.swig" %}

                    {% elseif obj_source.action_type === "tick" %}

                        <div class="icon-lrg__tick--green u-center-block"></div>

                    {% elseif obj_source.action_type === "button" %}

                        <a href="#" class="btn -lozenge -white -small u-center-block">CONNECT</a>

                    {% endif %}

                    </div>
                </div>
            </div>
        </div>

        {% endfor %}

    </div>

    <hr class="hr__line">

    <p>
        <a href="#" class="btn -lozenge -positive">
            <span class="btn__icon icon__arrow--white"></span><!--
            --><span class="btn__text">Next</span>
        </a>
    </p>


{% include "stage__setup--end.swig" %}

{% include "stage-end.swig" %}
