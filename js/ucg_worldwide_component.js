$(document).ready(function () {
	$.browserDetect.init();

	// deleting outline border on the map in Firefox
	function outlineOnMap() {
		$layerMappedMapArea.removeAttr('onFocus');
	}

	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
		mainContainerWidth = $('#mainContainer').width();

		if (mainContainerWidth >= 920) {
			nationsSwiper.params.slidesPerView = 7;
			reinitSwiper();
		} else if (mainContainerWidth >= 860 && mainContainerWidth < 920) {
			nationsSwiper.params.slidesPerView = 6;
			reinitSwiper();
		} else if (mainContainerWidth >= 820 && mainContainerWidth < 860) {
			nationsSwiper.params.slidesPerView = 5;
			reinitSwiper();
		} else if (mainContainerWidth >= 720 && mainContainerWidth < 820) {
			nationsSwiper.params.slidesPerView = 4;
			reinitSwiper();
		} else if (mainContainerWidth >= 560 && mainContainerWidth < 720) {
			nationsSwiper.params.slidesPerView = 3;
			reinitSwiper();
		} else if (mainContainerWidth < 560) {
			nationsSwiper.params.slidesPerView = 2;
			reinitSwiper();
		}
	}

	function reinitSwiper() {
		nationsSwiper.resizeFix(true);

		if ($('.ucg_worldwide .swiper-slide').first().width() >= 187) {
			$('.ucg_worldwide .swiper-slide, .ucg_worldwide .swiper-wrapper').height(22);
		} else {
			$('.ucg_worldwide .swiper-slide, .ucg_worldwide .swiper-wrapper').height(44);
		}
	}

	// map image caching (nations over and nations selected)
//	function imageCaching() {
//		var arrayImages = [],
//			arraySrc = [
//				'img/static/map/Austria_over.png', 'img/static/map/Austria_selected.png', 'img/static/map/Azerbaijan_over.png', 'img/static/map/Azerbaijan_selected.png',
//				'img/static/map/Bosnia_and_Herzegovina_over.png', 'img/static/map/Bosnia_and_Herzegovina_selected.png', 'img/static/map/Bulgaria_over.png', 'img/static/map/Bulgaria_selected.png',
//				'img/static/map/Croatia_over.png', 'img/static/map/Croatia_selected.png', 'img/static/map/Czech_Republic_over.png', 'img/static/map/Czech_Republic_selected.png',
//				'img/static/map/Germany_over.png', 'img/static/map/Germany_selected.png', 'img/static/map/Hungary_over.png', 'img/static/map/Hungary_selected.png',
//				'img/static/map/Italy_over.png', 'img/static/map/Italy_selected.png', 'img/static/map/Poland_over.png', 'img/static/map/Poland_selected.png', 'img/static/map/Romania_over.png',
//				'img/static/map/Romania_selected.png', 'img/static/map/Russia_over.png', 'img/static/map/Russia_selected.png', 'img/static/map/Serbia_over.png', 'img/static/map/Serbia_selected.png',
//				'img/static/map/Slovakia_over.png', 'img/static/map/Slovakia_selected.png', 'img/static/map/Slovenia_over.png', 'img/static/map/Slovenia_selected.png', 'img/static/map/Turkey_over.png',
//				'img/static/map/Turkey_selected.png', 'img/static/map/Ukraine_over.png', 'img/static/map/Ukraine_selected.png'
//			];
//	
//		for (var i = 0; i < arraySrc.length; i++) {
//			arrayImages[i] = new Image();
//			arrayImages[i].src = arraySrc[i];
//		}
//	}

	var mainContainerWidth,
		nationsSwiper = new Swiper('.ucg_worldwide .nations_container .swiper-container', {
			slidesPerView: 3,
			mousewheelControl: true,
			resizeReInit: true,
			freeMode: true
		}),
		$layerOver = $('.ucg_worldwide .layer_over'),
		$layerOverImg = $('.ucg_worldwide .layer_over img'),
		$layerSelectedImg = $('.ucg_worldwide .layer_selected img'),
		$layerNationName = $('.ucg_worldwide .layer_nationName'),
		$layerMappedMapArea = $('.ucg_worldwide .layer_mapped map area'),
		$unicreditInContainerNation = $('.ucg_worldwide .unicreditInContainer .nation'),
		$marketShereNumber = $('.ucg_worldwide .marketShare .marketShereNumber'),
		$marketShareGraph = $('.ucg_worldwide .marketShare .graph'),
		$employeesNumber = $('.ucg_worldwide .employees .number'),
		$branchesNumber = $('.ucg_worldwide .branches .number');

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
		$layerSelectedImg.attr('src', $this.data('img-selected'));

		// deleting nation over image
		$layerSelectedImg.attr('src', $this.data('img-selected'));

		// updating nation swiper
		if (!$this.parent().hasClass('active')) {
			$('.ucg_worldwide .nations_container .swiper-slide').removeClass('active');
			$this.parent().addClass('active');
		}

		// updating data nation
		$unicreditInContainerNation.text($this.text());
		$marketShereNumber.text($this.data('marketshare'));
		$marketShareGraph.attr('src', $this.data('graph'))
		$employeesNumber.text($this.data('emplyees'));
		$branchesNumber.text($this.data('branches'));
	});

	$('#mainContainer').on("animationSidebarCompleted", function () {
		sidebarResize();
	});

	$layerMappedMapArea.on('click', function (e) {
		e.stopPropagation();
		var $this = $(this),
			$correspondingSwiperSlide = $('.ucg_worldwide .nations_container .swiper-slide a[data-slide=' + $this.data('swiper-slide') + ']');

		// updating selected nation image
		$layerSelectedImg.attr('src', $this.data('img-selected'));

		// updating nation swiper
		$('.ucg_worldwide .nations_container .swiper-slide').removeClass('active');
		$correspondingSwiperSlide.parent().addClass('active');
		nationsSwiper.swipeTo($this.data('swiper-slide'), 500, false);

		// updating data nation
		$unicreditInContainerNation.text($correspondingSwiperSlide.text());
		$marketShereNumber.text($correspondingSwiperSlide.data('marketshare'));
		$marketShareGraph.attr('src', $correspondingSwiperSlide.data('graph'))
		$employeesNumber.text($correspondingSwiperSlide.data('emplyees'));
		$branchesNumber.text($correspondingSwiperSlide.data('branches'));
	});
	
	$layerMappedMapArea.on('mouseover', function (e) {
		var $this = $(this),
			offsetWorldwideContent = $this.parents('.worldwide_content').offset(),
			positionX = e.pageX - offsetWorldwideContent.left,
			positionY = e.pageY - offsetWorldwideContent.top;

		// updating mouseover nation image
//		$layerOverImg.attr('src', $this.data('img-over'));
//		$layerOver.html('<img src="' + $this.data('img-over') + '">');
		$layerOver.find('[data-swiper-slide=' + $this.data('swiper-slide') + ']').show();

		// updating mouseover nation name
		$layerNationName.css({
			top: positionY + 'px',
			left: positionX + 'px'
		}).html($this.data('nation-name'));
	});

	$layerMappedMapArea.on('mouseleave', function () {
		// deleting mouseover nation image
//		$layerOverImg.removeAttr('src');
//		$layerOver.html('');
		$layerOverImg.hide();

		// deleting mouseover nation name
//		$layerNationName.html('');
	});

	// functions on load
//	imageCaching();
	if ($.browserDetect.browser == 'Firefox') {
		outlineOnMap();
	}
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