$(document).ready(function() {
	$('#socialSingleShare .icon a, #socialSingleShare .closer a').click(function(){
		$('#socialSingleShare .icon').toggleClass('collapsed');
		$('#socialSingleShare .collapse > div').toggle();
	});
});