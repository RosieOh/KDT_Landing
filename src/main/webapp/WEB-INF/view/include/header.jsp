<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.servletContext.contextPath}" />

<header>
    <!-- topHeader -->
    <div class="topHeader">
        <a href="/">Home</a>
        <a href="">풀스택(java)</a>
        <a href="">빅데이터</a>
        <a href="">PM(프로덕트 매니저)</a>
        <a href="${path }/apply/list">신청목록으로</a>
        <a href="${path }/member/login">로그인</a>
        <a href="${path }/member/join">회원가입</a>

    </div>

    <!-- bottomHeader -->
    <div class="bottomHeader">
        <h3>빅데이터/풀스택(Java)/프로덕트매니저 과정 모집 예정 </h3>
    </div>
</header>