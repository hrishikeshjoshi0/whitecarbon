<%@ page import="com.whitecarbon.cms.Image" %>
<div id="tS1" class="jThumbnailScroller" style="z-index: 999;">
	<div class="jTscrollerContainer">
		<div class="jTscroller">
		<%
			for(int i = 0; i < images.size(); i++) {
				Image imageInstance = images.get(i);
		%>
				<a href='#'>
					<img height='120px' width='150px' class='captionme_thumbs' src="${resource(dir: 'uploads', file: imageInstance.imageUrl)}"/>
				</a>
		<%		
			}
		%>
		</div>
	</div>
</div>