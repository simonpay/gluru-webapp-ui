
    {# actions #}
    {% include "actions-start.swig" %}
    
        <div class="js-demo-only__actions-content-wrap -now-calendar" style="display: none">
            
            <div class="actions__summary">

                <p>We think you may need these files for <a href="#" class="text-link"><strong>design meeting</strong></a>.</p>

                <p class="u-mb0">Attendees:</p>

                <ul>
                    {% for obj_attendee in mydata.actions.attendees %}
                        <li>
                            <a href="#" class="text text-link" title="{{ obj_attendee.email }}">{{ obj_attendee.email }}</a>
                        </li>
                    {% endfor %}
                </ul>

                <p class="u-mb0">Location:</p>

                <p>
                    <strong class="-dark">8 Warner Yard <a href="" class="text-link">map</a></strong>
                </p>
            </div>

            <div class="options-list__wrap">

                {% include "options-list__daily-digest__meeting--files.swig" %}

            </div>

        </div>


        <div class="js-demo-only__actions-content-wrap -now-non-calendar" style="display: none">

            <div class="actions__summary">

                <p class="u-mb0">It looks like you're currently working with:</p>

                <ul>
                    {% for obj_attendee in mydata.actions.attendees %}
                        <li>
                            <a href="#" class="text text-link" title="{{ obj_attendee.email }}">{{ obj_attendee.email }}</a>
                        </li>
                    {% endfor %}
                </ul>

                <p>The most likely files you will need are:</p>

            </div>

            <div class="options-list__wrap">

                {% include "options-list__daily-digest__meeting--files.swig" %}
                
                {% for obj_section in obj.daily_digest.sections %}

                    {% if obj_section.section_id === "people" %}

                        <div class="options-list {{ rObj.options_list_type_class }}">
                            <div class="options-list__heading -collapsable js-toggle-expand-list">{{ obj_section.section_name }}</div>

                            <div class="options-list__inner-wrap">

                                <ul class="options-list__list">

                                    {% for obj_person in obj_section.items %}

                                        <li class="options-list__item">
                                            <a href="#" class="options-list__link -people">

                                                <div class="media -v-center">
                                                    <div class="media__img">

                                                        <div class="disc-img">
                                                            <div class="disc-img__img-wrap">
                                                                <img class="disc-img__img" src="{{ obj_person.item_avatar_src }}" alt="">
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="media__body">

                                                        <div class="options-list__text" title="{{ obj_person.item_name }}">{{ obj_person.item_name }}</div>
                                                        <div class="options-list__text--secondary" title="{{ obj_person.item_email }}">{{ obj_person.item_email }}</div>

                                                    </div>
                                                </div>

                                            </a>
                                        </li>

                                    {% endfor %}

                                </ul>

                            </div><!-- //.options-list__inner-wrap -->
                        </div><!-- //.options-list -->

                    {% endif %}

                {% endfor %}

            </div>

        </div>


        <div class="js-demo-only__actions-content-wrap -footprint" style="display: none">
            
            {# hierarchy #}
            {% set rObj = mydata.actions.hierarchy %}
            {% include "options-list.swig" %}

            {# summary #}
            {% set rObj = mydata.actions.file_summary %}
            {% include "options-list.swig" %}

            {# related files #}
            {% set rObj = mydata.actions.related_files %}
            {% include "options-list.swig" %}

            {# email #}
            {# {% set rObj = mydata.actions.email %} #}
            {# {% include "options-list.swig" %} #}

            {# people #}
            {% set rObj = mydata.actions.people %}
            {% include "options-list.swig" %}

            {# web pages #}
            {% set rObj = mydata.actions.web_pages %}
            {% include "options-list.swig" %}

        </div>


    {%> "actions-end" %}

