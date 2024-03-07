<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

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
<section class="container">
    <div class="intro column is-8 is-offset-2">
        <h4 class="title_1 test_2">REVIEW</h4>
        <h2 class="title">수료생 111명은 이미 "천재" 에서<br/>
            새로운 커리어 전환점을 찾았어요!!
        </h2><br>
        <p class="subtitle" style="font-size: 15px;">2023년 <b>수료생 111명 인턴 전환!</b>
            <br/>
            천재IT교육센터에서 2024년 새로운 커리어를 준비하세요
        </p>
        <div class="columns is-centered">
            <div class="column">
                <div class="card">
                    <div class="card-image">
                        <figure class="image is-2by1 image_section">
                            <img src="https://images.pexels.com/photos/167635/pexels-photo-167635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Placeholder image">
                        </figure>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-image">
                        <figure class="image is-2by1 image_section">
                            <img src="https://images.pexels.com/photos/167635/pexels-photo-167635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Placeholder image">
                        </figure>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-image">
                        <figure class="image is-2by1 image_section">
                            <img src="https://images.pexels.com/photos/167635/pexels-photo-167635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Placeholder image">
                        </figure>
                    </div>
                </div>
                <p class="subtitle" style="font-size: 15px; margin-top: 50px">클릭해 더 많은 수강 후기를 확인하세요&nbsp;&nbsp;&nbsp;&nbsp;<b>></b></p>
            </div>
        </div>
    </div>
</section>