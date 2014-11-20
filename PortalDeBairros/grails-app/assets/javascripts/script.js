// LAZY LOAD -- YOU CAN TAKE THIS OUT, BUT DON'T FORGET TO INCLUDE THE JS FILES IN THE THEME FOOTER AGAIN
LazyLoad.js(['/PortalDeBairros/assets/jquery-1.10.2.min.js', '/PortalDeBairros/assets/bootstrap.min.js', '/PortalDeBairros/assets/imagesloaded.pkgd.min.js', '/PortalDeBairros/assets/packery.pkgd.min.js', '/PortalDeBairros/assets/jquery.simpleWeather-2.3.min.js', '/PortalDeBairros/assets/jquery.vticker.min.js', '/PortalDeBairros/assets/nivo-lightbox.min.js', '/PortalDeBairros/assets/jquery.fitvids.js', '/PortalDeBairros/assets/retina-1.1.0.min.js'], function () {
	// PACKERY FRONT PAGE GRID
	var container = document.querySelector('#grid');
	var pckry;
	imagesLoaded( container, function() {
		pckry = new Packery( container, {
			columnWidth: '.col-md-4',
			itemSelector: '.item',
			gutter: 0  
		});
	});
	// TICKER
	$(function() {
		$('#ticker').vTicker('init',{speed: 1000, 
									 pause: 3000});
	});      
	// LIGHTBOX
	$('a.lightbox').nivoLightbox({
		effect: 'fall',                            
		theme: 'default',                                                
		errorMessage: 'The requested content cannot be loaded. Please try again later.'
	}); 
	// FITVIDS    
	$(".video-box").fitVids();
	// WEATHER WIDGET
	$.simpleWeather({
		zipcode: '',
		woeid: '44418',
		location: '',
		unit: 'c',
		success: function(weather) {
			html = '<h2>'+weather.temp+'&deg;'+weather.units.temp+'</h2>';
			html += '<ul><li>'+weather.city+', '+weather.region+'</li>';
			html += '<li class="currently">'+weather.currently+'</li>';
			html += '<li>'+weather.tempAlt+'&deg;F</li></ul>';
			$("#weather").html(html);
		},
		error: function(error) {
			$("#weather").html('<p>'+error+'</p>');
		}
	});
	// PRICING
	$(".box").click(function(){
		$(this).parent().addClass("circle");
		
	}).click(function(){
		$(this).parent().removeClass("circle");
	});
});
