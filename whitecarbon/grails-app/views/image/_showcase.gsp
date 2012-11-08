<%@ page import="com.whitecarbon.cms.Image" %>
<%
	for(int i = 0; i < images.size(); i++) {
		Image imageInstance = images.get(i);
%>
		<li>
			<a class="thumb_gal" name="" href="${resource(dir: 'uploads', file: imageInstance.imageUrl)}" title="">
				<img width="100" height="100" src="${resource(dir: 'uploads', file: imageInstance.thumbnails.get(0).imageUrl)}" alt="" />
			</a>
			<div class="caption">
				<div class="image-title"></div>
				<div class="image-desc"></div>
			</div>
		</li>
<%		
	}
%>