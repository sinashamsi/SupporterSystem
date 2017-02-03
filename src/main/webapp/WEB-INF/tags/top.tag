<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>
<%@tag pageEncoding="UTF-8" %>
<style>
    .search-div {
        width: 227px !important;
        margin: 0px 0px 0px -75px !important;
        border: 0 !important;
    }

    .search-input {
        background-color: #283344 !important;
        border: 0 !important;
    }

    .search-button {
        border: 0 !important;
        height: 34px !important;
        background-color: #283344 !important;
    }

    .search-icon {
        font-size: 18px !important;
        color: #435062 !important;
    }

    #top-icons {
        margin: 11px 0px 0px -26px;
    }

    #top-icons li {
        display: inline !important;
        margin: 0px 10px 0px 4px !important;
        font-size: 18px !important;
    }

    #home-icon {
        font-size: 20px !important;
    }
</style>
<div class="row">
    <div class=" hidden-xs hidden-sm col-md-12 col-lg-12">
        <div class="row">
            <div class="col-md-2 col-lg-2">
                <span style="font-size: 33px;color: #0FC7BF;">DSS</span>
                <span style="color: #8E939C;">System</span>
            </div>
            <div class="col-md-6 col-lg-6">

            </div>
            <div class="col-md-2 col-lg-2">
                <ul id="top-icons">
                    <li>
                        <i id="home-icon" class="fa fa-home" aria-hidden="true" style="color: #21ADAA"></i>
                    </li>
                    <li>
                        <i class="fa fa-file-text-o" aria-hidden="true" style="color: #21ADAA"></i>
                    </li>
                    <li>
                        <i class="fa fa-envelope-o" aria-hidden="true" style="color: #21ADAA"></i>
                    </li>
                </ul>
            </div>
            <div class="col-md-2 col-lg-2">
                <form class="navbar-form" role="search">
                    <div class="input-group search-div">
                        <input type="text" class="form-control search-input" placeholder="Search" name="srch-term"
                               id="srch-term">

                        <div class="input-group-btn">
                            <button class="btn btn-default search-button" type="submit"><i class="fa fa-search search-icon" aria-hidden="true"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>