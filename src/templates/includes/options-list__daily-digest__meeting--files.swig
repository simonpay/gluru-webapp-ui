{# <div class="options-list__wrap">
 #}    
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

{# </div> #}
