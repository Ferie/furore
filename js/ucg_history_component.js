$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
		mainContainerWidth = $('#mainContainer').width();

		if (mainContainerWidth >= 860) {
			yearsSwiper.params.slidesPerView = 7;
			reinitSwiper(yearsSwiper);
		} else if (mainContainerWidth >= 520 && mainContainerWidth < 860) {
			yearsSwiper.params.slidesPerView = 5;
			reinitSwiper(yearsSwiper);
		} else if (mainContainerWidth < 520) {
			yearsSwiper.params.slidesPerView = 3;
			reinitSwiper(yearsSwiper);
		}
	}

	function reinitSwiper(swiper) {
		swiper.resizeFix(true);
	}

	var yearsSwiper = new Swiper('.ucg_history .years_container .swiper-container', {
			slidesPerView: 5,
			spaceBetween: 50,
			mousewheelControl: true,
			resizeReInit: true,
			freeMode: true
		}),
		historySwiper = new Swiper('.ucg_history .history_content .swiper-container', {
			spaceBetween: 30,
			resizeReInit: true
		}),
		$historyContentSwiperContainer = $('.ucg_history .history_content .hystory_swiper'),
		$currentDataSlide = $historyContentSwiperContainer.find('.swiper-slide-active .slideContainer').data('slide');

	$('.ucg_history .ucg_history_arrow_left a').on('click', function () {
		yearsSwiper.swipePrev();
	});

	$('.ucg_history .ucg_history_arrow_right a').on('click', function () {
		yearsSwiper.swipeNext();
	});

	$('.ucg_history .years_container .swiper-slide a').on('click', function (e) {
		e.stopPropagation();
		var $this = $(this),
			$thisDataSlide = $this.data('slide');

		if (!$this.parent().hasClass('active')) {
			$('.ucg_history .years_container .swiper-slide').removeClass('active');
			$this.parent().addClass('active');
			historySwiper.swipeTo($thisDataSlide, 500, false);

			$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $thisDataSlide);
		}
	});

	$historyContentSwiperContainer.find('.slideContainer').on('click', function () {
		var $thisDataSlide = $(this).data('slide');

		setTimeout(function () {
			$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $thisDataSlide);
		}, 400);
	});

	$('#mainContainer').on('setHeightOfTheCurrentSlide', function (e, slideNumber) {
		var currentSlide = $historyContentSwiperContainer.find('.swiper-slide .slideContainer[data-slide=' + slideNumber + ']');

		currentSlide.parent().css('height', currentSlide.height() + 40);
		$historyContentSwiperContainer.animate({height: currentSlide.height() + 40}, 'fast');

		setTimeout(function () {
			sidebarResize();
		}, 800);
	});

	$('#mainContainer').on('animationSidebarCompleted', function () {
		reinitSwiper(yearsSwiper);
		reinitSwiper(historySwiper);
		var $currentDataSlide = $historyContentSwiperContainer.find('.swiper-slide-active .slideContainer').data('slide');
		$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $currentDataSlide);
	});

	// functions on load
	window.setTimeout(function () {
		$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $currentDataSlide);
	}, 1000);

	var timer;

	// functions on resize
	$(window).resize(function () {
		window.clearTimeout(timer);
		timer = window.setTimeout(function () {
			$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $currentDataSlide);
		}, 400);
	});
});