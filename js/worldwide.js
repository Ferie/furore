$(document).ready(function () {
	function toggleCollapseCountries() {
		if (!isBreakpoint('xs')) {
			$('#accordion .countries').removeClass('collapse');
			$('#accordion .countries').removeClass('in');
		} else {
			$('#accordion .countries').addClass('collapse');
		}
	}
	
	function readMore() {
		if (isBreakpoint('xs')) {
			$('#intro .ourPresenceHiddenOnMobile').hide();
			$('#intro .readMore').show();
			$('#intro .readLess').hide();

			$('#intro .readMore a').on('click', function () {
				$('#intro .ourPresenceHiddenOnMobile').slideDown();
				$('#intro .readMore').hide();
				$('#intro .readLess').show();
			});

			$('#intro .readLess a').on('click', function () {
				$('#intro .ourPresenceHiddenOnMobile').slideUp();
				$('#intro .readMore').show();
				$('#intro .readLess').hide();
			});
		} else {
			$('#intro .ourPresenceHiddenOnMobile').show();
			$('#intro .readMore').hide();
			$('#intro .readLess').hide();
		}
	}

	function tabsHeader() {
		var partialWidth = 0,
			tabsNumber = 0,
			totalPadding = 0,
			tabPadding = 0,
			$containerWidth = $('.container').width();

		$('#tabs .tab').each(function () {
			var $this = $(this);
			partialWidth = $this.width() + partialWidth;
			tabsNumber++;
		});

		// border inclusion in partialWidth to adjust the totalPadding
		// tabsNumber + 1 is the number of the borders (the number 2 is another unit added that works for some even resolutions)
		partialWidth = partialWidth + tabsNumber + 2;

		totalPadding = $('#tabs .container').outerWidth() - partialWidth;
		tabPadding = Math.abs((totalPadding / tabsNumber) / 2);

		$('#tabs .tab').each(function () {
			var $this = $(this);
			$this.css('padding-left', tabPadding);
			$this.css('padding-right', tabPadding);
		});

		$('#tabs .tab').on('click', function () {
			var $this = $(this);
			$('#tabs .tab').removeClass('active');
			$this.addClass('active');

			var target = $this.data('tabpanel');
			$('.panel-group .tabPanel').removeClass('selected');
			$('#' + target).addClass('selected');
		});
	}

	readMore();
	toggleCollapseCountries();
	tabsHeader();

//	var timer = window.setTimeout(function () {}, 0);

	$(window).resize(function () {
		readMore();
		toggleCollapseCountries();
//		window.clearTimeout(timer);
//		timer = window.setTimeout(function () {
			tabsHeader();
//		}, 400);
	});

	$('.sidebar-switch').on('click', function () {
		setTimeout(function () {
			tabsHeader();
		}, 400);
	});

	$('.collapse').on('shown.bs.collapse', function () {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});

	$('.collapse').on('hidden.bs.collapse', function () {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});

	$('.cerchio').on('click', function () {
		var $this = $(this);
		var continent = $this.data('continent');

		$('html, body').animate({
			scrollTop: $("#" + continent).offset().top
		}, 1000);
	});

	$('.worldwideCountries').on('click', function () {
		var $this = $(this);
		setTimeout(function () {
			$('html, body').animate({
				scrollTop : $this.offset().top - 60
			}, 1000);
		}, 350);
	});

	$('.worldwideCountryCompany').on('click', function () {
		var $this = $(this);
//		$this.toggleClass('collapsed');
//		$this.find('.collapse').collapse('hide');
	});
});