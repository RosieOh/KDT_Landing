<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="path" value="${pageContext.servletContext.contextPath}" />
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal"/>
    <sec:authentication property="authorities" var="authorities"/> <!-- https://twoline.tistory.com/100 -->
</sec:authorize>

<header>
    <!-- topHeader -->
    <div class="topHeader">
        <a href="/">Home</a>
        <a href="">풀스택(java)</a>
        <a href="">빅데이터</a>
        <a href="">PM(프로덕트 매니저)</a>
        <a href="${path }/apply/list">신청목록으로</a>
        <div class="container d-flex justify-content-center justify-content-md-between">
            <div class="contact-info d-flex align-items-center">
            </div>
            <div class="social-links d-none d-md-flex align-items-center">
            </div>
            <div class="column is-6-desktop is-8-tablet" style="padding-right: 50px;">
                <c:choose>
                    <c:when test="${empty principal}">
                        <!-- 사용자가 로그인하지 않은 경우 -->
                        <a href="${path }/member/join" class="btn btn-light" style="background: #FCB9AA"> 회원가입 </a>
                        <a href="${path }/member/login" class="btn btn-light" style="background: #FCB9AA"> 로그인 </a>
                        <a href="${path }/logout">로그아웃</a>
                    </c:when>
                    <c:when test="${not empty principal}">
                            <!-- 사용자가 로그인한 경우 -->
                                <button type="submit" class="btn btn-light"><a href="${path }/logout">로그아웃</a></button>
                            <c:if test="${authorities eq '[ADMIN]'}">
                                <a href="${path }/member/join" class="btn btn-light"> 관리자 페이지 </a>
                            </c:if>
                            <c:if test="${authorities eq '[MANAGER]'}">
                                <a href="${path }/member/join" class="btn btn-light"> 교사용 페이지 </a>
                            </c:if>
                            <c:if test="${authorities eq '[STUDENT]'}">
                                <a href="${path }/member/get?id=${principal}" class="btn btn-light"> 마이페이지 </a>
                            </c:if>
                        </c:when>
                </c:choose>
            </div>
        </div>

    </div>

    <!-- bottomHeader -->
    <div class="bottomHeader">
        <h3>빅데이터/풀스택(Java)/프로덕트매니저 과정 모집 예정 </h3>
    </div>
</header>