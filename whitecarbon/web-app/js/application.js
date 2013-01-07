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
			delay: { show: 500, hide: 100 },
			trigger : 'manual',
			html : true,
			title: 'Let Us Know',
			content: function () {
				return $('#content-wrapper').html();
			},
			delay: { show: 500, hide: 100 }
		}
		
		$('#requirementFormPopOverLink').popover(options);
		
		$(".requirements-form-close-link").live('click',function() {
			$('#requirementFormPopOverLink').popover('destroy');
		});
		
		$('#requirementFormPopOverLink').live('click',function() {
			$.ajax({
				  url: "common/requirement_form.html",
				  success: function(data) {
					  $('#content-wrapper').html(data);	  
				  }
			});
			$('#requirementFormPopOverLink').popover(options);
			$('#requirementFormPopOverLink').popover('show');
		});
	});
}