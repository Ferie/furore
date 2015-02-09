$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	}

	// functin that puts custom padding on resize for every tabs
	function tabsHeader() {
		var partialWidth = 0,
			tabsNumber = 0,
			totalPadding = 0,
			tabPadding = 0;

		$('.tabs .tab').each(function () {
			var $this = $(this);
			partialWidth = $this.width() + partialWidth;
			tabsNumber++;
		});

		// border inclusion in partialWidth to adjust the totalPadding
		// tabsNumber + 1 is the number of the borders (the number 2 is another unit added that works for some even resolutions)
		partialWidth = partialWidth + tabsNumber + 2;

		totalPadding = $('.tabs .container').outerWidth() - partialWidth;
		tabPadding = Math.abs((totalPadding / tabsNumber) / 2);

		$('.tabs .tab').each(function () {
			var $this = $(this);
			$this.css('padding-left', tabPadding);
			$this.css('padding-right', tabPadding);
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
		var $this = $(this);
		var $thisTabComponent = $this.parents('.ucg_tab');
		$thisTabComponent.find('.tabs .tab').removeClass('active');
		$this.addClass('active');

		var target = $this.data('tabpanel');
		$thisTabComponent.find('.tabsBody .tabPanel').removeClass('selected');
		$('#' + target).addClass('selected');

		setTimeout(function () {
			sidebarResize();
		}, 400);
	});

	// skin for the select in Worldwide area
	$(".chosen-select").chosen({
		allow_single_deselect: true,
		disable_search: true,
		width: "100%"
	}).change(function () {
		var $txt = $('.chosen-container-single .chosen-single-with-deselect span');
		if ($txt.text().indexOf("(") > -1) {
			$txt.text($txt.text().substring(0, $txt.text().indexOf("(")));
		}
	});

	// event that puts a placeholder when the dropdown menu is open (mobile)
	$('.chosen-container .chosen-single').on('click', function () {
		$(this).find('span').text($('.dropdown select').data('placeholder'));
	});

	// ...and event that shows the active panel (mobile)
	$('.chosen-container .chosen-drop ul').on('click', function () {
		var target = $('.chosen-select option:selected').val();

		$('.tabsBody .tabPanel').removeClass('selected');
		$('#' + target).addClass('selected');
		sidebarResize();
	});
});