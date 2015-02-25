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

		if ($('.ucg_worldwide .swiper-slide').first().width() >= 169) {
			$('.ucg_worldwide .swiper-slide, .ucg_worldwide .swiper-wrapper').height(22);
		} else {
			$('.ucg_worldwide .swiper-slide, .ucg_worldwide .swiper-wrapper').height(44);
		}
	}

	var mainContainerWidth,
		numSlidesPerView,
		nationsSwiper = new Swiper('.ucg_worldwide .nations_container .swiper-container', {
			slidesPerView: 3,
			mousewheelControl: true,
			resizeReInit: true,
			freeMode: true
		});

	$('.ucg_worldwide .ucg_worldwide_arrow_left a').on('click', function () {
		nationsSwiper.swipePrev();
	});

	$('.ucg_worldwide .ucg_worldwide_arrow_right a').on('click', function () {
		nationsSwiper.swipeNext();
	});

	$('.ucg_worldwide .nations_container .swiper-slide a').on('click', function (e) {
		e.stopPropagation();
		var $this = $(this);

		// updating selected nation image
		$('.ucg_worldwide .layer_selected img').attr('src', $this.data('img-selected'));

		// updating nation swiper
		if (!$this.parent().hasClass('active')) {
			$('.ucg_worldwide .nations_container .swiper-slide').removeClass('active');
			$this.parent().addClass('active');
		}

		// updating data nation
		$('.ucg_worldwide .unicreditInContainer .nation').text($this.text());
		$('.ucg_worldwide .marketShare .marketShereNumber').text($this.data('marketshare'));
		$('.ucg_worldwide .marketShare .graph').attr('src', $this.data('graph'))
		$('.ucg_worldwide .employees .number').text($this.data('emplyees'));
		$('.ucg_worldwide .branches .number').text($this.data('branches'));
	});

	$('#mainContainer').on("animationSidebarCompleted", function () {
		sidebarResize();
	});

	$('.ucg_worldwide .layer_mapped map area').on('click', function () {
		var $this = $(this),
			$correspondingSwiperSlide = $('.ucg_worldwide .nations_container .swiper-slide a[data-slide=' + $this.data('swiper-slide') + ']');
		console.log('click on ' + $this.data('nation-name'));

		// updating selected nation image
		$('.ucg_worldwide .layer_selected img').attr('src', $this.data('img-selected'));

		// updating nation swiper
		$('.ucg_worldwide .nations_container .swiper-slide').removeClass('active');
		$correspondingSwiperSlide.parent().addClass('active');
		nationsSwiper.swipeTo($this.data('swiper-slide'), 500, false);

		// updating data nation
		$('.ucg_worldwide .unicreditInContainer .nation').text($correspondingSwiperSlide.text());
		$('.ucg_worldwide .marketShare .marketShereNumber').text($correspondingSwiperSlide.data('marketshare'));
		$('.ucg_worldwide .marketShare .graph').attr('src', $correspondingSwiperSlide.data('graph'))
		$('.ucg_worldwide .employees .number').text($correspondingSwiperSlide.data('emplyees'));
		$('.ucg_worldwide .branches .number').text($correspondingSwiperSlide.data('branches'));
	});

	$('.ucg_worldwide .layer_mapped map area').on('mouseover', function () {
		var $this = $(this);

		// updating mouseover nation image
		$('.ucg_worldwide .layer_over').html('<img src="' + $this.data('img-over') + '">');
	});

	$('.ucg_worldwide .layer_mapped map area').on('mouseleave', function () {
		// updating mouseover nation image
		$('.ucg_worldwide .layer_over').html('');
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