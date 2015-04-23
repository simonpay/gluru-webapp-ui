<ul class="hierarchy__list">

    {% for obj_node in mydata.hierarchy_lists[hierarchy_type].nodes %}

        <li class="hierarchy__item">

            {% if loop.last %}
                <span class="hierarchy__text -active" title="{{ obj_node.text|safe }}">{{ obj_node.text|safe }}</span>
            {% else %}
                <a href="#" class="hierarchy__text" title="{{ obj_node.text|safe }}">{{ obj_node.text|safe }}</a>
            {% endif %}

        </li>

    {% endfor %}

</ul>