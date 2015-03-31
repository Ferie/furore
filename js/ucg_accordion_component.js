$(document).ready(function () {
	
	$('.ucg_accordion .elementTitle').on('click', function () {
		var $this = $(this),
			$thisAccordion = $this.parents('.ucg_accordion'),
			$thisCollapsed = $this.parents('.collapsed');

		// accordion behaviour
		if ($thisCollapsed.hasClass('open')) {
			$thisCollapsed.removeClass('open')
			$thisCollapsed.find('.collapse').slideUp();
		} else {
			$thisCollapsed.addClass('open');
			$thisCollapsed.find('.collapse').slideDown(function () {
				$('.ucg_video img').each(function () {
					var $this = $(this),
						imageHeight = $this.height(),
						imageWidth = $this.width();
						
					$this.siblings('.ucg_videoplayer_starter').width(imageWidth).height(imageHeight);
				});
			});
		}
	});

});