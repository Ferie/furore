function clickPlay(target){
	$('.ucg_videoplayer iframe').attr("src", $(this).data("video"));
	$('.ucg_videoplayer.modal').modal();
}

$(document).ready(function() {
	$("a.ucg_videoplayer_starter").click(clickPlay);

	$('.ucg_video img').on('load', function () {
		var $this = $(this),
			imageHeight = $this.height(),
			imageWidth = $this.width();
			
		$this.siblings('.ucg_videoplayer_starter').width(imageWidth).height(imageHeight);
	});

	$('.ucg_videoplayer').on('hide.bs.modal', function () {
		$('.ucg_videoplayer iframe').attr("src", '');
	});

	$(window).resize(function () {
		$('.ucg_video img').each(function () {
			var $this = $(this),
				imageHeight = $this.height(),
				imageWidth = $this.width();
				
			$this.siblings('.ucg_videoplayer_starter').width(imageWidth).height(imageHeight);
		});
	});
});