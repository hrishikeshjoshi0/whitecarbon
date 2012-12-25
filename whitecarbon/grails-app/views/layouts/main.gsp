<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		
		<link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.css')}" type="text/css">
		<script type="text/javascript" src="${resource(dir: 'bootstrap/js', file: 'bootstrap.js')}"></script>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="wrap">
			<div id="page-content">
				<div id="page" class="clearfix shadow" style="display: block;">
					 <div class="container-fluid">
					 	<div class="navbar">
						  <div class="navbar-inner">
						    <a class="" href="#">
						    	<img src="${resource(dir: 'images', file: 'logo.png')}" alt="White Carbon" height="38"/> 
						    </a>
						  </div>
						</div>
						<hr/>
					 	<div class="row-fluid"> 
							 <div class="span3" style="border-right: 1px dotted #eeeeee;">
							 	<ul class="nav nav-list">
								  <li class="nav-header">Site Links</li>
								  <li>
								  	<a target="_blank" href="index.html">Index Page</a>
								  </li>
								  <li>
								  	<a target="_blank" href="showcase.html">Showcase Page</a>
								  </li>
								</ul>
								  
							 	<ul class="nav nav-list">
								  <li class="nav-header">Image Manager</li>
								  <li>
								  	<g:link controller="image" action="uploadImage">Upload Image - Index Page</g:link>
								  </li>
								  <li>
								  	<g:link controller="image" action="uploadImageShowCase">Upload Image - ShowCase Page</g:link>
								  </li>
								  <li>
								  	<g:link controller="image" action="uploadImageThumbnail">Upload Image - Footer Thumbnails</g:link>
								  </li>
								  <li>
								  	<g:link controller="image" action="uploadImageShowCaseWall">Upload Image - ShowCase Wall</g:link>
								  </li>
								</ul>
							 </div> 
							 <div class="span9">
							 	<g:layoutBody/>
							 </div> 
						 </div>  
					 </div> 
					
				</div>
			</div>
		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
	
	<script type="text/javascript">
			$('#navigation').load('common/navigation.html',function() {
		        	$('#home').addClass('current');
					$('.thumbs').hide();		        	
		    });
        </script>
</html>