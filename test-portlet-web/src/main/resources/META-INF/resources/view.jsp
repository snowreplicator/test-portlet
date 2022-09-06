<%@ page import="com.liferay.petra.string.StringPool" %>
<%@ include file="/init.jsp" %>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>

<%
    String selPage = ParamUtil.getString(request, "selPage", "");
%>

<portlet:renderURL windowState="normal" var="pageURL">
    <portlet:param name="jspPage" value="/view.jsp" />
</portlet:renderURL>

<div class="test-portlet-header-wrapper">
    <h1><liferay-ui:message key="test-portlet-title"/></h1>
</div>

<c:if test='<%= !selPage.isEmpty()  %>'>
    <div class="back-url-wrapper">
        <aui:a href='<%= pageURL + StringPool.AMPERSAND + renderResponse.getNamespace() + "selPage=" + StringPool.BLANK %>' label='back-to-main-page' cssClass='action-button back-url' />
    </div>
</c:if>

<div>
    <b><liferay-ui:message key="testing-portlet-pages"/>:</b>
</div>

<div>
    <div>
        <aui:a href='<%= pageURL + StringPool.AMPERSAND + renderResponse.getNamespace() + "selPage=test-page-1" %>' label='test-page-1' cssClass='action-button' />
    </div>
    <div>
        <aui:a href='<%= pageURL + StringPool.AMPERSAND + renderResponse.getNamespace() + "selPage=test-page-2" %>' label='test-page-2' cssClass='action-button' />
    </div>
    <div>
        <aui:a href='<%= pageURL + StringPool.AMPERSAND + renderResponse.getNamespace() + "selPage=test-page-3" %>' label='test-page-3' cssClass='action-button' />
    </div>
<div>

<c:choose>
    <c:when test='<%= selPage.equalsIgnoreCase("test-page-1") %>'>
        <liferay-util:include servletContext="<%= this.getServletContext() %>" page="/test-page-1/test-page-1.jsp" />
    </c:when>
    <c:when test='<%= selPage.equalsIgnoreCase("test-page-2") %>'>
        test page 2
    </c:when>
    <c:when test='<%= selPage.equalsIgnoreCase("test-page-3") %>'>
        test page 3
    </c:when>
    <c:otherwise>
        <liferay-ui:message key="choose-testing-page"/>
    </c:otherwise>
</c:choose>