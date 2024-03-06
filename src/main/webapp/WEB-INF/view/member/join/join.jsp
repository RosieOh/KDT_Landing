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
    <meta charset="UTF-8">
    <meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    <title>회원가입 폼</title>
    <jsp:include page="../../include/header.jsp"/>
    <jsp:include page="../../include/head.jsp"/>
    <jsp:include page="./breadcrumb.jsp" />
</head>
<body>
<form action="${path }/member/joinPro" method="post" class="form-horizontal" id="joinForm">
    <div class="member">

        <!-- 1. 로고 -->
        <img class="logo" src="/resources/images/1.png" />


        <!-- 2. 필드 -->
        <div class="field tel-number">
            <b>이메일</b>
            <div>
                <input type="email" name="email" id="email" placeholder="이메일 입력" class="input" required>
                <input type="hidden" id="emailCK" value="no">
                <button type="button" onclick="PostEmailbtn" class="btn1">인증번호 받기</button>

                <!-- <input type="button" value="인증번호 받기"> -->
                <div class="insubForm" style="display: none; ">
                    <label class="form-label blind" for="insub">인증번호</label>
                    <input type="text" id="insub" name="insub" placeholder="인증번호 입력" class="form-control">
                    <button type="button" onclick="Insub()" class="btn1"> 인증번호 인증</button>
                    <button type="button" onclick="Insubreset()" class="btn1" > 취소</button>
                </div>
            </div>
        </div>

        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" name="pw" id="pw" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&.,])[A-Za-z\d$@$!%*#?&]{8,16}$" placeholder="비밀번호" type="password">
            <p class="info mb-0"><i class="fas fa-check"></i> 비밀번호는 최소 8자리에서 최대 16자리 <br> 숫자, 영문, 특수문자 각 1개 이상 포함</p>
        </div>

        <div class="field">
            <b>비밀번호 재확인</b>
            <input class="userpw-confirm" name="pw2" id="pw2" type="password">
        </div>

        <div class="field">
            <b>이름</b>
            <input type="text" name="name" id="name" placeholder="이름" class="input" minlength="2" maxlength="8" required />
        </div>

        <!-- 3. 필드(생년월일) -->
        <div class="field birth">
            <b>생년월일</b>
            <div>
                <input type="number" placeholder="년(4자)">
                <select>
                    <option value="">월</option>
                    <option value="">1월</option>
                    <option value="">2월</option>
                    <option value="">3월</option>
                    <option value="">4월</option>
                    <option value="">5월</option>
                    <option value="">6월</option>
                    <option value="">7월</option>
                    <option value="">8월</option>
                    <option value="">9월</option>
                    <option value="">10월</option>
                    <option value="">11월</option>
                    <option value="">12월</option>
                </select>
                <input type="number" placeholder="일">
            </div>
        </div>

        <div class="field tel-number">
            <b>휴대전화</b>
            <select>
                <option value="">대한민국 +82</option>
            </select>
            <div>
                <input type="tel" name="tel" placeholder="전화번호 입력">
        </div>

        <!-- 6. 가입하기 버튼 -->
        <button type="submit" class="signin__btn" style="margin-top: 50px" >회원가입</button>
        <p class="d-flex justify-content-center mt-3"> 이미 회원이신가요? &nbsp; <a href="${path}/member/login" class="text-secondary"> 로그인하기 </a></p>
    </div>
    </div>
</form>

<jsp:include page="../../include/footer.jsp" />

</body>
</html>