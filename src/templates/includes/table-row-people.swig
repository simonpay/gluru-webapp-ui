<div class="table__row js-table-row">

	<div class="table__col -people">

		<div class="media -v-center">
		    <div class="media__img">

				<div class="disc-img -people">
					<div class="disc-img__img-wrap">
						<img class="disc-img__img" src="{{ obj_person_row.person_avatar_src }}" alt="">
					</div>
				</div>

		    </div>
		    <div class="media__body">
	    		<a href="#" class="link table__text--heading" title="{{ obj_person_row.person_name }}">{{ obj_person_row.person_name }}</a>
	    		<a href="#" class="link table__text--sub-heading" title="{{ obj_person_row.person_email }}">{{ obj_person_row.person_email }}</a>
		    </div>

		    {# {%> "file-nav" %} #}
		    
		</div>

	</div>

	<div class="table__col -event-type">
		<div class="media -v-center u-center-block">
		    <div class="media__img">
		    	<div class="table__icon">
			    	<div class="icon__phone"></div>
			    </div>
		    </div>
		</div>
	</div>

</div>
