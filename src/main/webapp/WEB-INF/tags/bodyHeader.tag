<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>
<%@tag pageEncoding="UTF-8"%>

<%@ attribute name="menuName" required="true" rtexprvalue="true" description=" Name of the active menu " %>

<DSS:menu name="${menuName}"/>
