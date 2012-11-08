
<%@ page import="com.whitecarbon.cms.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-image" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="active" title="${message(code: 'image.active.label', default: 'Active')}" />
						<g:sortableColumn property="imageUrl" title="${message(code: 'image.imageUrl.label', default: 'Image')}" />
						<g:sortableColumn property="role" title="${message(code: 'image.imageUrl.role', default: 'Page')}" />
						<th/>
					</tr>
				</thead>
				<tbody>
				<g:each in="${imageInstanceList}" status="i" var="imageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:formatBoolean boolean="${imageInstance.active}" /></td>
					
						<td>
							<img alt="${fieldValue(bean: imageInstance, field: "imageUrl")}"
							src="${resource(dir: 'uploads', file: imageInstance.imageUrl)}"
							width="100" height="100">
						</td>
						
						<td>
							<g:link class="edit" action="edit" id="${imageInstance?.imageId}">
								<img alt="${fieldValue(bean: imageInstance, field: "imageUrl")}"
									src="${resource(dir: 'images', file: 'edit_icon.gif')}"
									width="20" height="20">
							</g:link>
						</td>
					
						<td>
							<g:fieldValue bean="${imageInstance}" field="role"/>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imageInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
