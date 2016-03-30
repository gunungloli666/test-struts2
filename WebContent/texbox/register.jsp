<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>

<body>
<h1>Struts 2 - textbox example</h1>

<s:form action="registerUser" >
	<s:textfield key="usernamex" />
	<s:submit key="submit" name="submit" />	
</s:form>

</body>
</html>