{% set obj_stage_data = obj.sections[2].stage_data %}
{% include "stage-start.swig" %}
{% include "panel-header-stage.swig" %}

{% set obj_setup_data = obj.sections[2] %}
{% include "stage__settings--start.swig" %}

    <h1 class="stage__heading-text u-mb0">Manage people on your team</h1>
    <p class="stage__text u-mb++">You can manage, remove or invite more people to your team.</p>
                        
    <section>
        
        <h2 class="stage__subheading-text">Teams</h2>

        <div class="gallery__wrap u-mb u-cf">
            
            <div class="gallery__container -{{ obj_teams.teams }}">
                
                <div class="gallery__item">

                    <a href="#" class="btn -disc -full -light">
                    	<div class="icon-close -positive -add -vcenter -lrg"></div>
                        <div class="btn__text -c-dark -fw-light -size-normal -below">Create New Team</div>
                    </a>

                </div>

            </div>

            {% for obj_team in obj_setup_data.teams %}

                <div class="gallery__container">
                    
                    <div class="gallery__item">

                        <div class="disc-img">
                            <div class="disc-img__img-wrap -xxlrg -team -{{ obj_team.team_class }}"></div>
                            <div class="btn__text -c-dark -size-normal -below -lrg-disc" title="{{ obj_team.team_name }}">{{ obj_team.team_name }}</div>
                        </div>

                    </div>

                </div>

            {% endfor %}

        </div>



        <hr class="u-mb+">



        {% for obj_team in obj_setup_data.teams %}
    
            <div class="priority-box__wrap">

                <div class="priority-box -settings collapsable is-collapsed js-toggle-collapsable-content">

                    <div class="media -v-center">
                        <div class="media__img u-mr">

                            <div class="disc-img">
                                <div class="disc-img__img-wrap -med -team -{{ obj_team.team_class }}"></div>
                            </div>

                        </div>
                        <div class="media__body">

                            <div class="media -v-center">
                                <div class="media__img -right -meeting">

                                    <a href="#" class="btn -lozenge -white -small js-manage-team">Manage</a>

                                </div>
                                <div class="media__body">

                                    <div class="table__text--heading" title="{{ obj_team.team_name|striptags }}">{{ obj_team.team_name|safe }}</div>
                                    <div class="table__text--sub-heading" title="{{ obj_team.item_date_time|striptags }}">{{ obj_team.people.length }} members</div>

                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>


    
            <div class="collapsable-content -collapsed js-collapsable-content">

                <div class="table -daily-digest -categories">

                    {% for obj_person in obj_team.people %}

                        {% set obj_person_row = obj_person %}
                        {% include "table-row-people.swig" %}

                    {% endfor %}

                </div>

            </div>
            
        {% endfor %}

    </section>


{% include "stage__settings--end.swig" %}

{% include "stage-end.swig" %}
