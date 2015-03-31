$(document).ready(function () {
	function mobilePlaceholder() {
		if (isBreakpoint("xs")) {
			$('.ucg_career .ucg_job_opportunities input').attr('placeholder', $('.ucg_career .ucg_job_opportunities input').data('mobile-placeholder'));
		} else {
			$('.ucg_career .ucg_job_opportunities input').attr('placeholder', $('.ucg_career .ucg_job_opportunities input').data('placeholder'));
		}
	}

	mobilePlaceholder()

	var timer;
	$(window).resize(function () {
		window.clearTimeout(timer);
		mobilePlaceholder();
	});
});