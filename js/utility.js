//detect bootstrap breakpoint
function isBreakpoint(alias) {
	// Innietto nel contenitore i div che servono per fare il check
	if ($(".device-xs.visible-xs").length == 0) {
		$("body").append($("<div class=\"device-xs visible-xs\"></div>"))
				.append($("<div class=\"device-sm visible-sm\"></div>"))
				.append($("<div class=\"device-md visible-md\"></div>"))
				.append($("<div class=\"device-lg visible-lg\"></div>"));
	}
	return $('.device-' + alias).is(':visible');
}