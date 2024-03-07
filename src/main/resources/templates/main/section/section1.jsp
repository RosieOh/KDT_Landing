<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>


<!-- Section 1 - 텍스트 -->
<section class="container">
    <div class="hero-body">
        <div class="container index_section">
            <h4 class="title_1 test_1">Education</h4>
            <h1 class="title title_sub_1">기업에서 직접 운영하는 탄탄한 부트캠프, <br/>
                찾으셨나요?
            </h1>

            <h4 class="title_1 title_sub_1">대한민국 1위 교육 출판 전문 기업 (주)천재교육에서
                <br/>
                직접 운영하는 K-디지털 트레이닝 교육기관 천재IT교육센터입니다.
            </h4>

        </div>
    </div>

    <!-- Section 1 - 카드 -->
    <div class="columns features">
        <div class="column is-4" >
            <div class="card is-shady" style="border-radius: 20px;">
                <div class="card-image has-text-centered">
                    <i class="fa fa-paw"></i>
                </div>
                <div class="card-content" style="">
                    <div class="content">
                        <h4 class="course_title" style="text-align: left;">에듀테크 AI, 빅데이터 개발자 교육 과정 </h4>
                    </div>
                    <button class="course_button">접수하기</button>
                </div>
            </div>
        </div>
        <div class="column is-4">
            <div class="card is-shady" style="border-radius: 20px;">
                <div class="card-image has-text-centered" >
                    <i class="fa fa-empire"></i>
                </div>
                <div class="card-content">
                    <div class="content" style="text-align: left;">
                        <h4 class="course_title" style="text-align: left;">에듀테크 JAVA 풀스택 개발자 교육과정 </h4>
                    </div>
                    <button class="course_button">접수하기</button>
                </div>
            </div>
        </div>
        <div class="column is-4">
            <div class="card is-shady" style="border-radius: 20px;">
                <div class="card-image has-text-centered">
                    <i class="fa fa-apple"></i>
                </div>
                <div class="card-content">
                    <div class="content">
                        <h4 class="course_title">에듀테크 PM(서비스, 콘텐츠 기획자) 교육과정</h4>
                    </div>
                    <button class="course_button">접수하기</button>
                </div>
            </div>
        </div>
    </div>
</section>