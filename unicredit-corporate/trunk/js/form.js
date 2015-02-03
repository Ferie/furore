$(document).ready(function () {
	$('.checkbox input[type="checkbox"], .radio input[type="radio"]').iCheck({
		checkboxClass: 'icheckbox',
		radioClass: 'iradio',
		aria: true,
		labelHover: false,
		cursor: true,
		increaseArea: '20%'
	});
});