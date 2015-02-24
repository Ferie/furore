var headerUBISManager;
$(document).ready(function() {
	$('#mainContainer').on('calculationHeightCompleted', function(){
		$('#mainContainer img').removeAttr("style");
	});
	headerUBISManager = $("body").headerUBISManager();
});