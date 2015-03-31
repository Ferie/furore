$(document).ready(function () {
	$('.collapse').on('shown.bs.collapse', function () {
		sidebarResize();
	});

	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
	}

	// accordion for the countries (mobile)
	function toggleCollapseCountries() {
		if (!isBreakpoint('xs')) {
			$('#accordion .countries').removeClass('collapse');
			$('#accordion .countries').removeClass('in');
			$('.collapse').off('shown.bs.collapse');
			$('.collapse').off('hidden.bs.collapse');
			$('.worldwideCountries .continentTitle').off('click touchstart');
		} else {
			$('#accordion .countries').addClass('collapse');
			$('.collapse').on('shown.bs.collapse', function () {
				sidebarResize();
			});
			$('.collapse').on('hidden.bs.collapse', function () {
				sidebarResize();
			});

			// scroll on continent tap (accordion mobile)
			$('.worldwideCountries .continentTitle').on('click touchstart', function () {
				var $this = $(this);

				if ($this.siblings('.arrow').hasClass('open')) {
					$this.siblings('.arrow').removeClass('open');
				} else {
					$('.worldwideCountries .arrow').removeClass('open');
					$this.siblings('.arrow').addClass('open');
					setTimeout(function () {
						$('html, body').animate({
							scrollTop: $this.offset().top - 60
						}, 800);
					}, 600);
				}
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

	// worldwide company tap on links and company info (mobile)
	function toggleCompanyInfoEvents() {
		$('#companyInfos .subtitle.links, #companyInfos .companyInfoTitle').off('click');
		$('#companyInfos .subtitle.links, #companyInfos .companyInfoTitle').removeClass('open');
		$('#companyInfos .externalLinkAndIconsContainer, #companyInfos .companyInfoBody').hide();

		if (isBreakpoint('xs')) {
			$('#companyInfos .subtitle.links').on('click', function (e) {
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

			$('#companyInfos .companyInfoTitle').on('click', function (e) {
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

	// scroll on continent circle (desktop)
	$('.cerchio').on('click', function () {
		var $this = $(this);
		var continent = $this.data('continent');

		$('html, body').animate({
			scrollTop: $("#" + continent).offset().top
		}, 800);
	});

	// functions on load
	readMore();
	toggleCollapseCountries();
	toggleCompanyInfoEvents();
	window.setTimeout(function () {
		sidebarResize();
	}, 1000);

	var timer = window.setTimeout(function () {}, 0);

	// functions on resize
	$(window).resize(function () {
		readMore();
		toggleCollapseCountries();
		window.clearTimeout(timer);
		timer = window.setTimeout(function () {
			toggleCompanyInfoEvents();
			sidebarResize();
		}, 400);
	});
});