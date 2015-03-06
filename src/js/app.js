
(function(){

	$(".show").click(function() {
		$(".drawer").removeClass("is-hidden");
		$(".drawer").addClass("is-visible");
	});

	$(".hide").click(function() {
		$(".drawer").addClass("is-hidden");
		$(".drawer").removeClass("is-visible");
	});

})();
