<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>

<body>
<h1>Struts 2 - password example</h1>

<h2>Password : <s:property value="password"/></h2>
<h2>Confirm Password : <s:property value="%{confirmPassword}"/></h2> 

</body>
</html>