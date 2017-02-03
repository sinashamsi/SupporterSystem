<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="menuName" required="true" %>
<%@tag pageEncoding="UTF-8" %>
<div class="row">
    <div class="col" id="right-side">
        <DSS:bodyHeader menuName="${menuName}"/>
        <jsp:doBody/>
    </div>
</div>