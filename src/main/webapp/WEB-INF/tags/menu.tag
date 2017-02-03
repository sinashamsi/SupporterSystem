<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>
<%@ attribute name="name" required="true" rtexprvalue="true" description="Name of the active menu" %>

<nav class="navbar navbar-default" role="navigation">
    <div>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                <span class="sr-only"><os-p>Toggle navigation</os-p></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="main-navbar">
            <ul class="nav navbar-nav navbar-left">
                <DSS:menuItem active="${name eq 'home'}" url="/home" title="home page">
                    <span class="fa fa-home" aria-hidden="true"></span>
                    <span>Home</span>
                </DSS:menuItem>
                <DSS:menuItem active="${name eq 'deposit-home'}" url="/deposit/firstLevel/home" title="deposit home page">
                    <span class="fa fa-money" aria-hidden="true"></span>
                    <span>Deposit</span>
                </DSS:menuItem>
                <DSS:menuItem active="${name eq 'cheque-home'}" url="/cheque/firstLevel/home" title="cheque home page">
                    <span class="fa fa-money" aria-hidden="true"></span>
                    <span>Cheque</span>
                </DSS:menuItem>
            </ul>
        </div>
    </div>
</nav>
