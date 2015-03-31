$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
		mainContainerWidth = $('#mainContainer').width();

		if (mainContainerWidth >= 860) {
			for (var i = 0; i < historysArray.length; i++) {
				historysArray[i].years_swiper.params.slidesPerView = 7;
				reinitSwiper(historysArray[i].years_swiper);
				reinitSwiper(historysArray[i].history_swiper);
			}
		} else if (mainContainerWidth >= 520 && mainContainerWidth < 860) {
			for (var i = 0; i < historysArray.length; i++) {
				historysArray[i].years_swiper.params.slidesPerView = 5;
				reinitSwiper(historysArray[i].years_swiper);
				reinitSwiper(historysArray[i].history_swiper);
			}
		} else if (mainContainerWidth < 520) {
			for (var i = 0; i < historysArray.length; i++) {
				historysArray[i].years_swiper.params.slidesPerView = 3;
				reinitSwiper(historysArray[i].years_swiper);
				reinitSwiper(historysArray[i].history_swiper);
			}
		}
	}

	function reinitSwiper(swiper) {
		swiper.resizeFix(true);
	}

	function setHistoryArray(historyContainer) {
		var $historyName = historyContainer.data('history-name'),
			$yearsSwiper = historyContainer.find('.years_container .swiper-container'),
			$historySwiper = historyContainer.find('.history_content .history_swiper');

		historysArray.push({
			history_name: $historyName,
			years_swiper: $yearsSwiper.swiper({
				slidesPerView: 5,
				spaceBetween: 50,
				mousewheelControl: true,
				resizeReInit: true,
				freeMode: true
			}),
			history_swiper: $historySwiper.swiper({
				spaceBetween: 30,
				resizeReInit: true,
				freeMode: false,
				simulateTouch: false
			})
		});
	}

	function getSwipersOfCurrentHistoryComponent(historyContainer) {
		var $historyName = historyContainer.data('history-name'),
			currentHistoryComponentSwipers = $.grep(historysArray, function (element) {
				if (element.history_name == $historyName) {
					return element;
				}
			});
		return currentHistoryComponentSwipers;
	}

	var historysArray = Array(),
		$historyContentSwiperContainer = $('.ucg_history .history_content .history_swiper');

	$('.ucg_history').each(function () {
		var $this = $(this);
		setHistoryArray($this);
	});

	$('.ucg_history .ucg_history_arrow a').on('click', function () {
		var $thisHistoryComponent = $(this).parents('.ucg_history'),
			$thisHistoryComponentSwipers = getSwipersOfCurrentHistoryComponent($thisHistoryComponent);
		$(this).parent().hasClass('prev') ? $thisHistoryComponentSwipers[0].years_swiper.swipePrev() : $thisHistoryComponentSwipers[0].years_swiper.swipeNext();
	});

	$('.ucg_history .years_container .swiper-slide a').on('click', function (e) {
		e.stopPropagation();
		var $this = $(this),
			$thisHistoryComponent = $this.parents('.ucg_history'),
			$thisYearsSlider = $this.parents('.years_container'),
			$thisDataSlide = $this.data('slide'),
			$thisHistoryComponentSwipers = getSwipersOfCurrentHistoryComponent($thisHistoryComponent),
			newHistorySlide;

		if (!$this.parent().hasClass('active')) {
			$thisYearsSlider.find('.swiper-slide').removeClass('active');
			$this.parent().addClass('active');
			$thisHistoryComponentSwipers[0].history_swiper.swipeTo($thisDataSlide, 500, false);
			newHistorySlide = $thisHistoryComponent.find('.history_swiper .swiper-slide-active .slideContainer');

			$('#mainContainer').trigger('setHeightOfTheCurrentSlide', newHistorySlide);
		}
	});

	$historyContentSwiperContainer.find('.slideContainer').on('click', function () {
		var $currentSlide = $(this);

		setTimeout(function () {
			$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $currentSlide);
		}, 400);
	});

	$('#mainContainer').on('setHeightOfTheCurrentSlide', function (e, currentSlide) {
		var $currentSlide = $(currentSlide),
			$currentHistorySwiper = $currentSlide.parents('.ucg_history .history_content .history_swiper');

		$currentSlide.parent().css('height', $currentSlide.height() + 40);
		$currentHistorySwiper.animate({height: $currentSlide.height() + 40}, 'fast');

		setTimeout(function () {
			sidebarResize();
		}, 400);
	});

	$('#mainContainer').on('animationSidebarCompleted', function () {
		$('.ucg_history .history_content .history_swiper').each(function () {
			var $this = $(this),
				$currentSlide = $this.find('.swiper-slide-active .slideContainer');
			$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $currentSlide);
		});
	});

	// functions on load
	window.setTimeout(function () {
		$('.ucg_history .history_content .history_swiper').each(function () {
			var $this = $(this),
				$currentSlide = $this.find('.swiper-slide-active .slideContainer');
			$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $currentSlide);
		});
	}, 1000);

	var timer;

	// functions on resize
	$(window).resize(function () {
		window.clearTimeout(timer);
		timer = window.setTimeout(function () {
			$('.ucg_history .history_content .history_swiper').each(function () {
				var $this = $(this),
					$currentSlide = $this.find('.swiper-slide-active .slideContainer');
				$('#mainContainer').trigger('setHeightOfTheCurrentSlide', $currentSlide);
			});
		}, 400);
	});
});