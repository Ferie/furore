$(document).ready(function () {
	function sidebarResize() {
		headerUBISManager.utils._setHeightContainers();
	}

	// skin for input tags
	if ($('.ucg_checkbox input[type="checkbox"], .ucg_radio input[type="radio"]').length > 0) {
		$('.ucg_checkbox input[type="checkbox"], .ucg_radio input[type="radio"]').iCheck({
			checkboxClass: 'icheckbox_ubis',
			radioClass: 'iradio_ubis',
			aria: true,
			labelHover: false,
			cursor: true,
			increaseArea: '20%'
		});
	}

	// skin for dropdowns
	if ($('.chosen-select:not(.chosen-select-ubis-search)').length > 0) {
		$('.chosen-select:not(.chosen-select-ubis-search)').chosen({
			allow_single_deselect: false,
			inherit_select_classes: true,
			disable_search: true,
			width: '100%'
		}).on('change', function () {
			var $txt = $('.chosen-container-single .chosen-single-with-deselect span');
			if ($txt.text().indexOf('(') > -1) {
				$txt.text($txt.text().substring(0, $txt.text().indexOf('(')));
			}
			$('.ucg_formIntro').hide();
			if ($('.subTopicName').length > 0 && $('.subTopicName').parent().hasClass('hidden')) {
				$('.subTopicName').parent().addClass('visible').removeClass('hidden');
			} else {
				$('.hidden').addClass('visible').removeClass('hidden');
			}
			sidebarResize();
		});
	}

	// Special with search
	if ($('.chosen-select.chosen-select-ubis-search').length > 0) {
		$('.chosen-select.chosen-select-ubis-search').chosen({
			allow_single_deselect: false,
			search_threshold: 3,
			inherit_select_classes: true,
			disable_search: false,
			width: '100%'
		}).on('change', function () {
			var $txt = $('.chosen-container-single .chosen-single-with-deselect span');
			if ($txt.text().indexOf('(') > -1) {
				$txt.text($txt.text().substring(0, $txt.text().indexOf('(')));
			}
		});
	}

	// counter for textareas
	if ($('textarea').length > 0 && $('.ucg_formCounter').length > 0) {
		$('textarea.ucg_formTextarea').on('keyup', function () {
			var maxChar = 1000,
				currentTextLength = $(this).val().length;

			if (currentTextLength <= maxChar) {
				$('.remaining_characters').text(maxChar - currentTextLength);
			}
		});
	}

	// radio button manager for label color and remove error class on checked
	$('.ucg_radio_button input').on('ifChecked', function () {
		var $thisRadioContainer = $(this).parents('.ucg_radio');
		$thisRadioContainer.find('.ucg_error').removeClass('ucg_error').popover('hide');
		$thisRadioContainer.find('.ucg_radio_button').removeClass('checked');
		$(this).parents('.ucg_radio_button').addClass('checked');
	});

	// demo errors on page load - popover initialization
//	$('.ucg_error[data-toggle="popover"]').popover({
//		'placement': 'bottom'
//	}).popover('show');
//	$('.alert').show();

	// demo errors on submit
	$('form').on('submit', function (e) {
		var errors = 0;
		e.preventDefault();
		e.stopPropagation();
		$('input, textarea, select').each(function () {
			if ($(this).hasClass('required') && $(this).val() == '') {
				if ($(this).hasClass('chosen-select-ubis-search')) {
					$('.countries .chosen-container .chosen-single').addClass('ucg_error');
				}
				$(this).addClass('ucg_error');
				errors += 1;
			}
			if ($(this).hasClass('required') && $(this).hasClass('iradio_ubis') && $(this).parents('.ucg_radio').find('.checked').length == 0) {
				$(this).addClass('ucg_error');
				$(this).parent().addClass('ucg_error').parent().addClass('ucg_error');
				errors += 1;
			}
		});
		if ($('textarea').hasClass('ucg_error')) {
			$('.ucg_formCounter').addClass('ucg_error');
		}
		// display alert
		$('.alert').show().find('.ucg_error_num').text(errors);
		// popover initialization
		$('.ucg_error[data-toggle="popover"]').popover({
			'placement': 'bottom'
		}).popover('show');
	});

	// demo errors on input focus
	$('input, textarea').on('focus', function () {
		if ($(this).hasClass('ucg_error')) {
			$(this).popover('hide').removeClass('ucg_error');
			if ($(this).hasClass('iradio_ubis')) {
				$(this).popover('hide').removeClass('ucg_error');
				$(this).parents('.ucg_radio').find('.ucg_radio_button').removeClass('ucg_error');
			}
			if ($(this).hasClass('ucg_formTextarea')) {
				$('.ucg_formCounter').popover('hide').removeClass('ucg_error');
			}
		}
	});

	// demo errors on select click
	$('.chosen-container .chosen-single').on('click', function () {
		if ($(this).hasClass('chosen-single')) {
			$(this).removeClass('ucg_error');
			$('.countries select').popover('hide').removeClass('ucg_error');
		}
	});

	// MASKED INPUT PER DATA
	// Data manuale
	// Non abilitata su android
	if ($("input.ucg_datemask").length > 0) {
		$.browserDetect.init();
		//console.log($.browserDetect);
		//alert($.browserDetect.system+" - "+$.browserDetect.browser + " (v."+$.browserDetect.version+")");

		if ($.browserDetect.system != "Android") {
			$("input.ucg_datemask")
					.mask("99/99/9999");
		} else {

			// Workaround Inserisce lo slash per inserimento data
			// $("input[type='text'].ucg_datemask").on('click',
			// function(){
			// $("input[type='text'].ucg_datemask").val("__/__/____");
			// });

			$("input.ucg_datemask").keyup(function (e) {
				if (e.keyCode != 193
						&& e.keyCode != 111) {
					console.log(e.keyCode);
					if (e.keyCode != 8) {
						if ($(this).val().length == 2) {
							$(this).val(
									$(this).val()
									+ "/");
						} else if ($(this).val().length == 5) {
							$(this).val(
									$(this).val()
									+ "/");
						}
					} else {
						var temp = $(this).val();
						if ($(this).val().length == 5) {
							$(this).val(
									temp.substring(
											0, 4));
						} else if ($(this).val().length == 2) {
							$(this).val(
									temp.substring(
											0, 1));
						}
					}
				} else {
					var temp = $(this).val();
					var tam = $(this).val().length;
					$(this).val(
							temp.substring(0,
									tam - 1));
				}
			});
		}
	}
});