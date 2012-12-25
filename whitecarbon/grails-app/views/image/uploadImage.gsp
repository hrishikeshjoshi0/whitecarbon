<%@ page import="com.whitecarbon.cms.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title>
			Image Manager | White Carbon
		</title>
	</head>
	<body>
		<div id="create-image" class="content scaffold-create" role="main">
			<h5>
				Upload Image for Index Page
			</h5>
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${imageInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${imageInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:uploadForm action="upload" method="post" >
			  <table>
			  <tr class="prop">
			    <td valign="top" class="name">
			      <label for="payload">File:</label>
			    </td>
			    <td valign="top">
			      <input type="file" id="payload" name="payload"/>
			    </td>
			  </tr>
			  
			  <tr>
			  	<td colspan="2">
					<g:submitButton name="create" class="save" value="Upload" />
			  	</td>
			  </tr>
			  </table>
			</g:uploadForm>
		</div>
	</body>
</html>
