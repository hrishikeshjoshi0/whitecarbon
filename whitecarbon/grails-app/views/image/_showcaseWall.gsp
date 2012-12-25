<%@ page import="com.whitecarbon.cms.Image" %>
	<div id="wall-items">
		<%
			for(int i = 0; i < images.size(); i++) {
				Image imageInstance = images.get(i);
		%>
				<div class="wall-item">
					<span class="bg hide">${resource(dir: 'uploads', file: imageInstance.imageUrl)}</span> 
					<span class="img_detail hide">${resource(dir: 'uploads', file: imageInstance.imageUrl)}</span> 
					<span class="tooltip hide">
						<%
							def tooltip = ""
							switch(imageInstance.role) {
								case "SHOWCASE-WALL-RINGS" : 
									tooltip = "Rings"
									break;
								case "SHOWCASE-WALL-BRACELETS" : 
									tooltip = "Bracelets"
									break;
								case "SHOWCASE-WALL-PENDANTS" : 
									tooltip = "Pendants"
									break;
								case "SHOWCASE-WALL-NECKLACES" : 
									tooltip = "Necklaces"
									break;
								default :
									tooltip = ""
									break;
							};
						%>
						<%=	tooltip	%>
					</span> 
					<a href="gallery_<%=tooltip.toLowerCase()%>.html">
						<span class="title">
							<%=	tooltip	%>
						</span>
					</a>
				</div>
		<%		
			}
		%>
	</div>
