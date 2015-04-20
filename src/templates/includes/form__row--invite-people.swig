<div class="row -form js-invite-people-row-clone" style="display:none">
    <div class="large-4 js-invite-people-email">
        <input 
            type="email" 
            class="text-input -full-width" 
            ng-model="" 
            name="" 
            placeholder="Email" 
            required/>
    </div>
    <div class="large-2">

        <select class="js-user-type" style="width:100%;height:38px">
            <option value="a">Admin</option>
            <option value="b">Other</option>
            <option value="c">Another</option>
        </select>

    </div>
    <div class="large-2">

        <div class="form__static-item">
            <div class="form__static-item-text js-source-name">Google Drive</div>
        </div>
        
    </div>
    <div class="large-3">

        <select class="js-access-settings" style="width:100%;height:38px">
            <option value="a">See everything</option>
            <option value="b">Other</option>
            <option value="c">Another</option>
        </select>

    </div>
    <div class="large-1 u-inherit-height">
        <div class="media -v-center">
            <div class="media__body">
                
                {# {% include "loader.swig" %} #}

            </div>
        </div>
    </div>
</div>
