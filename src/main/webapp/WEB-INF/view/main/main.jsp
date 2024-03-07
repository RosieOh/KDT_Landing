<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hero - Free Bulma template</title>
    <link rel="shortcut icon" href="../images/fav_icon.png" type="image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.4/css/bulma.min.css" />
    <link rel="stylesheet" type="text/css" href="./hero.css">
    <link rel="stylesheet" type="text/css" href="./test.css">
    <link rel="stylesheet" href="https://unpkg.com/bulma-modal-fx/dist/css/modal-fx.min.css" />
</head>
<body>


<%--Main Contents --%>
<div class="main">
    <jsp:include page="../../view/include/header.jsp" />

    <div class="container">
        <!-- banner -->
        <jsp:include page="./banner/banner.jsp" />

        <!-- section 1 -->
        <jsp:include page="./section/section1.jsp" />
        <jsp:include page="./section/section2.jsp" />
        <jsp:include page="./section/section3.jsp" />
        <jsp:include page="./section/section4.jsp" />

        <%-- faq --%>
        <jsp:include page="./faq/faq.jsp"/>
    </div>
</div>

<!-- sign Form -->
<jsp:include page="./sign/sign.jsp" />

<!-- footer -->
<jsp:include page="../include/footer.jsp" />

<!-- Section 1 - 텍스트 -->


<!-- Section 1 - 텍스트 -->


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

    <!-- Benefit Section -->
    <section class="section">
        <div class="container">
            <div class="sandbox">
                <h4 class="title_1 test_1">BENEFITS</h4>
                <h2 class="title">IT직무 취준이 처음이세요?
                </h2><br>
                <p class="subtitle" style="font-size: 15px;">떠먹여주는 &nbsp;<b>갓생취업루틴!</b>
                    <br/>
                    교육에만 몰입하세요!
                </p>
            </div>
            <div class="columns is-multiline">

                <div class="column is-one-third multiline_box_1">
                    <article class="notification media has-background-white" style="height:300px; margin-bottom:-5px;">
                        <div class="media-content">
                            <div class="content" style="padding-left: 10px;">
                                <h1 class="title is-size-4" style="padding-top: 20px;">0원</h1>
                                <p class="benefit_sub">
                                    전액 국비지원으로 교육비 0원, <br/>
                                    PC 및 교재 지원, 식사 제공
                                </p>
                            </div>
                            <div style="float: right; padding-top:70px;">
                                <figure class="media-left" style="float: right;">
                            <span class="icon has-text-grey" style="float: right;">
                              <i class="fa fa-lg fa-cogs"  style="float: right;""></i>
                            </span>
                                </figure>
                            </div>
                    </article>
                </div>

                <div class="column is-one-third multiline_box_1"  style="margin: -5px;">
                    <article class="notification has-background-white media" style="height:300px; margin-bottom:-5px;">
                        <div class="media-content">
                            <div class="content" style="padding-left: 10px;">
                                <h1 class="title is-size-4" style="padding-top: 20px;">2023년 인턴 111명</h1>
                                <p class="benefit_sub">
                                    내부 평가 결과에 따른
                                    <br/>
                                    인턴 및 직원 전환 기회 제공
                                </p>
                            </div>
                            <div style="float: right; padding-top:70px;">
                                <figure class="media-left" style="float: right;">
                            <span class="icon has-text-grey" style="float: right;">
                              <i class="fa fa-lg fa-cogs"  style="float: right;""></i>
                            </span>
                                </figure>
                            </div>
                    </article>
                </div>
                <div class="column is-one-third"  style="margin: -5px;">
                    <article class="notification has-background-white media" style="height:300px; margin-bottom:-5px;">
                        <div class="media-content">
                            <div class="content" style="padding-left: 10px;">
                                <h1 class="title is-size-4" style="padding-top: 20px;">오프라인 몰입도 100%</h1>
                                <p class="benefit_sub">
                                    09:00 ~ 21:00 무료 개방되는
                                    <br/> 교육시설에서 오프라인 교육으로 완전 몰입
                                </p>
                            </div>
                            <div style="float: right; padding-top:30px;">
                                <figure class="media-left" style="float: right;">
                            <span class="icon has-text-grey" style="float: right;">
                              <i class="fa fa-lg fa-cogs"  style="float: right;""></i>
                            </span>
                                </figure>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="column is-one-third"  style="margin: -5px;">
                    <article class="notification has-background-white media" style="height: 300px;">
                        <div class="media-content">
                            <div class="content">
                                <h1 class="title is-size-4"  style="padding-top: 20px;">현직자의 현장강의</h1>
                                <p class="benefit_sub">
                                    현직 실무자의 현장강의로
                                    <br/>
                                    실무에 필요한 내용만 전략적으로 학습
                                </p>
                            </div>
                            <div style="float: right; padding-top:70px;">
                                <figure class="media-left" style="float: right;">
                            <span class="icon has-text-grey" style="float: right;">
                              <i class="fa fa-lg fa-cogs"  style="float: right;""></i>
                            </span>
                                </figure>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="column is-one-third"  style="margin: -5px;">
                    <article class="notification has-background-white media" style="height: 300px">
                        <div class="media-content">
                            <div class="content">
                                <h1 class="title is-size-4" style="padding-top: 20px;">나를 위한 6개월</h1>
                                <p class="benefit_sub">
                                    3개월, 4개월만에
                                    <br/>
                                    현업 투입 가능한 개발자가 된다?
                                    <br/>
                                    진짜 개발자가 되기 위한 충분한 투자
                                </p>
                            </div>
                            <div style="float: right; padding-top:50px;">
                                <figure class="media-left" style="float: right;">
                            <span class="icon has-text-grey" style="float: right;">
                              <i class="fa fa-lg fa-cogs"  style="float: right;""></i>
                            </span>
                                </figure>
                            </div>
                    </article>
                </div>
                <div class="column is-one-third"  style="margin: -5px;">
                    <article class="notification has-background-white media" style="height: 300px;">
                        <div class="media-content">
                            <div class="content">
                                <h1 class="title is-size-4" style="padding-top: 20px;">실무 프로젝트 10개</h1>
                                <p class="benefit_sub">
                                    약 10개의 실무 프로젝트로
                                    <br/>
                                    6개월 뒤 탄탄해진 포트폴리오
                                </p>
                            </div>
                            <div style="float: right; padding-top:70px;">
                                <figure class="media-left" style="float: right;">
                            <span class="icon has-text-grey" style="float: right;">
                              <i class="fa fa-lg fa-cogs"  style="float: right;""></i>
                            </span>
                                </figure>
                            </div>
                    </article>
                </div>
            </div>
        </div>

        <div class="container">
            <!-- 제목 -->
            <div class="sandbox">
                <h4 class="title_1 test_1">BENEFITS</h4>
                <h2 class="title">새로운 커리어 전환점, 천재IT교육센터와 함께 하세요.</h2>
                <p class="subtitle" style="font-size: 15px; padding-top: 20px;">신청 및 개강 안내</p>
            </div>

            <div class="columns is-multiline">
                <div class="container" style="padding-left: 20px;">
                    <div class="columns" style="padding-bottom:50px;">

                        <!-- 신청 기간 -->
                        <div class="column">
                            <div class="content">
                                <h4 class="title is-5" style="color:#553BF3; padding-left: 10px; margin-bottom:10px;">신청 기간</h4>
                                <div style="height: auto; width: 100%; border-top:1px solid #553BF3;">
                                    <div style="display: flex;">이모티콘자리
                                        <div style="padding-top: 20px; padding-left: 20px;">2024년 03월 05일 ~ 2024년 04월 19일</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 지원 방법 -->
                        <div class="column">
                            <div class="content">
                                <h4 class="title is-5" style="color:#553BF3; padding-left: 10px; margin-bottom:10px;">지원 방법</h4>
                                <div style="height: auto; width: 100%; border-top:1px solid #553BF3;">
                                    <div style="display: flex;">이모티콘자리
                                        <div style="padding-top: 20px; padding-left: 20px;">
                                            1. 서류 심사 : 신청폼 작성<br/>
                                            2. 면접 심사 : 대면 혹은 비대면 인터뷰 진행<br/>
                                            3. 합격자 발표 : 개별 통보
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="columns" style="padding-bottom:50px;">

                        <!-- 교육 기간 -->
                        <div class="column">
                            <div class="content">
                                <h4 class="title is-5" style="color:#553BF3; padding-left: 10px; margin-bottom:10px;">교육 기간</h4>
                                <div style="height: auto; width: 100%; border-top:1px solid #553BF3;">
                                    <div style="display: flex;">이모티콘자리
                                        <div style="padding-top: 20px; padding-left: 20px;">2024년 04월 23일 ~ 2024년 10월 29일</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 참여 대상 -->
                        <div class="column">
                            <div class="content">
                                <h4 class="title is-5" style="color:#553BF3; padding-left: 10px; margin-bottom:10px;">참여 대상</h4>
                                <div style="height: auto; width: 100%; border-top:1px solid #553BF3;">
                                    <div style="display: flex;">이모티콘자리
                                        <div style="padding-top: 20px; padding-left: 20px;">1. 국민내일배움카드 보유 혹은 발급 가능한 자<br/>2. K-Digital Training 수강 이력이 없는 자</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</section>
</body>
</html>
