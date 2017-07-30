<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <spring:url value="/resources/jquery/jquery.min.js" var="jQuery"/>
    <script src="${jQuery}"></script>
    <spring:url value="/resources/bootstrap/dist/js/bootstrap.min.js" var="bootstrapJs"/>
    <script src="${bootstrapJs}"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <spring:url value="/resources/css/font-awesome.min.css" var="fontStyle"/>
    <link href="${fontStyle}" rel="stylesheet"/>
    <spring:url value="/resources/css/loginStyle.css" var="loginStyle"/>
    <link href="${loginStyle}" rel="stylesheet"/>
    <spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapStyle"/>
    <link href="${bootstrapStyle}" rel="stylesheet"/>

    <title>Support System Login Page</title>
    <script>
        function registerUser() {
            var registerForm = document.getElementById("registerForm");
            var loginForm = document.getElementById("loginForm");
            registerForm.style.display = "";
            loginForm.style.display = "none";
        }
        function loginUser() {
            var registerForm = document.getElementById("registerForm");
            var loginForm = document.getElementById("loginForm");
            registerForm.style.display = "none";
            loginForm.style.display = "";
        }
    </script>
</head>
<body>
<div class="view">
    <div class="container">
        <div class="row top-buffer">
            <div class="col-xs-11 col-sm-11 col-md-11 col-lg-11 col-xs-offset-1 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                <i class="fa fa-arrows" aria-hidden="true" style="color:#1DEDEB;"></i>
                <span class="h3-responsive" style="color: #1DEDEB">Supporter System</span>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-md-offset-1 col-lg-offset-1">
                <div id="login-form">
                    <div class="modal-body">
                        <form  action="/login" class="form center-block" method="post" id="loginForm">
                            <c:if test="${param.error != null}">
                            <div class="alert alert-danger">
                                <p>Invalid username and password.</p>
                            </div>
                            </c:if>
                            <c:if test="${param.logout != null}">
                                <div class="alert alert-success">
                                    <p>You have been logged out successfully.</p>
                                </div>
                            </c:if>
                            <c:if test="${registerStatus != null}">
                                <div class="alert alert-success">
                                    <p><c:out value="${registerStatus} Please Login"/></p>
                                </div>
                            </c:if>
                            <div class="form-group">
                                <span class="glyphicons glyphicons-user"></span>
                                <input type="text" class="form-control input-lg input-login-form" name="username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control input-lg input-login-form" placeholder="Password" name="password">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary btn-lg btn-block input-login-form form-submit-button">Log In</button>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                            <div class="form-group">
                                <div class="checkbox" id="remember-me">
                                    <input type="checkbox" id="rememberme" name="remember-me"> Remember Me
                                </div>
                            </div>
                            <div>
                                <a id="sing-up"  onclick="registerUser();">Register in DSS</a>
                            </div>
                        </form>

                        <form  action="/register" class="form center-block" method="post" id="registerForm" style="display: none">
                            <div class="form-group">
                                <input type="text" class="form-control input-lg input-login-form" name="firstName" placeholder="FirstName" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control input-lg input-login-form" name="lastName" placeholder="LastName" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control input-lg input-login-form" placeholder="Email" name="email" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control input-lg input-login-form" name="userName" placeholder="Username" required>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control input-lg input-login-form" placeholder="Password" name="passWord" required>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary btn-lg btn-block input-login-form form-submit-button">Sign Up</button>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                            <div>
                                <a id="sing-in"  onclick="loginUser();">Login in DSS</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                      <span style="color: #fff;font-size: 13px;">
                          A decision support system (DSS) is a computer-based information system that supports business or organizational decision-making activities. DSSs serve the management, operations, and planning levels of an organization (usually mid and higher management) and help people make decisions about problems that may be rapidly changing and not easily specified in advance.
                      </span>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <img src="/resources/images/secu02.png">
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        Access Control
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <img src="/resources/images/image006.png">
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        User Base
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <img src="/resources/images/secu02.png">
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        Operation System
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row footer-inside">
            <div class="col-xs-12 col-sm-6 col-md-7 col-lg-7">
                      <span style="color: #fff;font-size: 13px;">
                        Dotin is a leading provider of SOA-based multi-channel software products for banks and financial services insitutions. Dotin has vast experience in implementing successful solutions for some of the biggest banks in Iran.</span>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-5 col-lg-5">
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 text-right" style="color: #fff">Follow Us Here</div>
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
                        <i class="fa fa-linkedin-square fa-2x" aria-hidden="true" style="color:#1DEDEB;"></i>
                        <i class="fa fa-twitter-square fa-2x" aria-hidden="true" style="color:#1DEDEB;"></i>
                        <i class="fa fa-facebook-square fa-2x" aria-hidden="true" style="color:#1DEDEB;"></i>
                        <i class="fa fa-google-plus-square fa-2x" aria-hidden="true" style="color:#1DEDEB;"></i>
                        <i class="fa fa-instagram fa-2x" aria-hidden="true" style="color:#1DEDEB;"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
