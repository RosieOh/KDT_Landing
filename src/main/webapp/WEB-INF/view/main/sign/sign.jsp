<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<div class="sign_form_back">
    <div class="sign_form">
        <form action="${path }/apply/register" method="post">
            <div class="sign_title">
                <h1>사전알림 신청</h1>
                <button class="close_btn" id="close_btn">X</button>
            </div>
            <div class="sign_top">
                <ul>
                    <li class="sign_list">
                        <h3>[천재교육] 천재IT교육센터 사전알림 신청</h3>
                        <p>
                            안녕하세요, 천재IT교육센터입니다.
                            <br>
                            저희 교육과정에 관심을 가지고 신청 주셔서 감사합니다.
                            <br>
                            신청 정보를 남겨주시면 지원하고자 하는 교육과정의 오픈 소식을 가장 먼저 알려드릴게요.
                        </p>
                    </li>
                    <li class="sign_list">
                        <div class="sign_list_wrap">
                            <label class="sign_list_title" for="name">이름<em>*</em></label>
                            <input type="text" class="sign_list_input" name="name" id="name" required>
                        </div>
                    </li>
                    <li class="sign_list">
                        <div class="sign_list_wrap">
                            <label class="sign_list_title" for="tel">연락처<em>*</em></label>
                            <input type="text" class="sign_list_input" name="tel" id="tel" required>
                        </div>
                    </li>
                    <li class="sign_list">
                        <div class="sign_list_wrap">
                            <label class="sign_list_title" for="email">이메일<em>*</em></label>
                            <input type="text" class="sign_list_input" name="email" id="email" required>
                        </div>
                    </li>
                    <li class="sign_list">
                        <div class="sign_list_wrap">
                            <label class="sign_list_title" >신청 과목<em>*</em></label>
                            <select name="subject" class="sign_list_input">
                                <option value="FullStack">풀스택(Java)</option>
                                <option value="BigData">빅데이터</option>
                                <option value="ProductManager">PM</option>
                            </select>
                        </div>
                    </li>
                    <li class="agree">
                        <div class="agree_wrap">
                            <h4>개인정보 수집 및 이용 동의
                                <a href="javascript:;" class="toggle">▼ 내용보기</a>
                            </h4>
                            <div class="scroll_wrap" >
                                <div class="scrollBox">
                                    <p>당사는 귀하의 개인정보보호를 매우 중요시하며,『개인정보보호법』상의 개인정보보호 규정을 준수하고 있습니다.</p>
                                    <h5>1. 개인정보의 수집•이용 목적</h5>
                                    <ul>
                                        <li>- 홈페이지 내 무료상담신청 메뉴를 통한 수집</li>
                                        <li>- 맞춤식 종합 교육서비스의 제공</li>
                                    </ul>
                                    <h5>2. 수집•이용하는 개인정보 항목</h5>
                                    <ul>
                                        <li>- 필수항목 : 이름(자녀이름), 연령, 전화번호</li>
                                        <li>- 선택항목 : 주소, 상담내용</li>
                                    </ul>
                                    <h5>3. 개인정보의 보유 및 이용기간 </h5>
                                    <p>회사는 개인정보의 수집 및 이용 목적을 달성할 때까지 고객이 제공한 모든 개인 정보를 보유 및 이용하게 되며 고객이 이용동의를 철회하는 경우에는 고객의 개인 정보를 재생 불가능한 방법으로 지체 없이 저장 장치에서 삭제하여 어떠한 방법으로도 열람 또는 이용할 수 없도록 만듭니다.<br>다만, 관계법령에서 일정한 보관기간을 정한 경우는 예외로 합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.</p>
                                    <ul>
                                        <li>- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</li>
                                        <li>- 방문에 관한 기록 : 3개월</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <div class="agree_check">
                        <input class="sign_list_chek" type="checkbox" id="sign_chek">
                        <label class="sign_list_chek" for="sign_chek">개인정보 수집 및 이용에 동의합니다.<em> (필수)</em></label>
                    </div>
                </ul>
            </div>
            <div class="sign_bottom">
                <button type="submit" class="sign_btn"> 사전 예약 신청</button>
            </div>
        </form>
    </div>
</div>