<div class="media u-mb--">
    <div class="media__img">
        
        <div class="jquery-ui__form check-box__slider">
            <input 
                type="checkbox" 
                class="checkbox_slider {% if obj_team.text === "All" %}js-check-all{% endif %}" 
                id="share_{{ obj_team.text }}">
            <label 
                class="-small" 
                for="share_{{ obj_team.text }}"></label>
        </div>

    </div>
    <div class="media__body">

        <label for="" class="stage__text" data-for="share_{{ obj_team.text }}">{% if obj_team.text === "All" %}<strong>{% endif %}{{ obj_team.text }}{% if obj_team.text === "All" %}</strong>{% endif %}</label>

    </div>
</div>
