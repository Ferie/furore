$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	}

	$('.ucg_accordion .elementTitle').on('click', function () {
		var $this = $(this),
			$thisAccordion = $this.parents('.ucg_accordion');

		// bootstrap accordion
		$thisAccordion.find('.collapse').on('shown.bs.collapse', function () {
			sidebarResize();
		});

		// arrow behaviour
		if ($this.hasClass('open')) {
			$this.removeClass('open');
		} else {
			$('.elementTitle').removeClass('open');
			$this.addClass('open');
		}
	});

	// scroll on accordion tab tapped
	$('.collapsed .elementTitle').on('touchstart', function () {
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