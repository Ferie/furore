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

	$('.ucg_worldwide .nations_container .swiper-slide a').on('click', function () {
		var $this = $(this);
		if (!$this.parent().hasClass('active')) {
			$('.ucg_worldwide .nations_container .swiper-slide').removeClass('active');
			$this.parent().addClass('active');
		}
	});

	$('#mainContainer').on("animationSidebarCompleted", function () {
		reinitSwiper(yearsSwiper);
		sidebarResize();
	});

	// functions on load
	window.setTimeout(function () {
		sidebarResize();
	}, 1000);
});