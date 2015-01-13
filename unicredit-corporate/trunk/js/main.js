function toggleSidebar(action){
	switch (action){
		case "open":
			$('#header .sidebar-switch a').addClass("opened");
			//$('#sidebar').addClass("opened");
			$('#sidebar').addClass("opened").animate({"width": '+=200'});
			break;
		case "close":
			$('#header .sidebar-switch a').removeClass("opened");
			//$('#sidebar').removeClass("opened");
			$('#sidebar').removeClass("opened").animate({"width": '-=200'});
			$('#sidebar .sidebar-element .collapse.in').slideUp().removeClass("in");
			//$('#sidebar .sidebar-element .collapse.in').collapse('hide');
			break;
		case "toggle":
			if ($('#header .sidebar-switch a').hasClass("opened")){
				$('#sidebar').animate({"width": '-=200'});
				$('#sidebar .sidebar-element .collapse.in').slideUp().removeClass("in");
				//$('#sidebar .sidebar-element .collapse.in').collapse('hide');				
			} else {
				$('#sidebar').animate({"width": '+=200'});
			}
			$('#header .sidebar-switch a').toggleClass("opened");
			$('#sidebar').toggleClass("opened");
			break;
	}
	setPositionContainer();
}
function setPositionContainer(){
	var top = $('#header').outerHeight(true)+$('#message:visible').outerHeight(true);
	var left = $('#sidebar').hasClass('opened') ? 280 : 80;
	var width =  $(window).outerWidth(true)-left;
	$('#mainContainer').css({top: top+"px"});
	$('#mainContainer').animate({left: left+"px"});
	$('#mainContainer').animate({width: width+"px"});
	//$('#mainContainer').css({width: width+"px"});
}
function setWidthContainer(){
	var left = $('#sidebar').hasClass('opened') ? 280 : 80;
	var width = $(window).outerWidth(true)-left;
	$('#mainContainer').css({width: width+"px"});
}

$(document).ready(function() {

    var timer;
    
	$('#header .sidebar-switch a').click(function(){toggleSidebar("toggle");});
	$('#sidebar .sidebar-element .sidebar-collapser').click(function () {
		if ($("#sidebar").hasClass("opened")){
			var elementClass = $(this).data('name');
			$('#sidebar .sidebar-element.active:not(.'+elementClass+')').removeClass("active");
			$('#sidebar .sidebar-element.'+elementClass).toggleClass("active");
			$('#sidebar .sidebar-element:not(.'+elementClass+') .collapse.in').slideUp().removeClass("in");
			var target = $($(this).data("target"));
			if (target.hasClass("in")) {
				target.slideUp().removeClass("in");
			} else {
				target.slideDown().addClass("in");
			}
		}
	});
	setWidthContainer();
});