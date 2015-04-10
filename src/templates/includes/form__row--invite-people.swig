<div class="row -form">
    <div class="large-4">
        {% if bln_hide_field %}
            &nbsp;
        {% else %}
            <input 
                type="text" 
                class="-full-width" 
                ng-model="" 
                name="" 
                placeholder="Email" 
                required/>
        {% endif %}
    </div>
    <div class="large-2">

        <select class="js-example-basic-hide-search" style="width:100%;height:38px;display:none;">
            <option value="a">Admin</option>
            <option value="b">Other</option>
            <option value="c">Another</option>
        </select>

    </div>
    <div class="large-2">
        <input 
            type="text" 
            class="-full-width" 
            ng-model="" 
            name="" 
            placeholder="" 
            required/>
    </div>
    <div class="large-3">

        <select class="js-example-basic-hide-search" style="width:100%;height:38px;display:none;">
            <option value="a">See everything</option>
            <option value="b">Other</option>
            <option value="c">Another</option>
        </select>

    </div>
    <div class="large-1 u-inherit-height">
        <div class="media -v-center">
            <div class="media__body">
                
                {% include "loader.swig" %}

            </div>
        </div>
    </div>
</div>
