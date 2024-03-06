<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head style="min-height: 100vh;">
    <meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    <title>천재 IT 교육센터</title>
    <jsp:include page="../../include/head.jsp"/>
</head>

<body style="min-height: 100vh;">
<jsp:include page="../../include/header.jsp" />
<jsp:include page="./breadcrumb.jsp"/>
<link rel="stylesheet" href="${path }./resources/css/member.css">


<div class="login-wrapper" style="margin: 0 auto; padding-top: 100px; min-height: 70vh;">
    <h2 style="text-align: center;">Login</h2>
    <form action="${path }/member/loginPro" method="post" id="login-form">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <input type="text" name="email" placeholder= "이메일을 입력해주세요" autocomplete="off" required style="background-color: #F8F8F8;">
        <input type="password"  name="password" placeholder="비밀번호를 입력해주세요" autocomplete="off" required style="background-color: #F8F8F8;">
        <label for="remember-check">
            <input type="checkbox" id="remember-check">아이디 저장하기
        </label>
        <input type="submit" value="Login">
            <p class="d-flex justify-content-center mt-3"> 회원이 아니신가요? &nbsp; <a href="${path}/member/join" class="text-secondary"> 회원가입하기 </a></p>
    </form>
</div>

<!-- ======= Footer ======= -->
<jsp:include page="../../include/footer.jsp" />
<!-- End Footer -->
</body>
</html>