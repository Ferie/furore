$(document).ready(function () {
	$('.collapse').on('shown.bs.collapse', function () {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});

	$('.collapse').on('hidden.bs.collapse', function () {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});

	// accordion for the countries (mobile)
	function toggleCollapseCountries() {
		if (!isBreakpoint('xs')) {
			$('#accordion .countries').removeClass('collapse');
			$('#accordion .countries').removeClass('in');
		} else {
			$('#accordion .countries').addClass('collapse');
		}
	}

	// read more management (mobile)
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

	// put custom padding on resize on the tab header
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

	// resize the page on sidebar click
	$('.sidebar-switch').on('click', function () {
		setTimeout(function () {
			tabsHeader();
		}, 400);
	});

	// scroll on continent circle (desktop)
	$('.cerchio').on('click', function () {
		var $this = $(this);
		var continent = $this.data('continent');

		$('html, body').animate({
			scrollTop: $("#" + continent).offset().top
		}, 800);
	});

	// scroll on continent tap (mobile)
	$('.worldwideCountries').on('click', function () {
		var $this = $(this);

		setTimeout(function () {
			$('html, body').animate({
				scrollTop: $this.offset().top - 60
			}, 800);
		}, 400);
	});

	// tab header event (desktop)
	$('#tabs .tab').on('click', function () {
		var $this = $(this);
		$('#tabs .tab').removeClass('active');
		$this.addClass('active');

		var target = $this.data('tabpanel');
		$('#tabsBody .tabPanel').removeClass('selected');
		$('#' + target).addClass('selected');
	});

	// skin for the tag select in Worldwide
	$("#worldwide .chosen-select").chosen({
				allow_single_deselect: true,
				disable_search: true,
				width: "100%"
			}).change(function () {
		var $txt = $('#worldwide .chosen-container-single .chosen-single-with-deselect span');
		if ($txt.text().indexOf("(") > -1) {
			$txt.text($txt.text().substring(0, $txt.text().indexOf("(")));
		}
	});

	// events that put a placeholder when the dropdown menù is open (mobile)
	$('#worldwide .chosen-container .chosen-single').on('click', function () {
		$(this).find('span').text($('#worldwide #dropdown select').data('placeholder'));
	});

	$('#worldwide .chosen-container .chosen-drop ul').on('click', function () {
		var target = $('#worldwide .chosen-select option:selected').val();

		$('#tabsBody .tabPanel').removeClass('selected');
		$('#' + target).addClass('selected');
	});

	// worldwide company tap on slide panel
	$('#companyInfos .subtitle.links').on('click', function () {
		var $this = $(this);
		if ($this.hasClass('open')) {
			$('#companyInfos .externalLinkAndIconsContainer').slideUp(function(){
				$this.removeClass('open');
			});
		} else {
			$this.addClass('open');
			$('#companyInfos .externalLinkAndIconsContainer').slideDown();
		}
	});

	$('#companyInfos .companyInfoTitle').on('click', function () {
		var $this = $(this);
		if ($this.hasClass('open')) {
			$('#companyInfos .companyInfoBody').slideUp(function() {
				$this.removeClass('open');
			});
		} else {
			$this.addClass('open');
			$('#companyInfos .companyInfoBody').slideDown();
		}
	});
});