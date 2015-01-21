$(document).ready(function() {
	$('#worldwideTools .input-daterange').datepicker();
	$('#worldwidePanelResults .event .footer .attach').click(function(){
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
	
	$('.cerchio').on('click', function(){
		var $this = $(this);
		if ($this.hasClass('europe')) {
			$('html, body').animate({
				scrollTop: $("#europe").offset().top
			}, 1000);
		}
		if ($this.hasClass('asia')) {
			$('html, body').animate({
				scrollTop: $("#asia").offset().top
			}, 1000);
		}
		if ($this.hasClass('africa')) {
			$('html, body').animate({
				scrollTop: $("#africa").offset().top
			}, 1000);
		}
		if ($this.hasClass('americas')) {
			$('html, body').animate({
				scrollTop: $("#america").offset().top
			}, 1000);
		}
	});
});