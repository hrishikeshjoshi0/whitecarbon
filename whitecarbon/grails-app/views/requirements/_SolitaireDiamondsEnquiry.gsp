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
				<td><label for="solitaire_shape">Shape</label></td>
				<td><input id="solitaire_shape" name="solitaire_shape" readonly="readonly"
					value="${command.solitaire_shape }" /></td>
			</tr>

			<tr>
				<td><label for="solitaire_single_pair">Single/Pair*</label></td>
				<td><input id="solitaire_single_pair"
					name="solitaire_single_pair" readonly="readonly"
					value="${command.solitaire_single_pair}" /></td>
			</tr>

			<tr>
				<td><label for="weight_per_stone">Weight Per Stone*</label></td>
				<td><input id="weight_per_stone" name="weight_per_stone" readonly="readonly"
					value="${command.weight_per_stone}" /></td>
			</tr>

			<tr>
				<td><label>Color*</label></td>
				<td><input id="color" name="color" readonly="readonly"
					value="${command.solitaire_color_from} to ${command.solitaire_color_to}" />
				</td>
			</tr>

			<tr>
				<td><label>Clarity^</label></td>
				<td><input id="solitaire_clarity_from"
					name="solitaire_clarity_from" readonly="readonly"
					value="${command.solitaire_clarity_from} to ${command.solitaire_clarity_from}" />
				</td>
			</tr>

			<tr>
				<td><label for="solitaire_cut">Cut</label></td>
				<td><input id="solitaire_cut" name="solitaire_cut" readonly="readonly"
					value="${command.solitaire_cut} to ${command.solitaire_cut}" /></td>
			</tr>

			<tr>
				<td><label for="solitaire_polish">Polish</label></td>
				<td><input id="solitaire_polish" name="solitaire_polish" readonly="readonly"
					value="${command.solitaire_polish}" /></td>
			</tr>

			<tr>
				<td><label for="solitaire_syymetry">Syymetry</label></td>
				<td><input id="solitaire_syymetry" name="solitaire_syymetry" readonly="readonly"
					value="${command.solitaire_syymetry}" />
			</tr>

			<tr>
				<td><label>Price^</label></td>
				<td><input id="solitaire_cut" name="solitaire_cut" readonly="readonly"
					value="${command.solitaire_price_from} to ${command.solitaire_price_from}" />
				</td>
			</tr>
		</table>
	</div>
</body>
</html>