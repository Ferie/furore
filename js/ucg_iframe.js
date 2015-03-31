$(document).ready(function () {
	$('.ucg_iframe_container[data-src]').each(function(i, e){
		$(this).append('<iframe src="'+$(this).data("src")+'" height="'+$(this).data("ucg-height")+'" width="'+$(this).data("ucg-width")+'" frameborder="0"></iframe>');
	});
});