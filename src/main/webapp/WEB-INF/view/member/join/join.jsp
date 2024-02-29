<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal"/>
</sec:authorize>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <title>회원가입</title>

    <jsp:include page="../../include/head.jsp"/>
</head>

<body>
<div class="w-50 m-auto mt-5 pt-5" style="min-height: 50vh">
    <main class="form-signin w-100 m-auto">
        <div class="w-50 m-auto mt-5 pt-5" style="min-height: 50vh">
            <main class="form-signin w-100 m-auto">
                <form action="${path }/member/joinPro" method="post" class="form-horizontal" id="joinForm">

                    <div class="form-outline mb-1">
                        <label class="form-label blind" for="pw">비밀번호</label>
                        <input type="password" name="pw" id="pw" placeholder="비밀번호" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&.,])[A-Za-z\d$@$!%*#?&]{8,16}$" class="form-control" minlength="8" maxlength="16" required title="양식을 지켜주세요" />
                        <p class="info mb-0"><i class="fas fa-check"></i> 비밀번호는 최소 8자리에서 최대 16자리 <br> 숫자, 영문, 특수문자 각 1개 이상 포함</p>
                    </div>
                    <div class="form-outline mb-4">
                        <label class="form-label blind" for="pw2">비밀번호확인</label>
                        <input type="password" name="pw2" id="pw2" placeholder="비밀번호확인" class="form-control" minlength="8" maxlength="16" required />
                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label blind" for="name">이름</label>
                        <input type="text" name="name" id="name" placeholder="이름" class="form-control" minlength="2" maxlength="8" required />
                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label blind" for="tel">전화번호</label>
                        <input type="tel" name="tel" id="tel" placeholder="휴대전화 번호(-제외)" pattern="(010)\d{3,4}\d{4}" class="form-control" minlength="10" maxlength="11" required title="양식을 지켜주세요" >
                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label blind" for="email">이메일</label>
                        <input type="email" name="email" id="email" placeholder="이메일" class="form-control" style="background-color: white;"  required>
                        <input type="hidden" id="emailCK" name="emailCK" value="no">
<%--                        <button type="button" onclick="PostEmail()" id="PostEmailbtn" class="btn1" style="width: 160px; margin-top: 10px; margin-left: 0"> 인증번호 보내기 </button>--%>
<%--                        <div class="insubForm" style="display: none; ">--%>
<%--                            <label class="form-label blind" for="insub">인증번호</label>--%>
<%--                            <input type="text" id="insub" name="insub" placeholder="인증번호 입력" class="form-control">--%>
<%--                            <button type="button" onclick="Insub()" class="btn1" style="width: 150px; margin-top: 10px; margin-left: 0"> 인증번호 인증</button>--%>
<%--                            <button type="button" onclick="Insubreset()" class="btn1" style="width: 150px; margin-top: 10px; margin-left: 0"> 취소</button>--%>
<%--                        </div>--%>
                    </div>

                    <div class="d-flex justify-content-center">
                        <button type="submit" class="login-btn" style="margin-top: 50px" >회원가입</button>
                    </div>

                </form>
                <!-- 생략 -->

                <button class="btn btn-primary w-100 py-2 mt-4" type="submit"> 회원가입 </button>
                <p class="d-flex justify-content-center mt-3"> 이미 회원이신가요? &nbsp; <a href="${path}/member/login" class="text-secondary"> 로그인하기 </a></p>
                </form>
            </main>
        </div>
        <script>
            var code = "";

            function PostEmail(){
                // alert("이메일이 전송중입니다. 잠시만 기다려주세요.")

                let params = {"email" : $("#email").val()};
                $("#email").attr("readonly","readonly");
                $(this).css("background-color","darkgray")

                $.ajax({
                    url:"/email",	//아이디가 전송되어질 곳
                    type:"post",
                    data:JSON.stringify(params),
                    dataType:"json",
                    contentType:"application/json",
                    success : function(mail) {
                        code = mail.code;
                        alert("인증번호가 전송되었습니다.");
                        $("#PostEmailbtn").css("display", "none")
                        $(".insubForm").css("display", "block");
                    }, error : function (err) {
                        alert("인증번호 전송에 실패하였습니다.");
                        $("#email").attr("readonly", false);
                        $("#email").focus();

                    }
                });
            }
            function Insub() {

                var insub = $("#insub").val();

                if(insub == code){
                    alert("인증번호가 일치합니다.")
                    $("#emailCK").val("Yes")
                    $(".insubForm").css("display", "none");
                } else {
                    alert("인증번호가 일치하지 않습니다.")
                    $("#insub").focus();
                }
            }

            function Insubreset(){
                $("#PostEmailbtn").css("display", "block")
                $(".insubForm").css("display", "none");
                $("#email").attr("readonly", false);
            }
        </script>
        <script>
            // 회원가입 정보를 서버로 전송하는 함수
            function submitForm() {
                // 폼 데이터를 직렬화하여 서버에 전송
                $.ajax({
                    url: "${path}/member/joinPro",
                    type: "POST",
                    data: $("#joinForm").serialize(), // 폼 데이터 직렬화
                    success: function(response) {
                        // 서버로부터의 응답 처리
                        alert("회원가입이 완료되었습니다.");
                        // 회원가입이 성공하면 다음 동작을 수행
                        // 예) 로그인 페이지로 이동
                        window.location.href = "${path}/member/login";
                    },
                    error: function(xhr, status, error) {
                        // 서버로부터의 오류 처리
                        alert("회원가입 중 오류가 발생했습니다.");
                        console.error(error);
                    }
                });
            }
        </script>
        <jsp:include page="../../include/footer/footer.jsp" />
</body>
</html>