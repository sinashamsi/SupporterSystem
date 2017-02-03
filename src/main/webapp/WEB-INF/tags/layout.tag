<%@ tag trimDirectiveWhitespaces="true" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>
<%@ attribute name="customScript" required="false" fragment="true" %>
<%@ attribute name="pageName" required="true" %>

<!doctype html>
<html>
<DSS:htmlHeader/>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="hidden-xs hidden-sm  col-md-12 col-lg-12" style="background-color: #303D50">
            <DSS:top/>
        </div>
    </div>
    <div class="row">
        <div class="hidden-xs hidden-sm col-md-2 col-lg-2" style="background-color: #1A222F">
            <DSS:side/>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10" style="background-color: #EEF5FD">
            <DSS:main menuName="${pageName}">
                <jsp:doBody/>
            </DSS:main>
        </div>
    </div>
</div>
<DSS:footer/>
<jsp:invoke fragment="customScript"/>
</body>
</html>
