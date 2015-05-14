{% set index = settings_index__profile %}

{% set obj_stage_data = obj.sections[index].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[index] %}
{% include "stage__settings--start.swig" %}

    <section class="u-cf">
        
        <h1 class="stage__heading-text u-mb0">Account profile</h1>
        <p class="stage__text u-mb++">View and manage your profile and account details.</p>

        <div class="row">
            <div class="lrg-4 u-cf">

                <div class="media -settings">
                    <div class="media__img -right">

                        <p>
                            <a href="#" class="btn -lozenge -white -small u-ml-">Sign Out</a>
                        </p>

                    </div>
                    <div class="media__body">

                        <div class="media">
                            <div class="media__img">

                                <div class="disc-img">
                                    <div class="disc-img__img-wrap -profile">
                                        <div class="icon__person--white u-center-transform"></div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="media__body">

                                <div class="" title="">Alex Li</div>
                                <div class="options-list__text--secondary" title="{{ obj.email }}">alexli@tech.co</div>

                            </div>
                        </div>

                    </div>
                </div>

            </div>

            <div class="lrg-4 u-cf">

                <div class="media -settings">
                    <div class="media__img -right">

                        <p>
                            <a href="#" class="btn -lozenge -positive -small u-ml- js-modal-trigger js-upgrade" data-modal-content="settings-upgrade">Upgrade</a>
                        </p>

                    </div>
                    <div class="media__body">

                        <div class="">Account type:</div>
                        <div class="stage__text">Teams &amp; Enterprise</div>

                    </div>
                </div>

            </div>

            <div class="lrg-4 u-cf">

                <div class="media -settings">
                    <div class="media__img -right">

                        <p>
                            <a href="#" class="btn -lozenge -white -small u-ml- js-modal-trigger js-upgrade" data-modal-content="settings-deactivate" data-modal-size="large">Deactivate</a>
                        </p>

                    </div>
                    <div class="media__body">

                        <div class="">Deactivate my <br>gluru account</div>

                    </div>
                </div>

            </div>
        </div>

    </section>



{#     <hr class="u-mb++">
 #}


{#     <section>
        
        <h2 class="stage__subheading-text">Account email</h2>

        <div class="row">
            <div class="lrg-4 u-cf">

                <div class="media -settings">
                    <div class="media__img -right">

                        <p>
                            <a href="#" class="btn -lozenge -white -small u-ml-">Change</a>
                        </p>

                    </div>
                    <div class="media__body">

                        <div class="stage__text">alexli@smarttech.co</div>

                    </div>
                </div>

            </div>
        </div>

    </section>
 #}


    <hr class="u-mb++">



    <section>
        
        <h2 class="stage__subheading-text">Total usage - available space</h2>

        <div class="progress-bar__container u-mb">
            <div class="progress-bar" style="width:5%"></div>
            <div class="progress-bar__label lrg-label-text">95%</div>
        </div>

    </section>



    <hr class="u-mb++">



    <section>
        
        <h2 class="stage__subheading-text">Available space by source</h2>

        <div class="doughnut-chart__wrap js-doughnut-chart">
            
            {% for obj_source in obj_setup_data.space_by_source %}

                <div class="doughnut-chart__container -{{ obj_source.source }}"  title="{{ obj_source.name }} - {{ obj_source.percentage_available }}% available">
                    
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

                        <div class="doughnut-chart__label lrg-label-text">{{ obj_source.percentage_available }}%</div>

                    </div>

                    <div class="doughnut-chart__bar"></div>
                    <div class="{{ obj_source.icon_class }} u-center-block"></div>
                </div>

            {% endfor %}

        </div>

    </section>



{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
