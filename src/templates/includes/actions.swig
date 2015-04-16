
    {# actions #}
    {% include "actions-start.swig" %}
    
        <div class="js-demo-only__actions-content-wrap -now-calendar" style="display: none">
            
            <p class="text -light">We think you may need these files for <a href="#" class="link text-link"><strong>design meeting</strong></a>.</p>

            <div class="row">
                <div class="large-3">
                    <p class="text -light">Attendees:</p>
                </div>
                <div class="large-9">
                    <p class="text -dark"><strong>Jason Smith, Amy Tan, Han Solo, Tony Stark</strong></p>
                </div>
            </div>
            <div class="row">
                <div class="large-3">
                    <p class="text -light">Location:</p>
                </div>
                <div class="large-9">
                    <p class="text -dark"><strong>8 Warner Yard <a href="" class="link text-link">map</a></strong></p>
                </div>
            </div>

{#             <div class="media">
                <div class="media__img">

                    <p class="text -light">Attendees:</p>

                </div>
                <div class="media__body">

                    <p class="text -dark"><strong>Jason Smith, Amy Tan, Han Solo, Tony Stark</strong></p>

                </div>
            </div>

            <div class="media">
                <div class="media__img">

                    <p class="text -light">Location:</p>

                </div>
                <div class="media__body">

                    <p class="text -dark"><strong>8 Warner Yard <a href="" class="link text-link">map</a></strong></p>

                </div>
            </div> #}

            {% for obj_section in obj.daily_digest.sections %}

                {% for obj_item in obj_section.items %}

                    {% if obj_section.section_id === "meetings" %}

                        {% for obj_file_category in obj_item.file_categories %}

                            <div class="daily-digest__section-heading -docs">{{ obj_file_category.file_category_name }}</div>

                            <ul class="options-list__list">

                                {% for obj_file in obj_file_category.files %}
                                    {# {% set obj = obj_file %} #}
                                    {# {% include "table-row-file.swig" %} #}

                                    <li class="options-list__item">
                                        <a href="#" class="options-list__link">

                                            <div class="media -v-center">
                                                <div class="media__img">

                                                    <div class="{{obj_file.file_type_class}}"></div>

                                                </div>
                                                <div class="media__body">

                                                    <div class="media -v-center">
                                                        <div class="media__img -right">

                                                            <div class="{{obj_file.file_source_class}}"></div>

                                                        </div>
                                                        <div class="media__body">

                                                            <div class="options-list__text" title="{{ obj_file.file_name }}">{{ obj_file.file_name|safe }}</div>

                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                        </a>
                                    </li>

                                {% endfor %}

                            </ul>

                        {% endfor %}

                    {% endif %}

                {% endfor %}

            {% endfor %}

        </div>

        <div class="js-demo-only__actions-content-wrap -now-non-calendar" style="display: none">
            
            <p>We think you may need these files for design meeting.</p>
            <p><strong>Attendees</strong>: Jason Smith, Amy Tan, Han Solo, Tony Stark</p>
            <p><strong>Location</strong>: 8 Warner Yard <strong>map</strong></p>

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

