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
    <nav id="navbar" class="navbar main-nav">
        <div class="container">
            <div class="navbar-brand ml-0">
                <a class="navbar-item" href="index.html">
                    <h2 class="has-text-black" style="color:#FF0000";>고용노동부 어쩌구 마크</h2>
                </a>
                <button role="button" class="navbar-burger burger" data-hidden="true" data-target="navigation">
                    <span aria-hidden="true"></span>
                    <span aria-hidden="true"></span>
                    <span aria-hidden="true"></span>
                </button>
            </div>

            <div class="navbar-menu mr-0" id="navigation">
                <ul class="navbar-end" style="color:black";>
                    <li class="navbar-item">
                        <a class="navbar-link is-arrowless" href="index.html">홈</a>
                    </li>

                    <li class="navbar-item">
                        <a class="navbar-link is-arrowless" href="about.html">AI,데이터 과정</a>
                    </li>

                    <li class="navbar-item">
                        <a class="navbar-link is-arrowless" href="service.html">풀스택 과정</a>
                    </li>

                    <li class="navbar-item">
                        <a class="navbar-link is-arrowless" href="project.html">PM 과정</a>
                    </li>
                    <li class="navbar-item">
                        <a class="navbar-link is-arrowless" href="project.html">천재IT Blog</a>
                    </li>
                </ul>
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
    </nav>

    <!-- bottomHeader -->
    <div class="bottomHeader">
        <h3>빅데이터/풀스택(Java)/프로덕트매니저 과정 모집 예정 </h3>
    </div>
</header>