if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
	
	$(document).ready(function(){
		$.ajax({
			  url: "common/requirement_form.html",
			  success: function(data) {
				  $('#content-wrapper').html(data);	  
			  }
		});
		var options = {
			animation : 'true',
			placement : 'bottom',
			delay: { show: 500, hide: 100 },
			trigger : 'click',
			html : true,
			title: 'Let Us Know',
			content: function () {
				return $('#content-wrapper').html();
			},
			delay: { show: 500, hide: 100 }
		}
		$('#requirementFormPopOverLink').popover(options);
	});
}