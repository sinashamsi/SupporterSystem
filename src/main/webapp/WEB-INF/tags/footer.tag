<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@tag pageEncoding="UTF-8"%>

<spring:url value="/resources/jquery/jquery.min.js" var="jQuery"/>
<script src="${jQuery}"></script>

<spring:url value="/resources/bootstrap/dist/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>

<spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapStyle"/>
<link href="${bootstrapStyle}" rel="stylesheet"/>


<spring:url value="/resources/css/font-awesome.min.css" var="fontStyle"/>
<link href="${fontStyle}" rel="stylesheet"/>

<script>
    document.getElementById("left-side").style.height = (screen.height)+"px";
    document.getElementById("right-side").style.height = (screen.height)+"px";
</script>