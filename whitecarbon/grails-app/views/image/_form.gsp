<%@ page import="com.whitecarbon.cms.Image" %>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="image.active.label" default="Active" />
	</label>
	<g:checkBox name="active" value="${imageInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'imageUrl', 'error')} ">
	<label for="imageUrl">
		<g:message code="image.imageUrl.label" default="Image Url" />
		
	</label>
	<img alt="${fieldValue(bean: imageInstance, field: "imageUrl")}"
							src="${resource(dir: 'uploads', file: imageInstance.imageUrl)}"
							width="100" height="100">
</div>
