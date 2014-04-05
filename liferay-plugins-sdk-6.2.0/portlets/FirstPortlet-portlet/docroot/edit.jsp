<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%>
<%@ page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ page import="com.liferay.portal.kernel.util.Validator"%>
<%@ page import="javax.portlet.PortletPreferences"%>
<portlet:defineObjects />
<%
	PortletPreferences prefs = renderRequest.getPreferences();
%>
<portlet:actionURL var="editGreetingURL">
	<portlet:param name="mvcPath" value="/view.jsp" />
</portlet:actionURL>

<aui:form action="<%=editGreetingURL%>" method="post">
	<aui:input name="greeting" label="greeting" type="text"
		value="Enter New value here!" />
	<aui:button type="submit" />
</aui:form>
<portlet:renderURL var="viewGreetingURL">
	<portlet:param name="mvcPath" value="/view.jsp" />
</portlet:renderURL>

<p>
	<a href="<%=viewGreetingURL%>">Back</a>
</p>