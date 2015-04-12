<div class="panel-header -daily-digest">

        <div class="media -v-center">
            <div class="media__img">

                <div class="disc-img -event">
                    <div class="disc-img__img-wrap">
                        <div class="u-center-transform icon__coffee--blue"></div>
                    </div>
                </div>

            </div>
            <div class="media__body">

                <div class="panel-header__heading-text">Daily Digest</div>
                <div class="panel-header__subheading-text"><strong>Hi Tim!</strong> Here are files Gluru thinks you'll need today and the people you'll most likely work with. </div>

            </div>
        </div>

</div>

<div class="daily-digest">

    <div class="daily-digest__section-heading">People</div>

    {% for obj_person in obj.daily_digest.people %}
    
        <div class="priority-box__wrap">
            <div class="priority-box -daily-digest -collapsable js-toggle-daily-digest-table">

                <div class="media -v-center">
                    <div class="media__img">

                        <div class="disc-img -event">
                            <div class="disc-img__img-wrap">
                                <img class="disc-img__img" src="{{ obj_person.person_avatar_src }}" alt="">
                            </div>

                            {% if obj_person.source_type !== "" %}
                            <div class="inset-icon -event-source">
                                <div class="u-center-transform {{ obj_person.source_type }}"></div>
                            </div>
                            {% endif %}
                        </div>

                    </div>
                    <div class="media__body">

                        <div class="table__text--heading" title="{{ obj_person.title|striptags }}">{{ obj_person.person_name|safe }}</div>
                        <div class="table__text--sub-heading" title="{{ obj_person.description|striptags }}">{{ obj_person.person_email|safe }}</div>

                    </div>
                </div>

            </div>
        </div>

{#         <div class="event-group-heading">
            <div class="event-group-heading__text-wrap">
                <div class="event-group-heading__text">{{ obj_person.person_name }}</div>
            </div>
        </div>
 #}
        <div class="js-table-wrap">
            <div class="table -daily-digest">

                {% for obj_file in obj_person.files %}

                    {% set obj_file_row = obj_file %}
                    {% include "table-row-file.swig" %}

                {% endfor %}

            </div>
        </div>
        
    {% endfor %}

</div><!-- // .daily-digest -->
