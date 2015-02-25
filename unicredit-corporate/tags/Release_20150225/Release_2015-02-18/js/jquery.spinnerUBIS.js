/* PLUGIN for SPINNER */

(function($) {
	var methods = {
		init: function(options){
			var defaults = {
				topElementSelector: 'body',
				setElementsSelector: 'body',
				htmlMessage: '',
				textMessage: 'Loading ...',
				fontSize: '24px',
				autohide: true,
				modeInline: false,
				millisecondsTimer: 3000,
				color: '#000000',
				diameter: 40,
				density: 40,
				range: 1.3,
				fps: 24,
				shape: "UBIS",
				idSpinner: 'spinner-loader',
				containerClass: 'generalSpinner',
				position: { top: 0, left: 0 }					
			};
			var st = $.extend(true, defaults, options); 
			
			var $topElement = $(st.topElementSelector);
			var $setElements = $(st.setElementsSelector);
			st.$topElement = $topElement;
			st.$setElements = $setElements;
			
			st.width = 0;
			st.height = 0;
			st.timer = null;
			
			
			$(window).resize(function(){
				if(typeof st.$modal != "undefined")
					utils._resizeSpinner(st);
			});
			
			return {
				utils: utils,
				spinner: this,
				st: st
				};
			}
		};
	var utils = {
		_startSpinner: function(st){
			st.$topElement
			.prepend(
					$("<div class=\"modal-layer\">")
							.append(
									'<div class="wrapper spinner '+st.containerClass+''+(st.modeInline===true?" inline":"")+'"><div class="spinner-layer" id="'+st.idSpinner+'" tabindex="10000"></div><div class=\"spinnerText\"><div></div></div><div class="clear"></div></div>'));
			if (typeof st.htmlMessage != 'undefined' || typeof st.textMessage != 'undefined') {
				st.$topElement.find("div.wrapper.spinner."+st.containerClass+" .spinnerText > div").html(st.htmlMessage!=""?st.htmlMessage:st.textMessage);
			}

			st.$spinner = new CanvasLoader(st.idSpinner);
			st.$spinner.setColor(st.color);
			st.$spinner.setShape(st.shape);
			st.$spinner.setDiameter(st.diameter);
			st.$spinner.setDensity(st.density);
			st.$spinner.setRange(st.range);
			st.$spinner.setFPS(st.fps);
						
			st.$modal = st.$topElement.find('.modal-layer');
			st.$container = st.$topElement.find("div.wrapper.spinner."+st.containerClass);
			
			// Focus sul loader
			st.$container.find('div#'+st.idSpinner).focus();
			st.$container.removeClass("hide");
			st.$container.show();
			utils._resizeSpinner(st);
			st.$spinner.show();
			if(st.autohide==true) {
				clearTimeout(st.timer);
				st.timer = setTimeout(function(){utils._stopSpinner(st)}, st.millisecondsTimer);
			}
		},
		_stopSpinner: function(st){
			st.$modal.remove();			
		},
		_resizeSpinner: function(st){
			utils._caclulateWidth(st);
			utils._caclulateHeight(st);
			utils._caclulatePosition(st);
			st.$modal.offset(st.position);
			st.$modal.css({width: st.width, height: st.height});
			var left = (st.width / 2) - (st.$container.outerWidth() / 2);
			//var top = (st.height / 2) - (st.$container.outerHeight() / 2);
			if(st.modeInline==false){
				st.$container.css({top: '10%', left: left});
			} else {
				st.$container.css({width: st.width});
				st.$container.find(".spinner-layer").css({height: st.height});
				st.$container.find(".spinner-layer").css("padding", (st.height-st.diameter)/2+"px 0");
				st.$container.find(".spinnerText").css({height: st.height});
				st.$container.find(".spinnerText").css("line-height",st.height+"px");
				st.$container.find(".spinnerText").css("margin-left",st.diameter+"px");
				st.$container.find(".spinnerText").css("font-size",st.fontSize);
			}
		},
		_caclulateWidth: function(st){
			st.width = 0;
			st.$setElements.each(function(){
				var wElement = $(this).outerWidth();
				if(wElement>st.width)
					st.width = wElement;
			});
		},
		_caclulateHeight: function(st){
			st.height = 0;
			st.$setElements.each(function(){
				var hElement = $(this).outerHeight()*(st.modeInline==true?1:1.11);
				if(hElement>st.height)
					st.height = hElement;
			});
		},
		_caclulatePosition: function(st){
			st.position = st.$topElement.offset();
		}
	};
	
	$.fn.spinnerUBISManager = function(method) {
        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || !method) {
            return methods.init.apply(this, arguments);
        } else {
            $.error( 'Method "' +  method + '" does not exist in spinnerUBISManager plugin!');
        }
    };
	
})(jQuery);