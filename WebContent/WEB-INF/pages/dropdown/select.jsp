<%@ taglib prefix="s" uri="/struts-tags"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Struts 2 drop down box example</h1>

	<s:form action="resultAction" namespace="/">

		<h2>
			<s:select label="What's your favor search engine" headerKey="-1"
				headerValue="Select Search Engines" list="searchEngine"
				name="yourSearchEngine" value="defaultSearchEngine" />
		</h2>

		<h2>
			<s:select label="Select a month" headerKey="-1"
				headerValue="Select Month"
				list="#{'1':'Jan', '2':'Feb', '3':'Mar', '4':'Apr'}"
				name="yourMonth" value="2" />
		</h2>

		<s:submit value="submit" name="submit" />

	</s:form>



</body>
</html>