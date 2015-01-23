$(document).ready(function () {
	function toggleCollapse() {
		if (!isBreakpoint('xs')) {
			$('#accordion .countries').removeClass('collapse');
			$('#accordion .countries').removeClass('in');
		} else {
			$('#accordion .countries').addClass('collapse');
		}
	}

	toggleCollapse();

	$(window).resize(function () {
		toggleCollapse();
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
		if ($this.hasClass('collapsed')) {
			$('.worldwideCountries').addClass('collapsed');
			$this.removeClass('collapsed');
//			$('html, body').animate({
//				scrollTop : $this.offset().top
//			}, 1000);
		} else {
			$this.addClass('collapsed');
		}
	});

	var tabsHeader = (function () {
		var partialWidth = 0,
				tabsNumber = 0,
				totalPadding,
				tabPadding;

		$('#tabs .tab').each(function () {
			var $this = $(this);
			partialWidth = $this.outerWidth() + partialWidth;
			tabsNumber++;
		});

		totalPadding = $('#tabs .container').width() - partialWidth;

		tabPadding = (totalPadding / tabsNumber) / 2;

		$('#tabs .tab').each(function () {
			var $this = $(this);
			$this.css('padding-left', tabPadding);
			$this.css('padding-right', tabPadding);
		});

		$('#tabs .tab').on('click', function (e) {
			e.preventDefault();

			var $this = $(this);
			$('#tabs .tab').removeClass('active');
			$this.addClass('active');

			var target = $this.data('tabbody');
			$('#tabsBody .tabPanel').removeClass('selected');
			$('#' + target).addClass('selected');
		});
	})();
});