<div class="row -form js-invite-people-row-clone" style="display:{{ display_value }}">
    <div class="med-4 js-invite-people-email">
        <input 
            type="email" 
            class="text-input -full-width" 
            ng-model="" 
            name="" 
            placeholder="Email" 
            required/>
    </div>
    <div class="med-2">

        <select class="js-user-type" style="width:100%;">
            <option value="admin">Admin</option>
            <option value="user">User</option>
        </select>

    </div>
    <div class="med-2">

        <div class="form__static-item">
            <div class="form__static-item-text js-source-name">5 Connected</div>
        </div>
        
    </div>
    <div class="med-3">

        <select class="js-access-settings" style="width:100%;">
            <option value="everything">See everything</option>
            <option value="activity">Activity</option>
            <option value="nothing">See nothing</option>
        </select>

    </div>
    <div class="med-1 u-inherit-height">
        <div class="media -v-center">
            <div class="media__body">
                
                {# {% include "loader.swig" %} #}

            </div>
        </div>
    </div>
</div>
