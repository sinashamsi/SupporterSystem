<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<%@ taglib prefix="ssh" tagdir="/WEB-INF/tags" %>

<ssh:layout pageName="home">
    <style>


        /*.form-login {*/
            /*background-color: #E6E6E6;*/
            /*padding-top: 10px;*/
            /*padding-bottom: 20px;*/
            /*padding-left: 20px;*/
            /*padding-right: 20px;*/
            /*border-radius: 15px;*/
            /*border-color: #d2d2d2;*/
            /*border-width: 5px;*/
            /*box-shadow: 0 1px 0 #cfcfcf;*/
            /*float: left;*/
            /*width: 253px;*/
            /*margin-left: -44px;*/
        /*}*/

        /*h4 {*/
            /*border:0 solid #fff;*/
            /*border-bottom-width:1px;*/
            /*padding-bottom:10px;*/
            /*text-align: center;*/
        /*}*/

        /*.form-control {*/
            /*border-radius: 10px;*/
        /*}*/

        /*.wrapper {*/
            /*text-align: center;*/
        /*}*/

    </style>
    <form id="loginForm" method="post" action="<spring:url value="/login" htmlEscape="true" />">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-5 col-md-3">
                    <div class="form-login">
                        <h4>Welcome back</h4>
                        <input type="text" name="userName" id="userName" class="form-control input-sm chat-input" placeholder="username" />
                        </br>
                        <input type="text" name="passWord" id="password" class="form-control input-sm chat-input" placeholder="password" />
                        </br>
                        <div class="wrapper">
            <span class="group-btn">
               <input type="submit" class="btn btn-md" style="color: #fff;background-color: #6db33f;border-radius: 5px;" value="login" />
            </span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>

</ssh:layout>
