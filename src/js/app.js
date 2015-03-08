
(function(){

	var $drawer__wrap = $(".drawer__wrap"),
		$actions__wrap = $(".actions__wrap");

	$(".tmp-buttons--drawer .toggle").click(function() {
		if ($drawer__wrap.hasClass("is-hidden")) {
			// show
			$drawer__wrap.removeClass("is-hidden");
			$drawer__wrap.addClass("is-visible");
		} else {
			// hide
			$drawer__wrap.removeClass("is-visible");
			$drawer__wrap.addClass("is-hidden");
		}
	});

	$(".tmp-buttons--actions .toggle").click(function() {
		if ($actions__wrap.hasClass("is-hidden")) {
			// show
			$actions__wrap.removeClass("is-hidden");
			$actions__wrap.addClass("is-visible");
		} else {
			// hide
			$actions__wrap.removeClass("is-visible");
			$actions__wrap.addClass("is-hidden");
		}
	});


})();
