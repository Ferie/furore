function clickPlay(target){
	$('.ucg_videoplayer iframe').attr("src", $(this).data("video"));
	$('.ucg_videoplayer.modal').modal();
}

$(document).ready(function() {
//	$("a.video").click(function(){
//		$(this).parent().find('iframe').attr("src", $(this).data("video"));
//		$(this).parent().find('.modal').modal();		
//	});
	$("a.ucg_videoplayer_starter").click(clickPlay);
});