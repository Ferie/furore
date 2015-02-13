$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
	}

	// functin that puts custom padding on resize for every tabs
	function tabsHeader() {
		$('.ucg_tab').each(function () {
			var $thisTab = $(this),
				$thisTabHeader = $(this).find('.tabs .tab'),
				partialWidth = 0,
				tabsNumber = 0,
				totalPadding = 0,
				tabPadding = 0;

			$thisTabHeader.each(function () {
				var $this = $(this);
				partialWidth = $this.width() + partialWidth;
				tabsNumber++;
			});

			// border inclusion in partialWidth to adjust the totalPadding
			// tabsNumber + 1 is the number of the borders (the number 2 is another unit added that works for some even resolutions)
			// the 30 is the total padding of the .ucg_tab .container
			partialWidth = partialWidth + tabsNumber + 2;

			totalPadding = $thisTab.find('.tabs .container').outerWidth() - partialWidth - 30;
			tabPadding = Math.abs((totalPadding / tabsNumber) / 2);

			$thisTabHeader.each(function () {
				var $this = $(this);
				$this.css('padding-left', tabPadding);
				$this.css('padding-right', tabPadding);
			});
		});
	}

	// functions on load
	window.setTimeout(function () {
		tabsHeader();
		sidebarResize();
	}, 1000);

	var timer = window.setTimeout(function () {}, 0);

	// functions on resize
	$(window).resize(function () {
		tabsHeader();
		window.clearTimeout(timer);
		timer = window.setTimeout(function () {
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

	// event that puts the active tab and shows the active panel (desktop)
	$('.tabs .tab').on('click', function () {
		var $this = $(this),
			$thisTab = $this.parents('.ucg_tab'),
			target = $this.data('tabpanel');

		// update active tabs
		$thisTab.find('.tabs .tab').removeClass('active');
		$this.addClass('active');

		// update active chosen-select
		$thisTab.find('.chosen-select').val(target).trigger('chosen:updated');

		// show the current tab
		$thisTab.find('.tabsBody .tabPanel').removeClass('selected');
		$thisTab.find('.tabsBody .' + target).addClass('selected');

		setTimeout(function () {
			$('.ucg_video img').each(function () {
				var $this = $(this),
					imageHeight = $this.height(),
					imageWidth = $this.width();
					
				$this.siblings('.ucg_videoplayer_starter').width(imageWidth).height(imageHeight);
			});
			sidebarResize();
		}, 400);
	});

	// skin for the select in Worldwide area
	$('.chosen-select').chosen({
		allow_single_deselect: true,
		disable_search: true,
		width: '100%'
	}).change(function () {
		var $txt = $('.chosen-container-single .chosen-single-with-deselect span');
		if ($txt.text().indexOf('(') > -1) {
			$txt.text($txt.text().substring(0, $txt.text().indexOf('(')));
		}

		// show the active panel (mobile)
		var $thisTab = $(this).parents('.ucg_tab'),
			optionSelected = $thisTab.find('.chosen-select option:selected'),
			target = optionSelected.val(),
			activeTab = optionSelected.data('value');

		// update active chosen-select
		$thisTab.find('.tabsBody .tabPanel').removeClass('selected');
		$thisTab.find('.tabsBody .' + target).addClass('selected');

		// update active tabs
		$thisTab.find('.tabs .tab').removeClass('active');
		$thisTab.find('[data-tabpanel="' + activeTab + '"]').addClass('active');
		sidebarResize();
	});

	// event that puts a placeholder when the dropdown menu is open (mobile)
	$('.chosen-container .chosen-single').on('click', function () {
		$(this).find('span').text($('.dropdown select').data('placeholder'));
	});
});