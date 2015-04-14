
(function(){

    $( ".scrollable-content.-timeline" ).on( "scroll", function() {

        if( $(this).scrollTop() + $(this).innerHeight() >= this.scrollHeight ) {
            console.log( "end reached" );

            // store ref to $this fr use within setTimeout func
            var $this 				= $(this),
            	$loader 			= $( ".js-loading-screen-data" ),
                viewport_offset     = $this.closest( ".split-view-wrap" ).offset(),
            	viewport_width 		= $this.outerWidth(),
            	viewport_height 	= $this.outerHeight(),
            	loader_width    	= $loader.outerWidth(),
            	loader_height    	= $loader.outerHeight();

            // console.log( viewport_offset.left );
            // console.log( viewport_offset.top );
            // console.log( "scrolltop: " + $this.scrollTop() );
            // console.log( "top: " + $this.scrollTop() );

            // console.log( "left: " + viewport_offset.left + " | top: " + viewport_offset.top );

            var _left = viewport_offset.left + ( (viewport_width / 2) - (loader_width / 2) ),
          		_top  = viewport_offset.top + ( (viewport_height / 2 ) - (loader_height / 2) );

            $loader
            	.offset({ left: _left, top: _top })
            		.removeClass( "is-hidden" );

            setTimeout(function(){

            	// load new events by cloning existing events that are 
            	// loaded in the dom but hidden using display:none
	            $this
	            	.find( ".js-events-for-cloning" )
	            		.clone()
	            			.removeClass( "js-events-for-cloning u-display-none" )
			            		.appendTo( $this.find( ".timeline" ) )
			            		;

            	$loader
        			.addClass( "is-hidden" );

			    // load extra events using ajax - only works 
			    // via web server 
				// $.ajax({
				//     type:  "POST",
				//     url:   "/timeline-events.html",
				//     // data:  data,
				//     success: function(res) {
				//         $(".timeline").append(res);
				//     }
				// });

            }, 1000);
            
        }

    });

})();
