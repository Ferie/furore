$(document).ready(function() {
  var ucgAds = $('.ucg_ads .swiper-container').swiper({
	    mode:'horizontal',
	    loop: true,
	    autoplay: 5000,
	    createPagination: false,
		autoResize: true,
		resizeReInit: true,
	    onInit: function(swiper){
	    },
	    onSlideChangeStart: function(swiper){
	    }	
	  });
  $('#mainContainer').on("animationSidebarCompleted", function(){
	  ucgAds.resizeFix(true);
  });
});