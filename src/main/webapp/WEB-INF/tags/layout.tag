<%@ tag trimDirectiveWhitespaces="true" %>
<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>

<%@ attribute name="pageName" required="true" %>
<%@ attribute name="customScript" required="false" fragment="true"%>

<!doctype html>
<html>
<DSS:htmlHeader/>

<body>
<DSS:bodyHeader menuName="${pageName}"/>

<div class="container-fluid">
    <div class="container xd-container">

        <jsp:doBody/>

        <DSS:pivotal/>
    </div>
</div>
<DSS:footer/>
<jsp:invoke fragment="customScript" />

</body>

</html>
