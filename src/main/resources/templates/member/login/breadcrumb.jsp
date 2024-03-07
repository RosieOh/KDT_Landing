<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.servletContext.contextPath}" />

<div class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9; height: 200px;" aria-label="breadcrumbs">
    <div class="container-fluid" style="background: #f1f4f9;">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background: #f1f4f9;">
            <a class="navbar-brand" href="${path }/"><i class="xi-home is-size-3"></i> Home</a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${path }/member/login">로그인</a>
                </li>
            </ul>
        </nav>
        <div class="container mt-5">
            <h2 class="text-center">로그인</h2>
        </div>
    </div>
</div>