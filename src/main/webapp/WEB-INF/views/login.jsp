<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html" pageEncoding="utf-8" %>


<DSS:layout pageName="login">
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form class="form-horizontal" method="post">
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
                    <div class="form-group">
                        <label for="username" class="col-sm-3 control-label">Username</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-3 control-label">Password</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                        </div>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

                    <div class="form-group">
                        <div class="col-sm-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="submit" class="btn btn-default">
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</DSS:layout>