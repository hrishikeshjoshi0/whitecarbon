<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.7.2.min.js')}" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'></link>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css"></link>
        <style type="text/css">
			#maximage {
				position : fixed;
				top : 0;
				height : 550px;
			}
		</style>
    </head>

    <body>
		<div id="wrap">
			<div id="page-content">
				<div id="page" class="clearfix shadow">
					<div id="maximage" class="bg_img" style="display: none;">
						<!-- 
							<img src="images/home/home_1.jpg" alt="background"  /> 
							<img src="images/home/home_3.jpg" alt="background"  /> 
							<img src="images/home/home_5.jpg" alt="background"  /> 
							<img src="images/home/home_6.jpg" alt="background"  /> 
							<img src="images/home/home_7.jpg" alt="background" /> 
						 -->
					</div>
				</div>
				
				<div id="footer" class="oe_wrapper">
					<div id="navigation"></div>
					<div id="thumbnails" class="thumbs"></div>
				</div>
			</div>
			<div class="copyrights">
				Copyrights 2012
			</div>
		</div>
		
		<!-- The JavaScript -->
        <script src="${resource(dir: 'js', file: 'jquery.cycle.all.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery.maximage.js')}" type="text/javascript"></script>
		
        <script type="text/javascript">
			$('#navigation').load('common/navigation.html',function() {
		        	$('#home').addClass('current');
					$('.thumbs').hide();		        	
		    });
			
			$(document).ready(function() {
				$('#maximage').maximage({
						fillElement : '#page',
						backgroundSize : "cover"
					});
		       $('#maximage').show();
			});
			
			$(document).ready(function() {

					$(".signin").click(function(e) {          
						e.preventDefault();
						$("fieldset#signin_menu").toggle();
						$(".signin").toggleClass("menu-open");
					});
					
					$("fieldset#signin_menu").mouseup(function() {
						return false
					});
					$(document).mouseup(function(e) {
						if($(e.target).parent("a.signin").length==0) {
							$(".signin").removeClass("menu-open");
							$("fieldset#signin_menu").hide();
						}
					});			
					
			});
        </script>
		
		<script type='text/javascript'>
			$(function() {
			  $('#forgot_username_link').tipsy({gravity: 'w'});   
			});
	    </script>
    </body>
</html>