
    {# actions #}
    {% include "actions-start.swig" %}
    
        <div class="js-demo-only__actions-content-wrap -now-calendar" style="display: none">
            
            <div class="now-summary">
                <p class="text -light">We think you may need these files for <a href="#" class="link text-link"><strong>design meeting</strong></a>.</p>

                <p class="text -light">
                    Attendees:<br>
                    <strong class="text -dark">Jason Smith, Amy Tan, Han Solo, Tony Stark</strong>
                </p>
                <p class="text -light">
                    Location:<br>
                    <strong class="text -dark">8 Warner Yard <a href="" class="link text-link">map</a></strong>
                </p>
            </div>

            <div class="options-list__wrap">
                
                {% for obj_section in obj.daily_digest.sections %}

                    {% if obj_section.section_id === "meetings" %}

                        {% for obj_item in obj_section.items %}

                            {% if loop.first %}

                                {% for obj_file_category in obj_item.file_categories %}

                                    <div class="options-list {{ rObj.options_list_type_class }}">
                                        <div class="options-list__heading -collapsable js-toggle-expand-list">{{ obj_file_category.file_category_name }}</div>

                                        <div class="options-list__inner-wrap">

                                            <ul class="options-list__list">

                                                {% for obj_file in obj_file_category.files %}

                                                    <li class="options-list__item">
                                                        <a href="#" class="options-list__link">

                                                            {% set obj_file = obj_file %}
                                                            {% include "options-list__row--related-file.swig" %}

                                                        </a>
                                                    </li>

                                                {% endfor %}

                                            </ul>

                                        </div><!-- //.options-list__inner-wrap -->
                                    </div><!-- //.options-list -->

                                {% endfor %}

                            {% endif %}

                        {% endfor %}

                    {% endif %}

                {% endfor %}

            </div>

        </div>


        <div class="js-demo-only__actions-content-wrap -now-non-calendar" style="display: none">

            {# no data for this yet #}
            
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

