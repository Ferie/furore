var swipersCalendar = Array();
//var swipersSelector = Array();
var swipeTemplate = doT.template(
		"<div class='swiper-slide parsys_column three-columns-box-c0 {{=it.type}} {{=it.category}}'>" +
			"<div class='panel ucg_text'>" +
				"<div class='container'>" +
					"<div class='ucg_text_container'>" +
						"<p>" +
							"<span class='ucg_date'><b>{{=it.date}}</b></span>" +
							"<span class='ucg_introTitle'><a href='{{=it.url}}' class='ucg_titleLink'>{{=it.title}}</a></span>" +
						"</p>" +
						"<div class='panel ucg_linklist'>" +
							"<div class='container'>" +
								"<ul class='ucg_link_container'>" +
									"<li class='ucg_link'>" +
										"<a href='{{=it.url}}'>Read more</a><a class='ucg_save_link'>Save</a>" +
									"</li>" +
								"</ul>" +
							"</div>" +
						"</div>" +
					"</div>" +
				"</div>" +
			"</div>" +
		"</div>");

function filterType(element, type){
	if (type!="event" && type!=""){
		return type==element.type;
	} else {
		return true;
	}
}

function filterCategory(element, category){
	if (category!=""){
		return category==element.category;
	} else {
		return true;
	}
}

function getSlideNum(){
	return isBreakpoint("xs") ? 1 : isBreakpoint("sm") ? 2 : 3;
	//return 3;
}

function getSwiperByName(name){
	var result = $.grep(swipersCalendar, function(element){
		return element.name==name;
	});
	return typeof result[0].name!="undefined"?result[0].swiper:null;
}

function getEventsData(swiperContainer) {
	$.ajax({
		type: 'GET',
		url: '../data/events.json',
		dataType: "json",
		success: function(data, textStatus, jqXHR){
			var $name = $(swiperContainer).data('name');
			var type = $(swiperContainer).data('type');
			var category = $(swiperContainer).data('category');
			var dataFiltered = $.grep(data, function(element){
					return filterType(element, type) && filterCategory(element, category);
				});
			var $wrapper = $(swiperContainer).find('.swiper-wrapper');
			for (var i = 0; i < dataFiltered.length; i++) {
				$wrapper.append(swipeTemplate(dataFiltered[i]));
			}
			//swipersSelector.push('.ucg_calendar_tool .swiper-container[data-name="'+$(swiperContainer).data('name')+'"]');
			//swipersCalendar.push($(swiperContainer).swiper({
			swipersCalendar.push({name: $name, swiper: $(swiperContainer).swiper({
			    mode:'horizontal',
			    loop: false,
			    autoplay: 5000,
			    slidesPerView: getSlideNum(),
			    createPagination: false,
				autoResize: true,
				resizeReInit: true
				//});
			  })});
		},
		error: function (jqXHR, textStatus, errorThrown){
			alert(textStatus+"\r\nStatus: "+jqXHR.status+"\r\nError: "+errorThrown);
		}
	});
}


$(document).ready(function() {
	$('.ucg_calendar_tool .swiper-container').each(function(){
		getEventsData($(this));
	});

	$('#mainContainer').on("animationSidebarCompleted", function(){
		$.each(swipersCalendar, function(key, value){ value.swiper.resizeFix(true); });
	});

	$('.ucg_calendar_tool .ucg_calendar_tool_arrows a').click(function(){
		var $swiper = getSwiperByName($(this).data("target"));
		$(this).hasClass('prev') ? $swiper.swipePrev() : $swiper.swipeNext();;
	});
	$('.ucg_calendar_tool_controller .iradio_ubis').on('ifChecked', function(){
		$('.ucg_calendar_tool_controller .ucg_radio').removeClass("checked");
		$(this).parent().addClass("checked");
		var name = $(this).data("swiper");
		var $container = $('.ucg_calendar_tool .swiper-container[data-name="'+name+'"]');
		var $swiper = getSwiperByName(name);
		$swiper.destroy();
		$container.html('<div class="swiper-wrapper"></div>');
		//$container.swiper.destroy();
		swipersCalendar = swipersCalendar.filter(function(el){ return el.name!=name; });
		//swipersSelector.pop(getObjectByName(name));
		$container.data("type", $(this).val()).attr("data-type", $(this).val());
		getEventsData($container);
	});
	$(window).resize(function(){
		$.each(swipersCalendar, function(key, value){
			var slideNum = getSlideNum();
			if(value.swiper.params.slidesPerView!=slideNum){
				value.swiper.params.slidesPerView = slideNum;
				value.swiper.reInit();
			}
			//value.swiper.resizeFix(true);
		});
	});
});