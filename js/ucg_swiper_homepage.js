$(document).ready(function() {
	$(".ucg_swiper_hp_content .ucg_swiper_hp_text a.video").click(clickPlay);
  var ucgSwiper = $('.ucg_swiper_hp .swiper-container').swiper({
	    mode:'horizontal',
	    loop: true,
	    autoplay: 5000,
	    createPagination: true,
	    pagination: ".swiper_pagination",
	    paginationClickable: true,
		autoResize: true,
		resizeReInit: true,
	    onInit: function(swiper){
	    	$.each(swiper.slides, function(i, e){
	    		if(!$(e).hasClass("swiper-slide-duplicate")){
	    			var slideSwitch = $('.ucg_swiper_hp_pagination .swiper_pagination .swiper-pagination-switch').get($(e).find("img").data("order"));
	    			if (typeof slideSwitch != "undefined" && $(slideSwitch).html()=="") {
		    			$(slideSwitch).append('<img src="'+$(e).find("img").data("thumb")+'">');
		    		}
	    		}
	    	});
	    	$('.ucg_swiper_hp_pagination .swiper_pagination .swiper-pagination-switch img').click(function(){
	    		$(this).parent().trigger("click");
	    	});
	    }
	  });
  $('.ucg_swiper_hp_arrows .ucg_swiper_hp_arrow.ucg_swiper_hp_arrow_left a').click(function(){
	  ucgSwiper.swipePrev();
  });
  $('.ucg_swiper_hp_arrows .ucg_swiper_hp_arrow.ucg_swiper_hp_arrow_right a').click(function(){
	  ucgSwiper.swipeNext();
  });
  $('#mainContainer').on("animationSidebarCompleted", function(){
	  ucgSwiper.resizeFix(true);
  });
});