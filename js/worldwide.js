$(document).ready(function () {
	$('.collapse').on('shown.bs.collapse', function () {
		sidebarResize();
	});

	function sidebarResize() {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	}

	// accordion for the countries (mobile)
	function toggleCollapseCountries() {
		if (!isBreakpoint('xs')) {
			$('#accordion .countries').removeClass('collapse');
			$('#accordion .countries').removeClass('in');
			$('.collapse').off('shown.bs.collapse');
			$('.collapse').off('hidden.bs.collapse');
		} else {
			$('#accordion .countries').addClass('collapse');
			$('.collapse').on('shown.bs.collapse', function () {
				sidebarResize();
			});
			$('.collapse').on('hidden.bs.collapse', function () {
				sidebarResize();
			});
		}
	}

	// read more management (mobile)
	function readMore() {
		if (isBreakpoint('xs')) {
			$('#intro .ourPresenceHiddenOnMobile').hide();
			$('#intro .readMore').show();
			$('#intro .readLess').hide();

			$('#intro .readMore a').on('click', function () {
				$('#intro .ourPresenceHiddenOnMobile').slideDown(function() {
					sidebarResize();
				});
				$('#intro .readMore').hide();
				$('#intro .readLess').show();
			});

			$('#intro .readLess a').on('click', function () {
				$('#intro .ourPresenceHiddenOnMobile').slideUp(function() {
					sidebarResize();
				});
				$('#intro .readMore').show();
				$('#intro .readLess').hide();
			});
		} else {
			$('#intro .ourPresenceHiddenOnMobile').show();
			$('#intro .readMore').hide();
			$('#intro .readLess').hide();
			$('#intro .readMore a').off('click');
			$('#intro .readLess a').off('click');
		}
	}

	// functin that puts custom padding on resize for every tabs
	function tabsHeader() {
		var partialWidth = 0,
			tabsNumber = 0,
			totalPadding = 0,
			tabPadding = 0;

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

	// worldwide company tap on links and company info (mobile)
	function toggleCompanyInfoEvents() {
		$('#companyInfos .subtitle.links, #companyInfos .companyInfoTitle').off('click');
		$('#companyInfos .subtitle.links, #companyInfos .companyInfoTitle').removeClass('open');
		$('#companyInfos .externalLinkAndIconsContainer, #companyInfos .companyInfoBody').hide();

		if (isBreakpoint('xs')) {
			$('#companyInfos .subtitle.links').on('touchstart', function (e) {
				e.stopPropagation();
				var $this = $(this);
				if ($this.hasClass('open')) {
					$('#companyInfos .externalLinkAndIconsContainer').slideUp(function(){
						$this.removeClass('open');
						sidebarResize();
					});
				} else {
					$this.addClass('open');
					$('#companyInfos .externalLinkAndIconsContainer').slideDown(function() {
						sidebarResize();
					});
				}
			});

			$('#companyInfos .companyInfoTitle').on('touchstart', function (e) {
				e.stopPropagation();
				var $this = $(this);
				if ($this.hasClass('open')) {
					$('#companyInfos .companyInfoBody').slideUp(function() {
						$this.removeClass('open');
						sidebarResize();
					});
				} else {
					$this.addClass('open');
					$('#companyInfos .companyInfoBody').slideDown(function() {
						sidebarResize();
					});
				}
			});
		} else {
			$('#companyInfos .subtitle.links, #companyInfos .companyInfoTitle').off('click');
			$('#companyInfos .subtitle.links, #companyInfos .companyInfoTitle').removeClass('open');
			$('#companyInfos .externalLinkAndIconsContainer, #companyInfos .companyInfoBody').show();
			sidebarResize();
		}
	}

	// functions on load
	readMore();
	toggleCollapseCountries();
	toggleCompanyInfoEvents();
	tabsHeader();
	window.setTimeout(function () {
		sidebarResize();
	}, 1000);

	var timer = window.setTimeout(function () {}, 0);

	// functions on resize
	$(window).resize(function () {
		readMore();
		toggleCollapseCountries();
		tabsHeader();
		window.clearTimeout(timer);
		timer = window.setTimeout(function () {
			toggleCompanyInfoEvents();
			sidebarResize();
		}, 400);
	});

	// event that resizes the tabs padding on sidebar click
	$('.sidebar-switch').on('click', function () {
		setTimeout(function () {
			tabsHeader();
			sidebarResize();
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
	$('.worldwideCountries .continentTitle').on('touchstart', function () {
		var $this = $(this);

		setTimeout(function () {
			$('html, body').animate({
				scrollTop: $this.offset().top - 60
			}, 800);
		}, 600);
	});

	// event that puts the active tab and shows the active panel (desktop)
	$('#tabs .tab').on('click', function () {
		var $this = $(this);
		$('#tabs .tab').removeClass('active');
		$this.addClass('active');

		var target = $this.data('tabpanel');
		$('#tabsBody .tabPanel').removeClass('selected');
		$('#' + target).addClass('selected');

		setTimeout(function () {
			sidebarResize();
		}, 400);
	});

	// skin for the select in Worldwide area
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

	// event that puts a placeholder when the dropdown menu is open (mobile)
	$('#worldwide .chosen-container .chosen-single').on('click', function () {
		$(this).find('span').text($('#worldwide #dropdown select').data('placeholder'));
	});

	// ...and event that shows the active panel (mobile)
	$('#worldwide .chosen-container .chosen-drop ul').on('click', function () {
		var target = $('#worldwide .chosen-select option:selected').val();

		$('#tabsBody .tabPanel').removeClass('selected');
		$('#' + target).addClass('selected');
		sidebarResize();
	});
});