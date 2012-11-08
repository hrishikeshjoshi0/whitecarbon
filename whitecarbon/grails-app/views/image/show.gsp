
<%@ page import="com.whitecarbon.cms.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-image" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list image">
			
				<g:if test="${imageInstance?.imageId}">
				<li class="fieldcontain">
					<span id="imageId-label" class="property-label"><g:message code="image.imageId.label" default="Image Id" /></span>
					
						<span class="property-value" aria-labelledby="imageId-label"><g:fieldValue bean="${imageInstance}" field="imageId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="image.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${imageInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.fromDate}">
				<li class="fieldcontain">
					<span id="fromDate-label" class="property-label"><g:message code="image.fromDate.label" default="From Date" /></span>
					
						<span class="property-value" aria-labelledby="fromDate-label"><g:formatDate date="${imageInstance?.fromDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.toDate}">
				<li class="fieldcontain">
					<span id="toDate-label" class="property-label"><g:message code="image.toDate.label" default="To Date" /></span>
					
						<span class="property-value" aria-labelledby="toDate-label"><g:formatDate date="${imageInstance?.toDate}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${imageInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="image.imageUrl.label" default="Image Url" /></span>
					<span class="property-value" aria-labelledby="imageUrl-label">
						<img alt="${fieldValue(bean: imageInstance, field: "imageUrl")}"
							src="${resource(dir: 'uploads', file: imageInstance.imageUrl)}"
							width="100" height="100">
					</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${imageInstance?.imageId}" />
					<g:link class="edit" action="edit" id="${imageInstance?.imageId}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
