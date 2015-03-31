$(document).ready(function() {
	$('.ucg_breadcrumb_sharing .icon a, .ucg_breadcrumb_sharing_panel .closer a').click(function(){
		$('.ucg_breadcrumb_sharing .icon').toggleClass('collapsed');
		$('.ucg_breadcrumb_sharing_panel.collapse').toggle();
	});

	$('.collapse').on('shown.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainers();
	});
	$('.collapse').on('hidden.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainers();
	});
});