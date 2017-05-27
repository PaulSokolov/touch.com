var widthClassOptions = [];
var widthClassOptions = ({
		bestseller       : 'bestseller_default_width',		
		featured         : 'featured_default_width',
		special          : 'special_default_width',
		latest           : 'latest_default_width',
		related          : 'related_default_width',
		additional       : 'additional_default_width',
		tabbestseller       : 'tabbestseller_default_width',		
		tabfeatured         : 'tabfeatured_default_width',
		tabspecial          : 'tabspecial_default_width',
		tablatest           : 'tablatest_default_width',
		module           : 'module_default_width',
		blog				:'blog_default_width',
		testimonial			:'testimonial_default_width'
		
});

$(document).ready(function(){
	$('ul.breadcrumb').before($('#content h2'));
	$('ul.breadcrumb').before($('#content h1'));
	$('#content select').customSelect();
	
	$('.normal-additional-carousel').bxSlider({
		mode: 'vertical',
		minSlides:3,
		slideMargin:0,
		slideWidth:318
	 });
	
	$("#cart .dropdown-toggle").click(function(){
			$(".cart-menu").slideToggle("slow");
			$(".myaccount-menu").slideUp("slow");
			$(".language-menu").slideUp("slow");
			$(".currency-menu").slideUp("slow");
			$(this).toggleClass("active");
        	return false;
    	});
	
	 	$("#currency .dropdown-toggle").click(function(){
			$('#currency').addClass("active");
           	$(".language-menu").slideUp("slow");
        	$(".currency-menu").slideToggle("slow");
			$(".myaccount-menu").slideUp("slow");
			$(".cart-menu").slideUp("slow");
        	return false;
    	});
		
        $("#language .dropdown-toggle").click(function(){
			$('#language').addClass("active");
            $(".currency-menu").slideUp("slow");
        	$(".language-menu").slideToggle("slow");
			$(".myaccount-menu").slideUp("slow");
			$(".cart-menu").slideUp("slow");
        	return false;
    	});
		
		$(".myaccount > .dropdown-toggle").click(function(){
			$(".cart-menu").slideUp("slow");
			$(".myaccount-menu").slideToggle("slow");
			$(".language-menu").slideUp("slow");
			$(".currency-menu").slideUp("slow");
			$(this).toggleClass("active");
        	return false;
    	});
		
});

$(document).click(function(){
	$(".cart-menu").slideUp('slow');
	$(".myaccount-menu").slideUp('slow');
	$(".language-menu").slideUp("slow");
	$(".currency-menu").slideUp("slow");
});


function mobileToggleMenu(){
	//alert($(window).width());
	if ($(window).width() < 980)
	{
		$("#footer .mobile_togglemenu").remove();
		$("#footer .column h5").append( "<a class='mobile_togglemenu'>&nbsp;</a>" );
		$("#footer .column h5").addClass('toggle');
		$("#footer .mobile_togglemenu").click(function(){
			$(this).parent().toggleClass('active').parent().find('ul').toggle('slow');
		});

	}else{
		$("#footer .column h5").parent().find('ul').removeAttr('style');
		$("#footer .column h5").removeClass('active');
		$("#footer .column h5").removeClass('toggle');
		$("#footer .mobile_togglemenu").remove();
	}	
}
$(document).ready(function(){mobileToggleMenu();});
$(window).resize(function(){mobileToggleMenu();});

function bannerToggle(){
	//alert($(window).width());
	if ($(window).width() < 768)
	{
		$(".cms_outer .banner_toggle").remove();
		$(".cms_outer .res_head").append( "<a class='banner_toggle'>&nbsp;</a>" );
		$(".cms_outer .res_head").addClass('toggle');
		$(".cms_outer .banner_toggle").click(function(){
			$(this).parent().toggleClass('active').parent().find('.banner_content').slideToggle('slow');
		});

	}else{
		$(".cms_outer .res_head").parent().find('.banner_content').removeAttr('style');
		$(".cms_outer .res_head").removeClass('active');
		$(".cms_outer .res_head").removeClass('toggle');
		$(".cms_outer .banner_toggle").remove();
	}	
}
$(document).ready(function(){bannerToggle();});	
$(window).resize(function(){bannerToggle();});

$(document).ready(function(){
  $(".dropdown-toggle").click(function(){
    $("ul.dropdown-toggle").toggle('slow');
  });
});


function LangCurDropDown(selector,subsel){
	var main_block = new HoverWatcher(selector);
	var sub_ul = new HoverWatcher(subsel);
	$(selector).click(function() {
		$(selector).addClass('active');
		$(subsel).slideToggle('slow');
		setTimeout(function() {
			if (!main_block.isHoveringOver() && !sub_ul.isHoveringOver())
				$(subsel).stop(true, true).slideUp(450);
				$(selector).removeClass('active');
		}, 3000);
	});
	
	$(subsel).hover(function() {
		setTimeout(function() {
			if (!main_block.isHoveringOver() && !sub_ul.isHoveringOver())
				$(subsel).stop(true, true).slideUp(450);
		}, 3000);
	});	
}

$(document).ready(function(){
	LangCurDropDown('.myaccount','.myaccount-menu');
	LangCurDropDown('#currency','.currency-menu');
	LangCurDropDown('#language','.language-menu');
	LangCurDropDown('#cart','.cart-menu');

});

function leftright()
{
	if ($(window).width() < 980){
			if($('.category_filter .col-md-3, .category_filter .col-md-2, .category_filter .col-md-1').hasClass('text-right')==true){
			$(".category_filter .col-md-3, .category_filter .col-md-2, .category_filter .col-md-1").addClass('text-left');
			$(".category_filter .col-md-3, .category_filter .col-md-2, .category_filter .col-md-1").removeClass('text-right');
			}
	}
}
$(document).ready(function(){leftright();});
$(window).resize(function(){leftright();});


function menuResponsive(){
	 
	if ($(window).width() <= 979){
	//alert($(window).width());
	$('.nav-responsive').css('display','block');
	if($('.main-navigation').hasClass('treeview')!=true){
	  $("#res-menu").addClass('responsive-menu');
	  $("#res-menu").removeClass('main-menu');
	  $("#res-menu .main-navigation").treeview({
		animated: "slow",
		collapsed: true,
		unique: true    
	  });
	  $('#res-menu .main-navigation a.active').parent().removeClass('expandable');
	  $('#res-menu .main-navigation a.active').parent().addClass('collapsable');
	  $('#res-menu .main-navigation .collapsable ul').css('display','block');    
	}
	  
	}else{
	$("#res-menu .hitarea").remove();
	$("#res-menu").removeClass('responsive-menu');
	$("#res-menu").addClass('main-menu');
	$(".main-navigation").removeClass('treeview');
	$("#res-menu ul").removeAttr('style');
	$('#res-menu li').removeClass('expandable');
	$('#res-menu li').removeClass('collapsable');
	$('.nav-responsive').css('display','none');
	}

}
$(document).ready(function(){menuResponsive();});
$(window).resize(function(){menuResponsive();});

function productCarouselAutoSet() { 
	$("#content .product-carousel, .banners-slider-carousel .product-carousel, .homepage-blog-inner .product-carousel, .homepage-testimonials-inner .product-carousel, #products-related .product-carousel").each(function() {
		var objectID = $(this).attr('id');
		var myObject = objectID.replace('-carousel','');
		if(myObject.indexOf("-") >= 0)
			myObject = myObject.substring(0,myObject.indexOf("-"));		
		if(widthClassOptions[myObject])
			var myDefClass = widthClassOptions[myObject];
		else
			var myDefClass= 'grid_default_width';
		var slider = $("#content #" + objectID + ",  .banners-slider-carousel #"+ objectID + ", #products-related #" + objectID);
		slider.sliderCarousel({
			defWidthClss : myDefClass,
			subElement   : '.slider-item',
			subClass     : 'product-block',
			firstClass   : 'first_item_tm',
			lastClass    : 'last_item_tm',
			slideSpeed : 200,
			paginationSpeed : 800,
			autoPlay : false,
			stopOnHover : false,
			goToFirst : true,
			goToFirstSpeed : 1000,
			goToFirstNav : true,
			pagination : false,
			paginationNumbers: false,
			responsive: true,
			responsiveRefreshRate : 200,
			baseClass : "slider-carousel",
			theme : "slider-theme",
			autoHeight : true
		});
		
		var nextButton = $(this).parent().find('.next');
		var prevButton = $(this).parent().find('.prev');
		nextButton.click(function(){
			slider.trigger('slider.next');
		})
		prevButton.click(function(){
			slider.trigger('slider.prev');
		})
	});
}
//$(window).load(function(){productCarouselAutoSet();});
$(document).ready(function(){productCarouselAutoSet();});

function productListAutoSet() { 
	$("#content .productbox-grid").each(function(){
		var objectID = $(this).attr('id');
		if(objectID.length >0){
			if(widthClassOptions[objectID.replace('-grid','')])
				var myDefClass= widthClassOptions[objectID.replace('-grid','')];
		}else{
			var myDefClass= 'grid_default_width';
		}	
		$(this).smartColumnsRows({
			defWidthClss : myDefClass,
			subElement   : '.product-items',
			subClass     : 'product-block'
		});
	});		
}
$(window).load(function(){productListAutoSet();});
$(window).resize(function(){productListAutoSet();});


function HoverWatcher(selector){
	this.hovering = false;
	var self = this;

	this.isHoveringOver = function() {
		return self.hovering;
	}

	$(selector).hover(function() {
		self.hovering = true;
	}, function() {
		self.hovering = false;
	})
}

function LangCurDropDown(selector,subsel){
	var main_block = new HoverWatcher(selector);
	var sub_ul = new HoverWatcher(subsel);
	$(selector).click(function() {
		$(selector).addClass('active');
		$(subsel).slideToggle('slow');
		setTimeout(function() {
			if (!main_block.isHoveringOver() && !sub_ul.isHoveringOver())
				$(subsel).stop(true, true).slideUp(450);
				$(selector).removeClass('active');
		}, 3000);
	});
	
	$(subsel).hover(function() {
		setTimeout(function() {
			if (!main_block.isHoveringOver() && !sub_ul.isHoveringOver())
				$(subsel).stop(true, true).slideUp(450);
		}, 3000);
	});	
}

$(document).ready(function(){

	LangCurDropDown('#currency','.currency_div');
	LangCurDropDown('#language','.language_div');

	$('.nav-responsive').click(function() {
        $('.responsive-menu .main-navigation').slideToggle();
		$('.nav-responsive div').toggleClass('active');
		
    }); 

	$(".treeview-list").treeview({
		animated: "slow",
		collapsed: true,
		unique: true		
	});
	$('.treeview-list a.active').parent().removeClass('expandable');
	$('.treeview-list a.active').parent().addClass('collapsable');
	$('.treeview-list .collapsable ul').css('display','block');
});

 
$(document).ready(function(){
  $(".tm_headerlinks_inner").click(function(){
    $(".header_links").toggle('slow');
  });
  
});

/*For Grid and List View Buttons*/
function gridlistactive(){
$('.btn-list-grid button').on('click', function() {
if($(this).hasClass('grid')) {
  $('.btn-list-grid button').addClass('active');
  $('.btn-list-grid button.list').removeClass('active');
}
  else if($(this).hasClass('list')) {
$('.btn-list-grid button').addClass('active');
  $('.btn-list-grid button.grid').removeClass('active');
  }
});
}
$(document).ready(function(){gridlistactive()});
$(window).resize(function(){gridlistactive()});



/*For Back to Top button*/
$(document).ready(function(){
$("body").append("<a class='top_button' title='Back To Top' href=''>TOP</a>");

$(function () {
	$(window).scroll(function () {
		if ($(this).scrollTop() > 70) {
			$('.top_button').fadeIn();
		} else {
			$('.top_button').fadeOut();
		}
	});
	// scroll body to 0px on click
	$('.top_button').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});
});
});

/*For Parallex*/

jQuery(window).load(function(){
			
					 
	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent);
	if(!isMobile) {
		if($(".parallex").length){  $(".parallex").sitManParallex({  invert: false });};    
	}else{
		$(".parallex").sitManParallex({  invert: true });
		
		}	
});

/* JS FOR FILTER */

function leftFilter(){
if ($(window).width() <= 767) {
$('#column-left .filterbox').appendTo('.row #content .category_list');
$('#column-right .filterbox').appendTo('.row #content .category_list');
} else {
$('.row #content .category_list .filterbox').appendTo('#column-left .sidebarFilter');
$('.row #content .category_list .filterbox').appendTo('#column-right .sidebarFilter');
}
}
$(document).ready(function(){leftFilter();});
$(window).resize(function(){leftFilter();});


jQuery(document).ready(function(){	
$('.write-review, .review-count').on('click', function() {
	$('html, body').animate({scrollTop: $('#tabs_info').offset().top}, 'slow');
	});

});


function blogCrop(){
if ($(window).width() > 979) {
	$('.blog_page .blog-image').each(function() {									  
	var that = $(this);
	var url = that.find('img').attr('src');
	that.css({'background-image':'url("' + url + '")'});
});
}
}
jQuery(document).ready(function() { blogCrop();});
jQuery(window).resize(function() {blogCrop();});