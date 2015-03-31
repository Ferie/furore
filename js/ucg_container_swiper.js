$(document).ready(function() {
	var swipersContainer = Array();
	function getSwiperByName(name){
		var result = $.grep(swipersContainer, function(element){
			return element.name==name;
		});
		return result.length>0?result[0]:null;
	}
	function getHeightContent(container){
		var sum = 0;		
		var insertSizes = $.Deferred(function(d){
			$(container).find("img[data-ucg-height]").each(function(index, element){
				var w = $(element).data('ucg-width');
				var h = $(element).data('ucg-height');
				$(element).data("oldStyle", $(element).attr("style"));
				$(element).data("oldHeight", $(element).attr("height"));
				$(element).data("oldWidth", $(element).attr("width"));
				$(element).css({width: w+"px", height: h+"px", display: "block"});
				$(element).attr("height", h).attr("width", w);
			});			
			d.resolve();
		});
		$.when(insertSizes).done(function(){
			$(container).children().each(function(){
				sum+=$(this).outerHeight(true);
				});
			$(container).find("img[data-ucg-height]").each(function(index, element){
				if(typeof $(element).data("oldStyle")!= "undefined"){
					$(element).attr("style", $(element).data("oldStyle"));
				} else {
					$(element).removeAttr("style");
				}
				if(typeof $(element).data("oldHeight")!= "undefined"){
					$(element).attr("height", $(element).data("oldHeight"));					
				} else {
					$(element).removeAttr("height");					
				}
				if(typeof $(element).data("oldWidth")!= "undefined"){
					$(element).attr("width", $(element).data("oldWidth"));					
				} else {
					$(element).removeAttr("width");					
				}
				});
			});
		return sum;
	}
	function getMaxHeightContent(containers){
		var result = 0;
		$(containers).each(function(i, e){
			var swapHeight = getHeightContent(e);
			if (swapHeight>result)
				result = swapHeight;
		});
		return result;		
	}
	function setSwiperHeight(swiper){
		var height = getMaxHeightContent($(swiper).find(".swiper-slide"));
		$(swiper).css("height", height);		
	}
	function buildSwiper(name){
		var swiperElement = $('.ucg_container_swiper[data-name="'+name+'"] .swiper-container')
		setSwiperHeight(swiperElement);
		//console.log("Now Building: "+name);
		swipersContainer.push({name: name, swiper:$(swiperElement).swiper({
		    mode:'horizontal',
		    loop: true,
		    autoplay: 0,
		    slidesPerView: 1,
		    createPagination: true,
		    pagination: '.ucg_container_swiper[data-name="'+name+'"] .swiper_pagination',
		    paginationClickable: true,
			autoResize: true,
			resizeReInit: true
		  })
		});
		//console.log("Array: "+swipersContainer.length);
	}
	function destroySwiper(name){
		var content = getSwiperByName(name);
		//console.log("Now Destroyng: "+name);
		if (content!=null) {
			content.swiper.destroy();
			swipersContainer.splice(swipersContainer.indexOf(content), 1);
			//console.log("Array: "+swipersContainer.length);
			$('.ucg_container_swiper[data-name="'+name+'"] .swiper-container .swiper-slide.swiper-slide-duplicate').remove();
			$('.ucg_container_swiper[data-name="'+name+'"] .ucg_container_swiper_pagination .swiper_pagination').html("");
			$('.ucg_container_swiper[data-name="'+name+'"] .swiper-container, .ucg_container_swiper[data-name="'+name+'"] .swiper-container .swiper-wrapper , .ucg_container_swiper[data-name="'+name+'"] .swiper-container .swiper-slide').removeAttr("style");
		}
	}
	function rebuildSwiper(name){
		destroySwiper(name);
		buildSwiper(name);
	}
	//console.log("BUILD!");
	$('.ucg_container_swiper'+(isBreakpoint("xs")?"":".swiper")+'[data-name]').each(function(i, e){		
		//console.log("Start building: "+$(e).data("name"));
		buildSwiper($(e).data("name"));
	});
	var resizeTimer;
	resizeTimer = setTimeout(function(){
		headerUBISManager.utils._setHeightContainers();		
	}, 300);
	function startResize(){
		clearTimeout(resizeTimer);
		resizeTimer = setTimeout(function(){
			//console.log("gone resizing!");
			var isXs = isBreakpoint("xs");
			$('.ucg_container_swiper'+(isXs?"":".swiper")+'[data-name]').each(function(i, e){
				rebuildSwiper($(e).data("name"));				
			});
			if(!isXs) {
				$('.ucg_container_swiper:not(.swiper)[data-name]').each(function(i, e){
					destroySwiper($(e).data("name"));				
				});				
			}
			headerUBISManager.utils._setHeightContainers();			
		}, 300);		
	}
	$(window).resize(function(){
		//console.log("window resizing!");
		startResize();
	});
	$("#mainContainer").on("animationSidebarCompleted", function(){
		//console.log("sidebar opened!");
		startResize();
	});
});