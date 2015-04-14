
(function(){

    $( ".scrollable-content.-timeline" ).on( "scroll", function() {

        if( $(this).scrollTop() + $(this).innerHeight() >= this.scrollHeight ) {
            console.log( "end reached" );

            // store ref to $this fr use within setTimeout func
            var $this = $(this);

            setTimeout(function(){

            	// load new events by cloning existing events that are 
            	// loaded in the dom but hidden using display:none
	            $this
	            	.find( ".js-events-for-cloning" )
	            		.clone()
	            			.removeClass( "js-events-for-cloning u-display-none" )
			            		.appendTo( $this.find( ".timeline" ) )
			            		;

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
