<div class="media -v-center">
    <div class="media__img">

        <div class="{{obj_file.file_class}}"></div>

    </div>
    <div class="media__body{% if obj_file.source_class !== "" %} u-inherit-height{% endif %}">

        {% if obj_file.source_class !== "" %}

            <div class="media -v-center">
                <div class="media__img -right">

                    <div class="{{obj_file.source_class}}"></div>

                </div>
                <div class="media__body">

                    <div class="options-list__text" title="{{ obj_file.text }}">{{ obj_file.text|safe }}</div>

                </div>
            </div>

        {% else %}

            <div class="options-list__text" title="{{ obj_file.text }}">{{ obj_file.text|safe }}</div>

        {% endif %}

    </div>
</div>
