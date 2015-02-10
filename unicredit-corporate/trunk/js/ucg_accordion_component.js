$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	}

	$('.collapse').on('shown.bs.collapse', function () {
		sidebarResize();
	});

	$('.collapse').on('hidden.bs.collapse', function () {
		sidebarResize();
	});

	// scroll on accordion tab tapped (mobile)
	$('.worldwideCountries .elementTitle').on('touchstart', function () {
		var $this = $(this);

		setTimeout(function () {
			$('html, body').animate({
				scrollTop: $this.offset().top - 60
			}, 800);
		}, 600);
	});

	// functions on load
	window.setTimeout(function () {
		sidebarResize();
	}, 1000);
});