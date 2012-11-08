<%@ page import="com.whitecarbon.cms.Image" %>
<%
	for(int i = 0; i < images.size(); i++) {
		Image imageInstance = images.get(i);
%>
		<img src="${resource(dir: 'uploads', file: imageInstance.imageUrl)}" />
<%		
	}
%>