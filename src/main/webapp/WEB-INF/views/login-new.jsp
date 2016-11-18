<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>

    <%-- Placed at the end of the document so the pages load faster --%>
    <spring:url value="/resources/jquery/jquery.min.js" var="jQuery"/>
    <script src="${jQuery}"></script>

    <%-- jquery-ui.js file is really big so we only load what we need instead of loading everything --%>
    <spring:url value="/resources/jquery-ui/ui/jquery.ui.core.js" var="jQueryUiCore"/>
    <script src="${jQueryUiCore}"></script>

    <spring:url value="/resources/jquery-ui/ui/jquery.ui.datepicker.js" var="jQueryUiDatePicker"/>
    <script src="${jQueryUiDatePicker}"></script>


    <%-- Bootstrap --%>
    <spring:url value="/resources/bootstrap/dist/js/bootstrap.min.js" var="bootstrapJs"/>
    <script src="${bootstrapJs}"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags --%>

    <spring:url value="/resources/images/favicon.png" var="favicon"/>
    <link rel="shortcut icon" type="image/x-icon" href="${favicon}">

    <title>Sina Shamsi Spring Project</title>

    <%-- CSS generated from LESS --%>
    <spring:url value="/resources/css/DSS.css" var="DSSStyle"/>
    <link href="${DSSStyle}" rel="stylesheet"/>


    <spring:url value="/resources/css/font-awesome.min.css" var="fontStyle"/>

    <link href="${fontStyle}" rel="stylesheet"/>


    <%-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --%>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Only datepicker is used -->
    <spring:url value="/resources/jquery-ui/themes/base/minified/jquery-ui.min.css" var="jQueryUiCss"/>
    <link href="${jQueryUiCss}" rel="stylesheet"/>
    <spring:url value="/resources/jquery-ui/themes/base/minified/jquery.ui.theme.min.css" var="jQueryUiThemeCss"/>
    <link href="${jQueryUiThemeCss}" rel="stylesheet"/>
    <spring:url value="/resources/jquery-ui/themes/base/minified/jquery.ui.datepicker.min.css"
                var="jQueryUiDatePickerCss"/>
    <link href="${jQueryUiDatePickerCss}" rel="stylesheet"/>
    <title></title>
    <style>
        html,
        body,
        .view {
            height: 100%;
            overflow: auto;
        }

        .view {
            height: 100%;
            margin: 0px;
            background: url(/resources/images/bg-img.jpg) no-repeat center center;
            background-size: cover;
            background-attachment: fixed;
        }

        .top-buffer {
            margin-top: 50px;
            margin-bottom: 50px;
        }

        #login-form {
            background-color: #FEFEFE;
            border-radius: 5px;
        }

        #sign-in {
            background-color: #2E4E67 !important;

        }

        ::-webkit-input-placeholder {
            text-align: center;
        }

        :-moz-placeholder {
            text-align: center;
        }

        ::-moz-placeholder {
            text-align: center;
        }

        :-ms-input-placeholder {
            text-align: center;
        }

        .input-login-form {
            background-color: #EBEDEC;
            font-size: 15px;
            border-radius: 5px;
        }

        #remember-me {
            padding-left: 21px !important;
            font-size: 12px !important;
            color: #bcbcbc !important;
        }

        #rememberme {
            margin-top: 0 !important;
        }

        #separatorRow {
            margin-top: 250px;
        }

        body, html {
            height: 100%;
        }

        html {
            position: relative;
        }

        .container {
            min-height: 100%;
        }

       .footer-inside{
           border-top: 1px solid;
           height: 130px;
           margin-top: 140px;
           padding-top: 35px;
           padding-left: 86px;
       }


    </style>
</head>
<body>
<div class="view">
    <div class="container">
        <div class="row top-buffer">
            <div class="col-md-1"></div>
            <div class="col-md-11">
                <span class="glyphicon glyphicon-cd" style="color:#1DEDEB;"></span>
                <span class="h3-responsive" style="color: #1DEDEB">Supporter System</span>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1 col-lg-1"></div>
            <div class="col-md-4 col-lg-4">
                <div id="login-form">
                    <div class="modal-body">
                        <form class="form center-block">
                            <div class="form-group">
                                <span class="glyphicons glyphicons-user"></span>
                                <input type="text" class="form-control input-lg input-login-form"
                                       placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control input-lg input-login-form"
                                       placeholder="Password">
                            </div>
                            <div class="form-group">
                                <button id="sign-in" class="btn btn-primary btn-lg btn-block input-login-form">Log In
                                </button>
                            </div>
                            <div class="form-group">
                                <div class="checkbox" id="remember-me">
                                    <input type="checkbox" id="rememberme" name="remember-me"> Remember Me
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-1 col-lg-1"></div>
            <div class="col-md-6 col-lg-6">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                      <span style="color: #fff;font-size: 13px;">
                          A decision support system (DSS) is a computer-based information system that supports business or organizational decision-making activities. DSSs serve the management, operations, and planning levels of an organization (usually mid and higher management) and help people make decisions about problems that may be rapidly changing and not easily specified in advance.
                      </span>
                    </div>
                    <div class="col-md-12 col-lg-12">
                        <div class="row">
                            <div class="col-md-4 col-lg-4">
                                <div class="row">
                                    <div class="col-md-12 col-lg-12">
                                        <img src="/resources/images/secu02.png">
                                    </div>
                                    <div class="col-md-12 col-lg-12">
                                        Access Control
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <div class="row">
                                    <div class="col-md-12 col-lg-12">
                                        <img src="/resources/images/image006.png">
                                    </div>
                                    <div class="col-md-12 col-lg-12">
                                        User Base
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <div class="row">
                                    <div class="col-md-12 col-lg-12">
                                        <img src="/resources/images/secu02.png">
                                    </div>
                                    <div class="col-md-12 col-lg-12">
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
            <div class="col-md-7 col-lg-7">
                      <span style="color: #fff;font-size: 13px;">
                        Dotin is a leading provider of SOA-based multi-channel software products for banks and financial services insitutions. Dotin has vast experience in implementing successful solutions for some of the biggest banks in Iran.</span>
            </div>
            <div class="col-md-5 col-lg-5">
                <div class="row">
                    <div class="col-md-6 col-lg-6 text-right" style="color: #fff">Follow Us Here</div>
                    <div class="col-md-6 col-lg-6 ">
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
