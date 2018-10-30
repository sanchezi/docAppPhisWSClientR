/*
 Authors: inspired by Julien Diot 
 used by I.Sanchez
 31/05/2018
*/

Shiny.addCustomMessageHandler("initializedMessage", function(message){
	var interval;

	interval = setInterval(function(){
		if ($('html').attr('class')=='shiny-busy') {
			// wait
			console.log("shiny is still busy");
		} else {
			console.log("shiny is ready");
			window.clearInterval(interval);
			$('#loading').hide();
			$('#ready').fadeIn(1500);
		}
	}, 250);

});
