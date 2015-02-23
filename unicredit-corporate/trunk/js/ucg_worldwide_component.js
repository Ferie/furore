$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
		mainContainerWidth = $('#mainContainer').width();

		if (mainContainerWidth >= 920) {
			numSlidesPerView = 7;
			reinitSwiper();
		} else if (mainContainerWidth >= 860 && mainContainerWidth < 920) {
			numSlidesPerView = 6;
			reinitSwiper();
		} else if (mainContainerWidth >= 820 && mainContainerWidth < 860) {
			numSlidesPerView = 5;
			reinitSwiper();
		} else if (mainContainerWidth >= 720 && mainContainerWidth < 820) {
			numSlidesPerView = 4;
			reinitSwiper();
		} else if (mainContainerWidth >= 560 && mainContainerWidth < 720) {
			numSlidesPerView = 3;
			reinitSwiper();
		} else if (mainContainerWidth < 560) {
			numSlidesPerView = 2;
			reinitSwiper();
		}
	}

	function reinitSwiper() {
		nationsSwiper = new Swiper('.ucg_worldwide .nations_container .swiper-container', {
			slidesPerView: numSlidesPerView,
			mousewheelControl: true,
			resizeReInit: true,
			freeMode: true
		});

		if ($('.ucg_worldwide .swiper-slide').first().width() >= 170) {
			$('.ucg_worldwide .swiper-slide, .ucg_worldwide .swiper-wrapper').height(22);
		} else {
			$('.ucg_worldwide .swiper-slide, .ucg_worldwide .swiper-wrapper').height(44);
		}
	}

	var mainContainerWidth,
		numSlidesPerView,
		nationsSwiper;

	$('.ucg_worldwide .ucg_worldwide_arrow_left a').on('click', function () {
		nationsSwiper.swipePrev();
	});

	$('.ucg_worldwide .ucg_worldwide_arrow_right a').on('click', function () {
		nationsSwiper.swipeNext();
	});

	$('.ucg_worldwide .nations_container .swiper-slide a').on('click', function () {
		var $this = $(this);
		if (!$this.parent().hasClass('active')) {
			$('.ucg_worldwide .nations_container .swiper-slide').removeClass('active');
			$this.parent().addClass('active');
		}
	});

	$('#mainContainer').on("animationSidebarCompleted", function () {
		sidebarResize();
	});

	// functions on load
	window.setTimeout(function () {
		sidebarResize();
	}, 1000);

	var timer;

	// functions on resize
	$(window).resize(function () {
		window.clearTimeout(timer);
		timer = window.setTimeout(function () {
			sidebarResize();
		}, 400);
	});
});