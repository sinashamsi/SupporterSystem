<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="DSS" tagdir="/WEB-INF/tags" %>

<DSS:layout pageName="deposit-home">
	Dear <strong>${user}</strong>, Welcome to Deposit Home Page.
	<a href="<c:url value="/logout" />">Logout</a>
</DSS:layout>