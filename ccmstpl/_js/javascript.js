//** jQuery Scroll to Top Control script- (c) Dynamic Drive DHTML code library: http://www.dynamicdrive.com.
//** Available/ usage terms at http://www.dynamicdrive.com (March 30th, 09')
//** v1.1 (April 7th, 09'):
//** 1) Adds ability to scroll to an absolute position (from top of page) or specific element on the page instead.
//** 2) Fixes scroll animation not working in Opera.
var scrolltotop={
	//startline: Integer. Number of pixels from top of doc scrollbar is scrolled before showing control
	//scrollto: Keyword (Integer, or "Scroll_to_Element_ID"). How far to scroll document up when control is clicked on (0=top).
	setting: {startline:100, scrollto: 0, scrollduration:1000, fadeduration:[500, 100]},
	controlHTML: '<i class="fa fa-angle-up backtotop"></i>', //HTML for control, which is auto wrapped in DIV w/ ID="topcontrol"
	controlattrs: {offsetx:5, offsety:5}, //offset of control relative to right/ bottom of window corner
	anchorkeyword: '#top', //Enter href value of HTML anchors on the page that should also act as "Scroll Up" links
	state: {isvisible:false, shouldvisible:false},
	scrollup:function(){
		if (!this.cssfixedsupport) //if control is positioned using JavaScript
			this.$control.css({opacity:0}) //hide control immediately after clicking it
		var dest=isNaN(this.setting.scrollto)? this.setting.scrollto : parseInt(this.setting.scrollto)
		if (typeof dest=="string" && jQuery('#'+dest).length==1) //check element set by string exists
			dest=jQuery('#'+dest).offset().top
		else
			dest=0
		this.$body.animate({scrollTop: dest}, this.setting.scrollduration);
	},
	keepfixed:function() {
		var $window=jQuery(window)
		var controlx=$window.scrollLeft() + $window.width() - this.$control.width() - this.controlattrs.offsetx
		var controly=$window.scrollTop() + $window.height() - this.$control.height() - this.controlattrs.offsety
		this.$control.css({left:controlx+'px', top:controly+'px'})
	},
	togglecontrol:function(){
		var scrolltop=jQuery(window).scrollTop()
		if (!this.cssfixedsupport)
			this.keepfixed()
		this.state.shouldvisible=(scrolltop>=this.setting.startline)? true : false
		if (this.state.shouldvisible && !this.state.isvisible) {
			this.$control.stop().animate({opacity:1}, this.setting.fadeduration[0])
			this.state.isvisible=true
		} else if (this.state.shouldvisible==false && this.state.isvisible) {
			this.$control.stop().animate({opacity:0}, this.setting.fadeduration[1])
			this.state.isvisible=false
		}
	},
	init:function(){
		jQuery(document).ready(function($){
			var mainobj=scrolltotop
			var iebrws=document.all
			mainobj.cssfixedsupport=!iebrws || iebrws && document.compatMode=="CSS1Compat" && window.XMLHttpRequest //not IE or IE7+ browsers in standards mode
			mainobj.$body=(window.opera)? (document.compatMode=="CSS1Compat"? $('html') : $('body')) : $('html,body')
			mainobj.$control=$('<div id="topcontrol">'+mainobj.controlHTML+'</div>')
				.css({position:mainobj.cssfixedsupport? 'fixed' : 'absolute', bottom:mainobj.controlattrs.offsety, right:mainobj.controlattrs.offsetx, opacity:0, cursor:'pointer'})
				.attr({title:''})
				.click(function(){mainobj.scrollup(); return false})
				.appendTo('body')
			if (document.all && !window.XMLHttpRequest && mainobj.$control.text()!='') //loose check for IE6 and below, plus whether control contains any text
				mainobj.$control.css({width:mainobj.$control.width()}) //IE6- seems to require an explicit width on a DIV containing text
			mainobj.togglecontrol()
			$('a[href="' + mainobj.anchorkeyword +'"]').click(function(){
				mainobj.scrollup()
				return false
			})
			$(window).bind('scroll resize', function(e){
				mainobj.togglecontrol()
			})
		})
	}
}
scrolltotop.init()


/* Navbar shadow */
$(function() {
	$(".navbar-default").wrap("<div class='navbar-container'></div>");
	$(".navbar-container").append("<div class='navbar-shadow'></div>");
});


/* Navbar search form toggle */
$(function() {
	$(document).click(function(e) {
		var target = $(e.target),
		searchToggle = target.closest(".navbar-search__toggle"),
		searchForm = target.closest(".navbar-search");
		// Click on the button to show/hide the form
		if (searchToggle.length) $(".navbar-search").toggle();
		// Click outside the form to hide it
		if (!searchToggle.length && !searchForm.length && $(".navbar-search").css("display") != "hidden") $(".navbar-search").hide();
	});
});


/* Dropdown submenu positioning (left or right) */
$(function() {
	$("ul.dropdown-menu a[data-toggle=dropdown]").hover(function() {
		var menu = $(this).parent().find("ul"),
		menupos = menu.offset();
		if ((menupos.left + menu.width()) + 30 > $(window).width()) $(this).parent().addClass('pull-left');
		return false;
	});
});


/* Toggle dropdown menus on hover instead of on click */
// Where 991 is the max width of small screens (tablets)
$(function(){
    $('.dropdown').hover(function() {
        if ($(window).width() > 991) $(this).addClass('open');
    },
    function() {
        if ($(window).width() > 991) $(this).removeClass('open');
    });
});


/* Sticky footer */
$(function() {
	function stickyFooter() {
		var footer = $("footer");
		var footerHeight = footer.outerHeight(true);
		$("body").css("margin-bottom", footerHeight);
	};
	setTimeout(stickyFooter,200);
	$(window).resize(function() {
		setTimeout(stickyFooter, 200);
	});
});


/* Toggle footer columns content on click (for extra small screens) */
$(function() {
	$(".footer-item__title").click(function() {
		var windowWidth = $(window).width();
		var thisContent = $(this).next();
		if (windowWidth <= 767) {
			$(".footer-item__content").not(thisContent).slideUp();
			$(".footer-item__title").not(this).removeClass("expanded");
			$(this).toggleClass("expanded").next().slideToggle();
		}
	});
	$(window).resize(function() {
		if ($(this).width() > 767)
			$(".footer-item__content").css("display", "block");
		else
			$(".footer-item__content").css("display", "none");
	});
});


/* Home slider initialization */
$('#home-slider').carousel({ interval: 15000 });


/* Background Parallax */
$(function() {
	$(".bg-parallax").each(function() {
		// Create layer
		var parallaxLayer = "<div class='bg-parallax__layer'></div>";
		$(this).prepend(parallaxLayer);
		var elem = $(this);
		var layer = $(this).find(".bg-parallax__layer");
		// Set background image for the layer
		var backgroundImage = elem.css("background-image");
		layer.css("background-image", backgroundImage);
		elem.css("background-image", "none");
		function updateBackgroundPosition() {
			var scrollAdjust = elem.offset().top - $(window).scrollTop();
			scrollAdjust *= -0.5;
			layer.css({
				"transform": "translate(0, " + scrollAdjust + "px)",
				"-ms-transform": "translate(0, " + scrollAdjust + "px)",
				"-webkit-transform": "translate(0, " + scrollAdjust + "px)"
			});
		};
		// Update elem background position on load
		updateBackgroundPosition();
		// Update elem background posistion on resize & scroll
		$(window).on({
			resize: updateBackgroundPosition,
			scroll: updateBackgroundPosition
		});
	});
});


/* Blackout */
$(function() {
	$(".blackout").each(function() {
		var elem = $(this),
		blackoutMax = elem.data("blackout-max") ? elem.data("blackout-max") / 100 : 1;
		elem.prepend("<div class='blackout__layer'></div>");
		$(window).scroll(function() {
			var elemBottomOffset = elem.offset().top + elem.height() - $(window).scrollTop();
			if (elemBottomOffset > 0 && elemBottomOffset < elem.height()) {
				var coef = 1 - (elemBottomOffset / elem.height());
				coef = Math.min(coef, blackoutMax);
				elem.children(".blackout__layer").css("opacity", coef);
			} else if (elemBottomOffset >= elem.height()) {
				elem.children(".blackout__layer").css("opacity", 0);
			}
		});
	});
});

// Dynamic Video resizer, must have the class name flex-video located in the class of the tag
// preseding the iframe tag.  iframe tag must also have a height and width attribute, anything you want.
$(function() {
	var $allVideos = $("iframe[src*='//player.vimeo.com'], iframe[src*='//www.youtube.com'], iframe[src*='//www.youtube-nocookie.com'], object, embed"),
	$fluidEl = $(".flex-video");
	$allVideos.each(function() {
	$(this)
		// jQuery .data does not work on object/embed elements
		.attr('data-aspectRatio', this.height / this.width)
		.removeAttr('height')
		.removeAttr('width');

	});
	$(window).resize(function() {
		var newWidth = $fluidEl.width();
		$allVideos.each(function() {
			var $el = $(this);
			$el
			.width(newWidth)
			.height(newWidth * $el.attr('data-aspectRatio'));

		});
	}).resize();
});

