$(document).ready(function() {
	function toggleCollapse(){
		if(!isBreakpoint('xs')) {
			$('#accordion .countries').removeClass('collapse');
			$('#accordion .countries').removeClass('in');
		} else {
			$('#accordion .countries').addClass('collapse');
		}
	}

	toggleCollapse();
	
	$(window).resize(function() {
		toggleCollapse();
	});

	$('.collapse').on('shown.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});
	
	$('.collapse').on('hidden.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});
	
	$('.cerchio').on('click', function() {
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
				scrollTop: $("#americas").offset().top
			}, 1000);
		}
	});

	$('.worldwideCountries').on('click', function() {
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
});