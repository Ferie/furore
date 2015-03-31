$(document).ready(function() {
	var btnMore = "<div class='textmore'><a class='more' href='javascript:void(0);'>more</a></div>";
	var btnLess = "<div class='textmore'><a class='less' href='javascript:void(0);'>less</a></div>";
	var getAbbr = function(string, words){
		var shorttext = "";
		var wordsArr = string.split(" ");
		if (wordsArr.length>20){
			$.each(wordsArr, function(i, e){
				if(i<=words){
					shorttext+=e+" ";
				}
			});	
			return shorttext+"... ";		
		} else {
			return string;
		}			
	};
	var refreshTextLink = function(element){
		$(element).find("a").each(function(i,e){
			if($(e).hasClass("less")){
				$(e).off("click");
				$(e).click(function(){
					$(element).text($(element).data("shorttexttopic"));
					$(e).remove();
					$(element).append(btnMore);
					refreshTextLink(element);
				});
			} else if($(e).hasClass("more")){
				$(e).off("click");
				$(e).click(function(){
					$(element).text($(element).data("fulltexttopic"));
					$(e).remove();
					$(element).append(btnLess);
					refreshTextLink(element);
				});
			}
		});
	};
	$("#smForm.step1 .ucg_form .shareholder_type .ucg_radio_button input").on('ifChecked', function () {
		var type = $(this).val();			
		$(".shareholder_type_form:not(#"+type+")").fadeOut();
		$("#"+type).fadeIn();
	});
	$('#smForm.step2 .ucg_topic .text').each(function(i,e){
		var note = $(e).text();
		var size = typeof $(e).data("max-text-size")!="undefined"?$(e).data("max-text-size"):20;
		if(note.length>size){
			var short = getAbbr(note, size);
			$(e).data("fulltexttopic", note);
			$(e).data("shorttexttopic", short);
			$(e).text(short);
			$(e).append(btnMore);
			refreshTextLink(e);
		}
	});
	$('#smForm.step2 .ucg_topic .ucg_topic_questions .ucg_button button').click(function(){
		var $grandpa = $(this).parents(".ucg_topic_questions");
		var $form = $grandpa.find(".ucg_form");
		$grandpa.find(".ucg_button").fadeOut();
		$form.find("textarea").addClass("required");
		$form.fadeIn();
	});
	$('#smForm.step2 .ucg_topic .ucg_topic_questions .ucg_form .ucg_topic_question_action a').click(function(){
		var $grandpa = $(this).parents(".ucg_topic_questions");	
		var $form = $grandpa.find(".ucg_form");
		$form.find(".ucg_formCounter span").text("1000");
		$form.find('.ucg_formTextarea').val("");
		$form.find("textarea").removeClass("required");
		$form.fadeOut();
		$grandpa.find(".ucg_button").fadeIn();
	});
});