$(document).ready(function () {
	var setHeightSpacer = function (){
		var isMobile = isBreakpoint("xs");
		$(".ucg_spacer[data-ucg-height]").each(function(index, element){
			var h = isMobile==true?$(element).data('ucg-height-mobile'):$(element).data('ucg-height');
			$(element).css({height: h+"px"});
		});		
	}
	setHeightSpacer();

	$(window).resize(function(){
		setHeightSpacer();		
	});
});