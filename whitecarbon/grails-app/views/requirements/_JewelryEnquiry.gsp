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
				<td><label for="jewelry_category">Category</label></td>
				<td><input id="jewelry_category" name="jewelry_category"
					readonly="readonly" value="${command.jewelry_category }" /></td>
			</tr>

			<tr>
				<td><label>Price*</label></td>
				<td><input id="jewelry_price_from" name="jewelry_price_from"
					readonly="readonly"
					value="${command.jewelry_price_from} to ${command.jewelry_price_to}" />
				</td>
			</tr>
		</table>
	</div>
</body>
</html>