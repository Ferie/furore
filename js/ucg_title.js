function calculateTitleWidth() {
	$('.ucg_title:not(.ucg_no_image) .container, .ucg_title.underlined:not(.ucg_no_image) .container').each(function () {
		if (!isBreakpoint("xs")) {
			$(this).find('.ucg_cols_text').width($(this).width() - 1 - $(this).find('.ucg_cols_image').width());
		} else {
			$(this).find('.ucg_cols_text').removeAttr("style")
		}
	});
}
jQuery(document).ready(function () {
	$.browserDetect.init();
	var startUpDelay = ($.browserDetect.browser == 'Explorer' && $.browserDetect.version <= 9) ? 1000 : 100;
	var resizeTimer = setTimeout(calculateTitleWidth, startUpDelay);
	$(window).resize(function () {
		clearTimeout(resizeTimer);
		resizeTimer = setTimeout(calculateTitleWidth, 200);
	});
});