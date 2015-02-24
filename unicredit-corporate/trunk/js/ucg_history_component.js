$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
	}

	function reinitSwiper(swiper) {
		swiper.resizeFix(true);
	}

	var yearsSwiper = new Swiper('.ucg_history .years_container .swiper-container', {
		slidesPerView: 7,
		spaceBetween: 50,
		mousewheelControl: true,
		resizeReInit: true,
		freeMode: true
	});

	$('.ucg_history .ucg_history_arrow_left a').on('click', function () {
		yearsSwiper.swipePrev();
	});

	$('.ucg_history .ucg_history_arrow_right a').on('click', function () {
		yearsSwiper.swipeNext();
	});

	var historySwiper = new Swiper('.ucg_history .history_content .swiper-container', {
		spaceBetween: 30,
		resizeReInit: true
	});

	$('.ucg_history .years_container .swiper-slide a').on('click', function () {
		var $this = $(this);
		if (!$this.parent().hasClass('active')) {
			$('.ucg_history .years_container .swiper-slide').removeClass('active');
			$this.parent().addClass('active');
			historySwiper.swipeTo($this.data('slide'), 500, false);
		}
	});

	$('#mainContainer').on("animationSidebarCompleted", function () {
		reinitSwiper(yearsSwiper);
		reinitSwiper(historySwiper);
		sidebarResize();
	});

	// functions on load
	window.setTimeout(function () {
		sidebarResize();
	}, 1000);
});