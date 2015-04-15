<div class="options-list {{ rObj.options_list_type_class }}">
    <div class="options-list__heading -collapsable js-toggle-expand-list">{{ rObj.heading }}</div>
    <div class="options-list__inner-wrap">

    {% if rObj.id !== "file_summary" %}
        <ul class="options-list__list">
    {% endif %}

        {% for obj in rObj.options %}

            {% if rObj.id !== "file_summary" %}
                <li class="options-list__item">
            {% endif %}


                {% if rObj.id === "sources" || rObj.id === "favourites" || rObj.id === "teams" || rObj.id === "related_files" %}

                    <a href="#" class="options-list__link">

                {% endif %}


                    {% if rObj.id === "hierarchy" %}

                        {# teams #}
                        <div class="media">
                            <div class="media__img">

                                <div class="disc-img">
                                    <div class="icon-sml__gdrive"></div>
                                </div>

                            </div>
                            <div class="media__body">
                                
                                {% set hierarchy_type = "current_file" %}
                                {% include "hierarchy-list.swig" %}

                            </div>
                        </div>


                    {% elseif rObj.id === "teams" %}

                        {# teams #}
                        <div class="media -v-center">
                            <div class="media__img">

                                <div class="disc-img">
                                    <div class="disc-img__img-wrap options-list__icon -team {{ obj.className }}"></div>
                                </div>

                            </div>
                            <div class="media__body">

                                <div class="options-list__text" title="{{ obj.text }}">{{ obj.text|safe }}</div>

                            </div>
                        </div>


                    {% elseif rObj.id === "favourites" %}

                        <div class="media -v-center">
                            <div class="media__img">

                                <div class="disc-img">
                                    <div class="disc-img__img-wrap">
                                        <img class="disc-img__img" src="{{ obj.img_src }}" alt="">
                                    </div>
                                </div>
                                
                            </div>
                            <div class="media__body">

                                <div class="options-list__text" title="{{ obj.text }}">{{ obj.text|safe }}</div>
                                <div class="options-list__text--secondary" title="{{ obj.email }}">{{ obj.email|safe }}</div>

                            </div>
                        </div>


                    {% elseif rObj.id === "related_files" %}

                        <div class="media -v-center">
                            <div class="media__img">

                                <div class="{{obj.className}}"></div>

                            </div>
                            <div class="media__body">

                                <div class="options-list__text" title="{{ obj.text }}">{{ obj.text|safe }}</div>

                            </div>
                        </div>


                    {% elseif rObj.id === "sources" %}

                        {# sources #}
                        <div class="media -v-center">
                            <div class="media__img">

                                <div class="options-list__icon {{obj.className}}"></div>

                            </div>
                            <div class="media__body">

                                <div class="options-list__text" title="{{ obj.text }}">{{ obj.text|safe }}</div>

                            </div>
                        </div>


                    {% elseif rObj.id === "email" %}


                    {% elseif rObj.id === "people" %}

                        <div class="media">
                            <div class="media__img">

                                <div class="disc-img">
                                    <div class="disc-img__img-wrap">
                                        <img class="disc-img__img" src="{{ obj.img_src }}" alt="">
                                    </div>
                                </div>

                            </div>
                            <div class="media__body">

                                <div class="options-list__text--paragraph"><strong>Alex Li</strong> renamed this file with a very long description that will wrap</div>
                                <div class="options-list__text--secondary">Today, 9:00am</div>

                                <div class="media -v-center">
                                    <div class="media__img">
                                        <div class="icon-sml__gdrive"></div>
                                    </div>
                                    <div class="media__body">
                                        <div class="options-list__text">Meeting Notes with a long subject that will not wrap</div>
                                    </div>
                                </div>
                                <div class="media -v-center">
                                    <div class="media__img">
                                        <div class="icon-sml__gdrive"></div>
                                    </div>
                                    <div class="media__body">
                                        <div class="options-list__text">Meeting Notes</div>
                                    </div>
                                </div>

                            </div>
                        </div>


                    {% elseif rObj.id === "web_pages" %}

                        <div class="media">
                            <div class="media__img">

                                <div class="icon__evernote"></div>

                            </div>
                            <div class="media__body">

                                <div class="options-list__text--heading">Firefox Redesigns Its Search Interface</div>
                                <div class="options-list__text--paragraph">Last week we learned that Mozilla had made a pact with Yahoo to switch Firefox’s default search engine to a yet-to-be launched new version of </div>

                            </div>
                        </div>

                    {% elseif rObj.id === "file_summary" %}

                        <ul class="text-list">
                            <li class="text-list__item">
                                <div class="text-list__text">Brand strategy 2015 across all regions.</div>
                            </li>
                            <li class="text-list__item">
                                <div class="text-list__text">Key values, core style, new branding focus, lots of options that will wrap</div>
                            </li>
                            <li class="text-list__item">
                                <div class="text-list__text">Competitor benchmarking tools.</div>
                            </li>
                            <li class="text-list__item">
                                <div class="text-list__text">Brand evolution roadmap.</div>
                            </li>
                        </ul>

                    {% endif %}


                {% if rObj.id === "sources" || rObj.id === "favourites" || rObj.id === "teams" || rObj.id === "related_files" %}

                    </a>

                {% endif %}


            {% if rObj.id !== "file_summary" %}
                </li>
            {% endif %}


        {% endfor %}

    {% if rObj.id !== "file_summary" %}
        </ul><!-- //.options-list__list -->
    {% endif %}
    </div><!-- //.options-list__inner-wrap -->
</div><!-- //.options-list -->
