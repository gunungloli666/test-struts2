<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <sj:head />
  </head>
  <body>
    <s:url var="remoteurl1" action="displaychart1.action" />
    <s:url var="remoteurl2" action="displaychart2.action" />

    <sj:tabbedpanel id="remotetabs" selectedTab="1" show="true" hide="'fade'" 
    		collapsible="true" sortable="true">
        <sj:tab id="tab1" href="%{remoteurl1}" label="Remote Tab One"/>
        <sj:tab id="tab2" href="%{remoteurl2}" label="Remote Tab Two"/>
    </sj:tabbedpanel>
  </body>
</html>