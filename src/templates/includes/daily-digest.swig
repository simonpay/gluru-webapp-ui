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

    {% for obj_section in obj.daily_digest.sections %}

        <div class="daily-digest__section-heading">{{ obj_section.section_name }}</div>

        {% for obj_item in obj_section.items %}
    
            <div class="priority-box__wrap">

                <div class="priority-box -daily-digest collapsable is-collapsed js-toggle-collapsable-content {% if obj_section.section_id === "meetings" %} step-three{% endif %}">

                    <div class="media -v-center">
                        <div class="media__img">

                            <div class="disc-img -event">
                                <div class="disc-img__img-wrap">

                                    {% if obj_section.section_id === "people" %}
                                        <img class="disc-img__img" src="{{ obj_item.item_avatar_src }}" alt="">
                                    {% elseif obj_section.section_id === "meetings" %}
                                        <div class="u-center-transform icon__gcalendar"></div>
                                    {% endif %}

                                </div>

                                {% if obj_item.source_type !== "" %}
                                <div class="inset-icon -event-source">
                                    <div class="u-center-transform {{ obj_item.source_type }}"></div>
                                </div>
                                {% endif %}

                            </div>

                        </div>
                        <div class="media__body">

                            {% if obj_section.section_id === "people" %}

                                <div class="table__text--heading" title="{{ obj_item.item_name|striptags }}">{{ obj_item.item_name|safe }}</div>
                                <div class="table__text--sub-heading" title="{{ obj_item.item_email|striptags }}">{{ obj_item.item_email|safe }}</div>

                            {% elseif obj_section.section_id === "meetings" %}

                                <div class="media -v-center">
                                    <div class="media__img -right -meeting">

                                        <div class="table__text" title="{{ obj_item.item_location|striptags }}"><strong>Location: </strong>{{ obj_item.item_location|safe }}</div>
                                        <div class="table__text" title="{{ obj_item.item_attendees|striptags }}"><strong>Attendees: </strong>{{ obj_item.item_attendees|safe }}</div>

                                    </div>
                                    <div class="media__body">

                                        <div class="table__text--heading" title="{{ obj_item.item_name|striptags }}">{{ obj_item.item_name|safe }}</div>
                                        <div class="table__text--sub-heading" title="{{ obj_item.item_date_time|striptags }}">{{ obj_item.item_date_time|safe }}</div>

                                    </div>
                                </div>

                            {% endif %}

                        </div>
                    </div>

                </div>
            </div>


    
            <div class="collapsable-content -collapsed js-collapsable-content">

                {% if obj_section.section_id === "people" %}

                    <div class="table -selectable -daily-digest">

                        {% for obj_file in obj_item.files %}
                            {% set obj_file_row = obj_file %}
                            {% include "table-row-file.swig" %}
                        {% endfor %}

                    </div>

                {% elseif obj_section.section_id === "meetings" %}

                    {% for obj_file_category in obj_item.file_categories %}

                        <div class="daily-digest__section-heading -docs">{{ obj_file_category.file_category_name }}</div>

                        <div class="table -selectable -daily-digest -categories">

                            {% for obj_file in obj_file_category.files %}
                                {% set obj_file_row = obj_file %}
                                {% include "table-row-file.swig" %}
                            {% endfor %}

                        </div>

                    {% endfor %}

                {% endif %}

            </div>
            
        {% endfor %}

    {% endfor %}


</div><!-- // .daily-digest -->
