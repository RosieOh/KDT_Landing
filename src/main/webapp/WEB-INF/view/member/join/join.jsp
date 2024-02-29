<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.servletContext.contextPath}" />
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    <title>회원가입</title>
    <jsp:include page="../../include/head.jsp"/>
</head>
<body>
<jsp:include page="../../include/header.jsp"/>
<jsp:include page="./breadcrumb.jsp" />

    <!-- Heading -->
    <h1>SIGN IN</h1>

    <!-- Form -->
    <form action="${path }/member/joinPro" method="post" class="form-horizontal" id="joinForm">

        <div class="first-input input__block first-input__block">
            <label class="form-label blind" for="email">이메일</label>
            <input type="email" name="email" id="email" placeholder="이메일" class="input" style="background-color: white;"  required>
            <input type="hidden" id="emailCK" name="emailCK" value="no">
            <button type="button" onclick="PostEmail()" id="PostEmailbtn" class="btn1" style="width: 160px; margin-top: 10px; margin-left: 0"> 인증번호 보내기 </button>
            <div class="insubForm" style="display: none; ">
                <label class="form-label blind" for="insub">인증번호</label>
                <input type="text" id="insub" name="insub" placeholder="인증번호 입력" class="form-control">
                <button type="button" onclick="Insub()" class="btn1" style="width: 150px; margin-top: 10px; margin-left: 0"> 인증번호 인증</button>
                <button type="button" onclick="Insubreset()" class="btn1" style="width: 150px; margin-top: 10px; margin-left: 0"> 취소</button>
        </div>
            <div class="input__block">
                <label class="form-label blind" for="pw">비밀번호</label>
                <input type="password" name="pw" id="pw" placeholder="비밀번호" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&.,])[A-Za-z\d$@$!%*#?&]{8,16}$" class="input" minlength="8" maxlength="16" required title="양식을 지켜주세요" />
                <p class="info mb-0"><i class="fas fa-check"></i> 비밀번호는 최소 8자리에서 최대 16자리 <br> 숫자, 영문, 특수문자 각 1개 이상 포함</p>
            </div>

            <div class="input__block">
                <label class="form-label blind" for="pw2">비밀번호확인</label>
                <input type="password" name="pw2" id="pw2" placeholder="비밀번호확인" class="input repeat__password"  minlength="8" maxlength="16" required />
            </div>

            <div class="input__block">
            <label class="form-label blind" for="name">이름</label>
            <input type="text" name="name" id="name" placeholder="이름" class="input" minlength="2" maxlength="8" required />
        </div>

            <div class="input__block">
            <label class="form-label blind" for="tel">전화번호</label>
            <input type="tel" name="tel" id="tel" placeholder="휴대전화 번호(-제외)" pattern="(010)\d{3,4}\d{4}" class="input" minlength="10" maxlength="11" required title="양식을 지켜주세요" >
        </div>

        <div class="d-flex justify-content-center">
            <button type="submit" class="signin__btn" style="margin-top: 50px" >회원가입</button>
        </div>
    <p class="d-flex justify-content-center mt-3"> 이미 회원이신가요? &nbsp; <a href="${path}/member/login" class="text-secondary"> 로그인하기 </a></p>
        </div>
    </form>
        <jsp:include page="../../include/footer.jsp" />
</body>
</html>