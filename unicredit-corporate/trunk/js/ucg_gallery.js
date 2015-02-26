
// Shorthand for $( document ).ready()
$(function() {
	
	
	//function setContentSize(){$('.swiper-content').css({height:$(window).height()-$('.swiper-nav').height()})}
	//setContentSize()
	$(window).resize(function(){contentSwiper.resizeFix();});
	
	var contentSwiper=$('.swiper-content').swiper({
		calculateHeight:true,
		onSlideChangeStart:function(){
			updateNavPosition();
		}
	});
	
	$('.arrow-left').on('click', function(e){
	    e.preventDefault();
	    contentSwiper.swipePrev();
	});
    $('.arrow-right').on('click', function(e){
	    e.preventDefault();
	    contentSwiper.swipeNext();
    });
	
    var navSwiper=$('.swiper-nav').swiper({
    	visibilityFullFit:true,
		slidesPerView:'auto',
		onSlideClick:function(){
			contentSwiper.swipeTo(navSwiper.clickedSlideIndex);
		},
		onSlideChangeEnd:function(){
			var thumbsPerNav=Math.floor(navSwiper.width/activeNav.width())-1;
			console.log((activeNav.index()-thumbsPerNav)+ " - " + (activeNav.index()+thumbsPerNav));
			
			if((activeNav.index()-thumbsPerNav)<=0){
				$cont.find('.swiper-nav .arrow-left').css("display","none");
			}else{
				$cont.find('.swiper-nav .arrow-left').css("display","block");
			}
			
			if((activeNav.index()+thumbsPerNav)>=(swiper.slides.length-1)){
				$cont.find('.swiper-nav .arrow-right').css("display","none");
			}else{
				$cont.find('.swiper-nav .arrow-right').css("display","block");
			}
		}
    });
    
	function updateNavPosition(){
    	$('.swiper-nav .active-nav').removeClass('active-nav');
    	var activeNav=$('.swiper-nav .swiper-slide').eq(contentSwiper.activeIndex).addClass('active-nav');
		if(!activeNav.hasClass('swiper-slide-visible')){
			if(activeNav.index()>navSwiper.activeIndex){
				var thumbsPerNav=Math.floor(navSwiper.width/activeNav.width())-1;
			}
		}
		navSwiper.swipeTo(activeNav.index()-thumbsPerNav);
		
		
	}
	
	
});