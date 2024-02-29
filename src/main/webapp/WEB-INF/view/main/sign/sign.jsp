<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>


<div class="sign_form_back">
    <div class="sign_form">
        <form action="${path }/apply/register" method="post">
            <button class="close_btn" id="close_btn">X</button>
            <div class="sign_title">
                <h2> 신청 양식 폼</h2>
            </div>
            <div class="sign_top">
                <ul>
                    <h4>신청자 정보 <em>*</em></h4>
                    <hr>
                    <li class="sign_list">
                        <div class="sign_list_wrap">
                            <label class="sign_list_title" >신청 과목</label>
                            <label class="sign_list_title" for="name">이름</label>
                            <label class="sign_list_title" for="age">나이</label>
                            <label class="sign_list_title" for="tel">연락처</label>
                            <label class="sign_list_title" for="email">이메일</label>
                        </div>
                        <div class="sign_list_wrap">
                            <select name="subject" class="sign_list_input">
                                <option value="FullStack">풀스택(Java)</option>
                                <option value="BigData">빅데이터</option>
                                <option value="ProductManager">PM</option>
                            </select>
                            <input type="text" class="sign_list_input" name="name" id="name" required>
                            <input type="text" class="sign_list_input" name="age" id="age" required>
                            <input type="text" class="sign_list_input" name="tel" id="tel" required>
                            <input type="text" class="sign_list_input" name="email" id="email" required>
                        </div>
                    </li>

                    <h4>요청 사항 <em>*</em></h4>
                    <hr>
                    <li class="sign_list">
                        <div class="sign_list_wrap">
                            <div class="sign_list_title">
                                <textarea class="sign_list_textarea" cols="50" rows="5" name="comment" ></textarea>
                            </div>
                        </div>
                    </li>

                    <h4>개인 정보 이용 동의 <em>*</em></h4>
                    <hr>
                    <li class="sign_list">
                        <div class="sign_list_title">
                            <textarea class="sign_list_textarea" cols="50" rows="5"></textarea>
                        </div>
                        <div class="sign_list_title">
                            <input class="sign_list_chek" type="checkbox" id="sign_chek">
                            <label class="sign_list_chek" for="sign_chek">개인정보 수집 및 이용에 동의합니다.<em> (필수)</em></label>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="sign_bottom">
                <button type="submit" class="sign_btn"> 사전 예약 신청</button>
            </div>
        </form>
    </div>
</div>