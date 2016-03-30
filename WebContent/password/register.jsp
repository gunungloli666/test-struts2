<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>

<body>

<h1>Struts 2 - password example</h1>

<s:form action="registerUser" namespace="/password">

	<table>
		<tr>
<!-- 			<td>User Name: </td> -->
			<td><s:textfield key="usernamex" /></td>
		</tr>
		<tr>
<!-- 			<td>Password: </td>	 -->
			<td><s:password key="password" /></td>
		</tr>
		
		<tr>
<!-- 			<td>Confirm Password: </td> -->
			<td><s:password key="confirmPassword" /></td>
		</tr>
		
		<tr>
			<td> <s:submit key="submit" name="submit" /></td>
		</tr>
		
	</table>
	
</s:form>

</body>
</html>