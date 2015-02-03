$(document).ready(function() {
	$('.video iframe').css("display","none").css("height", "0");
	$(".video a").click(function(){
		$(this).parent().find('iframe').attr("src", $(this).data("video"));
		$(this).parent().find('a, img').fadeOut("slow", function(){
			$(this).parent().find('iframe').css("height", "auto").fadeIn();			
		});
		//$(this).parent().find('a').fadeOut();
		//$(this).parent().find('img').fadeOut();
	});
});