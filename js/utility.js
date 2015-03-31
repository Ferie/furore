//detect bootstrap breakpoint
function isBreakpoint(alias) {
	// Innietto nel contenitore i div che servono per fare il check
	if ($(".device-xs.visible-xs").length == 0) {
		$("body").append($("<div class=\"device-xs visible-xs\"></div>"))
				.append($("<div class=\"device-sm visible-sm\"></div>"))
				.append($("<div class=\"device-md visible-md\"></div>"))
				.append($("<div class=\"device-lg visible-lg\"></div>"));
	}
	return $('.device-' + alias).is(':visible');
}
function getVideoTypeRes() {
	if($(window).width()<768){
		return "mobile";
	} else if($(window).width()<960){
		return "tablet";
	} else {
		return "desktop";
	}
}
$.fn.exists = function () {
    return this.length !== 0;
}
$.browserDetect = {
        init: function () {
            this.browser = this.searchBrowser(this.dataBrowser) || "Other";
            this.system = this.searchSystem(this.dataSystem) || "Other";
            this.version = this.searchVersion(navigator.userAgent) || this.searchVersion(navigator.appVersion) || "Unknown";
        },
        searchBrowser: function (data) {
            for (var i = 0; i < data.length; i++) {
                var dataString = data[i].string;
                this.versionBrowserString = data[i].subStringBrowser;

                if (dataString.indexOf(data[i].subStringBrowser) !== -1) {
                    return data[i].identityBrowser;
                }
            }
        },
        searchSystem: function (data) {
            for (var i = 0; i < data.length; i++) {
                var dataString = data[i].string.toLowerCase();
                this.versionSystemString = data[i].subStringSystem;

                if (dataString.indexOf(data[i].subStringSystem) !== -1) {
                    return data[i].identitySystem;
                }
            }
        },
        searchVersion: function (dataString) {
            var index = dataString.indexOf(this.versionBrowserString);
            if (index === -1) {
                return;
            }
            var rv = dataString.indexOf("rv:");
            if (this.versionBrowserString === "Trident" && rv !== -1) {
                return parseFloat(dataString.substring(rv + 3));
            } else {
                return parseFloat(dataString.substring(index + this.versionBrowserString.length + 1));
            }
        },

        dataBrowser: [
            {string: navigator.userAgent, subStringBrowser: "Chrome", identityBrowser: "Chrome"},
            {string: navigator.userAgent, subStringBrowser: "MSIE", identityBrowser: "Explorer"},
            {string: navigator.userAgent, subStringBrowser: "Trident", identityBrowser: "Explorer"},
            {string: navigator.userAgent, subStringBrowser: "Firefox", identityBrowser: "Firefox"},
            {string: navigator.userAgent, subStringBrowser: "Safari", identityBrowser: "Safari"},
            {string: navigator.userAgent, subStringBrowser: "Opera", identityBrowser: "Opera"}
        ],

        dataSystem: [
            {string: navigator.userAgent, subStringSystem: "android", identitySystem: "Android"},
            {string: navigator.userAgent, subStringSystem: "blackberry", identitySystem: "BlackBerry"},
            {string: navigator.userAgent, subStringSystem: "iphone", identitySystem: "iPhone"},
            {string: navigator.userAgent, subStringSystem: "ipad", identitySystem: "iPad"},
            {string: navigator.userAgent, subStringSystem: "iemobile", identitySystem: "IEMobile"},
            {string: navigator.userAgent, subStringSystem: "win", identitySystem: "Windows"},
            {string: navigator.userAgent, subStringSystem: "mac", identitySystem: "MacOS"},
            {string: navigator.userAgent, subStringSystem: "x11", identitySystem: "Unix"},
            {string: navigator.userAgent, subStringSystem: "linux", identitySystem: "Linux"}
        ]

    };
