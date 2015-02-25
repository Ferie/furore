$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
	}

	$('.ucg_accordion .elementTitle').on('click', function () {
		var $this = $(this),
			$thisAccordion = $this.parents('.ucg_accordion'),
			$thisCollapsed = $this.parents('.collapsed');

		// accordion behaviour
		if ($thisCollapsed.hasClass('open')) {
			$thisAccordion.find('.collapse').slideUp(function () {
				sidebarResize();
				$thisCollapsed.removeClass('open');
			});
		} else {
			$thisAccordion.find('.collapse').slideUp();
			$thisAccordion.find('.collapsed').removeClass('open');
			$thisCollapsed.addClass('open');
			$thisCollapsed.find('.collapse').slideDown(function () {
				$('.ucg_video img').each(function () {
					var $this = $(this),
						imageHeight = $this.height(),
						imageWidth = $this.width();
						
					$this.siblings('.ucg_videoplayer_starter').width(imageWidth).height(imageHeight);
				});
				setTimeout(function () {
					$('html, body').animate({
						scrollTop: $this.offset().top
					}, 400);
				}, 400);
				sidebarResize();
			});
		}
	});

	// functions on load
	window.setTimeout(function () {
		sidebarResize();
	}, 1000);
});