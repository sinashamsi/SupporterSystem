<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>
<%@ attribute name="name" required="true" rtexprvalue="true" description="Name of the active menu" %>
<%@tag pageEncoding="UTF-8"%>

<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="<spring:url value="/" htmlEscape="true" />"><span></span></a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                <span class="sr-only"><os-p>Toggle navigation</os-p></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse" id="main-navbar">
            <ul class="nav navbar-nav navbar-right">
                <DSS:menuItem active="${ (name eq 'home') or (name eq 'login') }" url="/" title="home page">
                    <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                    <span>خانه</span>
                </DSS:menuItem>
                <c:if test="${ (param.hasLogin != null) and (param.hasLogin) }">
                    
                </c:if>

            </ul>
        </div>
    </div>
</nav>
