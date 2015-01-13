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
			$('#sidebar .sidebar-element .collapse.in').collapse('hide');
			break;
		case "toggle":
			if ($('#header .sidebar-switch a').hasClass("opened")){
				$('#sidebar').animate({"width": '-=200'});
				$('#sidebar .sidebar-element .collapse.in').collapse('hide');				
			} else {
				$('#sidebar').animate({"width": '+=200'});
			}
			$('#header .sidebar-switch a').toggleClass("opened");
			$('#sidebar').toggleClass("opened");
			break;
	}
}

$(document).ready(function() {

    var timer;
    
	$('#header .sidebar-switch a').click(function(){toggleSidebar("toggle");});
	$('#sidebar .sidebar-collapser').hover(function(){
			var element = $(this).parent();
			var panel = $(this).find('.collapse');
			if($('#sidebar').hasClass('opened')) {
				timer = setTimeout(function(){
					$('#sidebar .sidebar-element.active').removeClass('active');		
					$('#sidebar .collapse.in').collapse('hide');
					element.addClass('active');
					panel.collapse('show');				
				}, 500);
			}
		}, function(){
			clearTimeout(timer);
			$('#sidebar .sidebar-element.active').removeClass('active');		
			$('#sidebar .collapse.in').collapse('hide');
			//element.removeClass('active');
			//panel.collapse('hide');
		});
});