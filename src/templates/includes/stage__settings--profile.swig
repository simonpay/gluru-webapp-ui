{% set obj_stage_data = obj.sections[0].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[0] %}
{% include "stage__settings--start.swig" %}

    <section class="u-cf">
        
        <h1 class="stage__heading-text u-mb0">Account profile</h1>
        <p class="stage__text">View and manage your profile and account details.</p>

    </section>

    <hr>

    <section>
        
        <h1 class="stage__heading-text">Account email</h1>

    </section>

    <hr>

    <section>
        
        <h1 class="stage__heading-text">Total usage</h1>

        <div class="space-by-source">
            
            {% for obj_source in obj_setup_data.space_by_source %}

                <div class="doughnut-chart__container -{{ obj_source.source }}">
                    
                    <div class="doughnut-chart js-chart" data-percentage="{{ obj_source.percentage_available }}">
                        <svg class="doughnut-chart__svg" xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 116 116">
                            <g>
                                <circle class="doughnut-chart__ring" r="50" cy="50" cx="50"/>
                            </g>
                        </svg>
                        <svg class="doughnut-chart__svg" xmlns="http://www.w3.org/2000/svg" viewBox="-8 -8 116 116">
                            <g>
                                <circle class="doughnut-chart__ring -color js-chart-ring" r="50" cy="50" cx="50"/>
                            </g>
                        </svg>

                        <div class="doughnut-chart__text">{{ obj_source.percentage_available }}%</div>

                    </div>

                    <div class="doughnut-chart__bar"></div>
                    <div class="{{ obj_source.icon_class }} u-center-block"></div>
                </div>

            {% endfor %}

        </div>

    </section>



{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
