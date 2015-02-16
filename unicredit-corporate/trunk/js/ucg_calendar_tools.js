var ucgEvents;
var swipeTemplate = doT.template(
		"<div class='swiper-slide parsys_column three-columns-box-c0'>" +
			"<div class='panel ucg_text'>" +
				"<div class='container'>" +
					"<div class='ucg_text_container'>" +
						"<p>" +
							"<span class='ucg_date'><span class='ucg_bold'>{{=it.date}}</span></span>" +
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

function getEventsData() {
	$.ajax({
		type: 'GET',
		url: 'data/events.json',
		dataType: "json",
		success: function(data, textStatus, jqXHR){
			for (var i = 0; i < data.length; i++) {
				//ucgEvents.appendSlide(swipeTemplate(data[i]));
				$('.ucg_calendar_tool .swiper-container .swiper-wrapper').append(swipeTemplate(data[i]));
				console.log(swipeTemplate(data[i]));

				  ucgEvents = $('.ucg_calendar_tool .swiper-container').swiper({
					    mode:'horizontal',
					    loop: false,
					    autoplay: 5000,
					    slidesPerView: 3,
					    createPagination: false,
						autoResize: true,
						resizeReInit: true
					  });
			}
			//ucgEvents.update();
			//ucgEvents.startAutoplay();
		},
		error: function (jqXHR, textStatus, errorThrown){
			alert(textStatus+"\r\nStatus: "+jqXHR.status+"\r\nError: "+errorThrown);
		}
	});
}
$(document).ready(function() {
	
  getEventsData();
  $('#mainContainer').on("animationSidebarCompleted", function(){
	  ucgEvents.resizeFix(true);
  });
});