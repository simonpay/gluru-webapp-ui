
(function(){

	var $drawerWrap = $(".drawer-wrap"),
		$actionsWrap = $(".actions-wrap");

	$(".tmp-buttons--drawer .toggle").click(function() {
		$drawerWrap.toggleClass( "is-hidden" );
	});

	$(".tmp-buttons--actions .toggle").click(function() {
		$actionsWrap.toggleClass( "is-hidden" );
	});


})();
