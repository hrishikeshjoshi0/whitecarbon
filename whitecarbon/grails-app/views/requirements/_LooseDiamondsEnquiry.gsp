<%@ page contentType="text/html;charset=ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Insert title here</title>
</head>
<body>
	<div class="body">
		<div>
			<table>
				<tr>
					<td><label for="name">Name*</label></td>
					<td>
						${command.name}
					</td>
				</tr>
				<tr>
					<td><label for="company_name">Company Name</label></td>
					<td>
						${command.company_name}
					</td>
				</tr>
				<tr>
					<td><label for="email">Email*</label></td>
					<td>
						${command.email}
					</td>	
				</tr>
				<tr>
					<td><label for="mobileNo">Mobile No.*</label></td>
					<td>
						${command.mobileNo}
					</td>
				</tr>
				<tr>
					<td><label for="officeNo">Office No</label></td>
					<td>
						${command.officeNo}
					</td>
				</tr>
			</table>
		</div>
		<table>
			<tr>
				<td><label for="loose_diamonds_shape">Shape</label></td>
				<td><input id="loose_diamonds_shape" name="loose_diamonds_shape" readonly="readonly"
					value="${command.loose_diamonds_shape }" /></td>
			</tr>
			
			<tr>
				<td><label>Quantity</label></td>
				<td><input id="quantity" name="quantity"
					value="${command.loose_diamonds_qty_from} to ${command.loose_diamonds_qty_to}" readonly="readonly"/>
				</td>
			</tr>
			
			<tr>
				<td><label>Color*</label></td>
				<td><input id="color" name="color"
					value="${command.loose_diamonds_color_from} to ${command.loose_diamonds_color_to}" readonly="readonly"/>
				</td>
			</tr>
			
			<tr>
				<td><label>Clarity^</label></td>
				<td><input id="solitaire_clarity_from"
					name="solitaire_clarity_from"
					value="${command.loose_diamonds_clarity_from} to ${command.loose_diamonds_clarity_to}" readonly="readonly"/>
				</td>
			</tr>

			<tr>
				<td><label for="solitaire_cut">Cut</label></td>
				<td><input id="solitaire_cut" name="solitaire_cut"
					value="${command.loose_diamonds_cut} to ${command.loose_diamonds_cut}" readonly="readonly"/></td>
			</tr>

			<tr>
				<td><label>Price^</label></td>
				<td><input id="solitaire_cut" name="solitaire_cut"
					value="${command.loose_diamonds_price_from} to ${command.loose_diamonds_price_to}" readonly="readonly"/>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>