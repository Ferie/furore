/* PLUGIN for SPINNER */

(function($) {
	var st;
	var methods = {
		init: function(options){
			var defaults = {
				topElementSelector: 'body',
				setElementsSelector: 'body',
				htmlMessage: '',
				textMessage: 'Loading ...',
				autohide: true,
				millisecondsTimer: 3000,
				color: '#000000',
				diameter: 40,
				density: 40,
				range: 1.3,
				fps: 24,
				shape: "oval",
				idSpinner: 'spinner-loader',
				containerClass: 'generalSpinner',
				position: { top: 0, left: 0 }					
			};
			st = $.extend(true, defaults, options); 
			
			var $topElement = $(st.topElementSelector);
			var $setElements = $(st.setElementsSelector);
			st.$topElement = $topElement;
			st.$setElements = $setElements;
			
			st.width = 0;
			st.height = 0;
			
			
			$(window).resize(function(){
				utils._resizeSpinner();
			});
			
			return {
				utils: utils
				};
			}
		};
	var utils = {
		_startSpinner: function(){
			st.$topElement
			.append(
					$("<div class=\"modal-layer\">")
							.append(
									'<div class="wrapper spinner '+st.containerClass+'"><div id="'+st.idSpinner+'" tabindex="10000"></div><div id=\"spinnerText\"></div><div class="clear"></div></div>'));
			if (typeof st.htmlMessage != 'undefined' || typeof st.textMessage != 'undefined') {
				$("#spinnerText").html(st.htmlMessage!=""?st.htmlMessage:st.textMessage);
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
			utils._resizeSpinner();
			st.$spinner.show();
			if(st.autohide==true) {
				setTimeout(utils._stopSpinner, st.millisecondsTimer);
			}
		},
		_stopSpinner: function(){
			st.$modal.remove();			
		},
		_resizeSpinner: function(){
			utils._caclulateWidth();
			utils._caclulateHeight();
			utils._caclulatePosition();
			st.$modal.offset(st.position);
			st.$modal.css({width: st.width, height: st.height});
			var left = (st.width / 2) - (st.$container.outerWidth() / 2);
			//var top = (st.height / 2) - (st.$container.outerHeight() / 2);
			st.$container.css({top: '10%', left: left});
		},
		_caclulateWidth: function(){
			st.width = 0;
			st.$setElements.each(function(){
				var wElement = $(this).outerWidth();
				if(wElement>st.width)
					st.width = wElement;
			});
		},
		_caclulateHeight: function(){
			st.height = 0;
			st.$setElements.each(function(){
				var hElement = $(this).outerHeight()*1.11;
				if(hElement>st.height)
					st.height = hElement;
			});
		},
		_caclulatePosition: function(){
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