<%@ include file="/init.jsp" %>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>

<%
  List<SomeTable> allData = ActionUtil.getAll();
%>

<br>
allData.size = <%= allData.size() %>
<br>
content:
<br>
<% for (SomeTable item : allData ) {
    String text = "id: " + item.getId() + " text: " + item.getSomeText();
    %>
    <%= HtmlUtil.escape(text) %>
    <br>
  <%
}
%>

