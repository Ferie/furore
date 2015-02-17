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
	    	$(".ucg_ads_content .ucg_ads_text").removeClass("white").removeClass("dark");
	    	$(".ucg_ads_content .ucg_ads_text").addClass($(swiper.slides[swiper.activeIndex]).data("color"));
	    	$(".ucg_ads_content .ucg_ads_text h3").text($(swiper.slides[swiper.activeIndex]).data("title"));
	    	$(".ucg_ads_content .ucg_ads_text h4").text($(swiper.slides[swiper.activeIndex]).data("subtitle"));
	    	
	    	$(".ucg_ads_content .ucg_ads_text a").text($(swiper.slides[swiper.activeIndex]).data("linklabel")).removeAttr("class").attr("href", $(swiper.slides[swiper.activeIndex]).data("url")).attr("target", $(swiper.slides[swiper.activeIndex]).data("target")).addClass($(swiper.slides[swiper.activeIndex]).data("link"));
	    }	
	  });
  $('#mainContainer').on("animationSidebarCompleted", function(){
	  ucgAds.resizeFix(true);
  });
});