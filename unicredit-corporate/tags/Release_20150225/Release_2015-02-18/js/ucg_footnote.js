$(document).ready(function () {

	$('.ucg_to_top').click(function(){
		$('html, body').animate({
			scrollTop: $($(this).data("target")).offset().top
		}, 800);		
	});

});