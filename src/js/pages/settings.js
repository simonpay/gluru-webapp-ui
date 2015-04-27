
(function(){

	$( ".main-nav__link.-settings" ).addClass( "is-selected" );

	// show debug buttons
	$( ".button-group" ).addClass( "is-hidden" );
	$( ".js-buttons-setup" ).removeClass( "is-hidden" );
	$( ".js-buttons-generic" ).removeClass( "is-hidden" );


    var 
        $section_team_setup           	= $( ".js-section-team-setup" );



    var settings_actions = {

    	doughnut_charts: {
    		
	        _do_animation: function () {

	            $( ".js-chart" ).each(function() {
	            	var $this 								= $(this),
	            		_percentage 						= $this.data( "percentage" ),
	            		_one_percent 						= 314 / 360,
	            		_percentage_as_degrees				= 360 * (_percentage / 100),
	            		_animate_val						= _percentage_as_degrees * _one_percent;

            		// console.log( _animate_val );

	            	$(this)
	            		.find( ".js-chart-ring" )
			            	.animate({
			            		"stroke-dashoffset": _animate_val
			            	}, 1500);
	            });

	        }

    	}
    };

    var obj_settings_actions			= settings_actions;


    setTimeout(function(){
    	obj_settings_actions.doughnut_charts._do_animation();
    }, 1000);

})();
