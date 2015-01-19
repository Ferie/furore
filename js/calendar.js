$(document).ready(function() {
	$('#calendarTools .input-daterange').datepicker();
	$('#calendarPanelResults .event .footer .attach').click(function(){
		$(this).toggleClass("collapsed");
		var swapText = $(this).text();
		if ($(this).data('memotext')==""){
			$(this).data('memotext', "Hide attachments");
		}
		$(this).text($(this).data('memotext'));
		$(this).data('memotext', swapText);
		//$(this).prop("data-memotext", swapText);
		//$(this).attr("data-memotext", swapText);
	});
	$('.collapse').on('shown.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});
	
	$('.collapse').on('hidden.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});
});