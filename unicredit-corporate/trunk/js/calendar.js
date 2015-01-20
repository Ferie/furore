var activeStart= [];
function activationDelayed(){
	$('.daterangepicker .calendar .month.available.myactive').removeClass("myactive");
	$.each(activeStart, function(i, v){
		$('.daterangepicker .calendar .month.available[data-title="'+v+'"]').addClass("myactive");
		//console.log('.daterangepicker .calendar .month.available[data-title="'+v+'"]');
	});
}
function manageClick(calendar, element) {
	//console.log(calendar);
	switch(calendar){
	case "left":
		activeStart[0]=$(element).data("title");		
		$(".daterangepicker .calendar.left").hide();
		$(".daterangepicker .calendar.right").show();
		break;
	case "right":
		activeStart[1]=$(element).data("title");
		break;
	}
}
$(document).ready(function() {
	
	$('#calendarTools .input-daterange').daterangepicker({
		minViewMode: "month",
	    format: "MMM/YY",
	    opens: "center",
	    autoApplyClickedRange: true
		},
	    function(start, end) {
	        $('#calendarTools .input-daterange div').html("<span>From </span>"+start.format('MMM/YY') + '<span> to </span>' + end.format('MMM/YY'));
	    });
	$('#calendarTools .input-daterange').click(function(){
		$(".daterangepicker .calendar.left").show();
		$(".daterangepicker .ranges").hide();
		$(".daterangepicker .calendar.right").hide();
		
	});
	$('#calendarTools .input-daterange').on('show.daterangepicker', function(ev, picker) {
		$(".daterangepicker .calendar.left .month.available").click(function(){manageClick("left", this);});
		$(".daterangepicker .calendar.right .month.available").click(function(){manageClick("left", this);});
	});
	$('#calendarTools .input-daterange').on('calendarUpdated.daterangepicker', function(){
		$(".daterangepicker .calendar.left .month.available").click(function(){manageClick("left", this);});
		$(".daterangepicker .calendar.right .month.available").click(function(){manageClick("right", this);});
		activationDelayed();
	});
	
	$("#calendarTools .chosen-select").chosen({
			allow_single_deselect: true,
			disable_search: true}).change(function(){
		var $txt = $('#calendarTools .chosen-container-single .chosen-single-with-deselect span');
		if($txt.text().indexOf("(")>-1) {
			console.log($txt.text()+" - LEN: "+$txt.text().length+" - POS: "+$txt.text().indexOf("("));
			$txt.text($txt.text().substring(0, $txt.text().indexOf("(")));
			console.log($txt.text());
		}
	});
	
	$('#calendarPanelResults .event .footer .attach').click(function(){
		$(this).toggleClass("collapsed");
		var swapText = $(this).text();
		if ($(this).data('memotext')==""){
			$(this).data('memotext', "Hide attachments");
		}
		$(this).text($(this).data('memotext'));
		$(this).data('memotext', swapText);
	});
	
	$('.collapse').on('shown.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});
	$('.collapse').on('hidden.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});
});