$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
	}

	function reinitSwiper(swiper) {
		swiper.resizeFix(true);
	}

	var yearsSwiper = new Swiper('.ucg_worldwide .nations_container .swiper-container', {
		slidesPerView: 5,
		spaceBetween: 30,
		mousewheelControl: true,
		resizeReInit: true,
		freeMode: true
	});

	$('.ucg_worldwide .ucg_worldwide_arrow_left a').on('click', function () {
		yearsSwiper.swipePrev();
	});

	$('.ucg_worldwide .ucg_worldwide_arrow_right a').on('click', function () {
		yearsSwiper.swipeNext();
	});

//	var historySwiper = new Swiper('.ucg_worldwide .history_content .swiper-container', {
//		spaceBetween: 30,
//		resizeReInit: true
//	});

	$('.ucg_worldwide .nations_container .swiper-slide a').on('click', function () {
		var $this = $(this);
		if (!$this.parent().hasClass('active')) {
			$('.ucg_worldwide .nations_container .swiper-slide').removeClass('active');
			$this.parent().addClass('active');
//			historySwiper.swipeTo($this.data('slide'), 500, false);
		}
	});

	$('#mainContainer').on("animationSidebarCompleted", function () {
		reinitSwiper(yearsSwiper);
//		reinitSwiper(historySwiper);
		sidebarResize();
	});

	// functions on load
	window.setTimeout(function () {
		sidebarResize();
	}, 1000);
});