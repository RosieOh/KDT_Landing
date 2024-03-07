<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

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