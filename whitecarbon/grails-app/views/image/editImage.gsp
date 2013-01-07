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
			<g:uploadForm action="updateImage" method="post" >
			  <g:hiddenField name="id" value="${imageInstance?.imageId}" />
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
					<g:submitButton name="create" class="btn btn-success" value="Upload" />
			  	</td>
			  </tr>
			  </table>
			</g:uploadForm>
		</div>
	</body>
</html>
