<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<footer class="ft" id="ft">
    <div class="ft_wrap">
        <nav class="ft_link">
            <ul class="fnb">
                <li><a style="background: none" href="">제휴문의</a></li>
                <li><a style="background: none" href="">개인정보처리방침</a></li>
                <li><a style="background: none" href="">이용약관</a></li>
                <li><a style="background: none" href="">이메일무단수집거부</a></li>
            </ul>
            <ul class="snb">
                <%--<li><a href="https://www.facebook.com/geniaAcademyManager">소셜2</a></li>--%>
                <li>
                    <a style="background: none" href="https://www.instagram.com/genia.academy" target="_blank">
                        <i class="xi-instagram"></i>
                    </a>
                </li>
                <li>
                    <a style="background: none" href="https://www.facebook.com/geniaAcademyManager" target="_blank">
                        <i class="xi-facebook"></i>
                    </a>
                </li>
                <li>
                    <a style="background: none"     href="https://blog.naver.com/chunjae2023" target="_blank">
                        <i class="xi-naver"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <script>
            function loc() {
                var url = document.getElementById("sel").value;
                //location.href = url;  //현재 창에
                if (url != "") {
                    var win = window.open(url); //새창에
                }
            }
        </script>
    </div>
    <div class="ft_wrap2">
        <p class="copyright">
            <span>(주)천재교육</span>
            <span>서울시 금천구 가산로9길 54</span>
            <span>대표자 강희철</span>
            <span>사업자등록번호 000-00-000000</span>
            <span>통신판매신고번호 제00-000호</span>
            <span class="end">부가통신사업신고 0000000</span>
        </p>
        <p class="copyright">
            <span>내용추천부탁드립니다. 1577-0902</span>
            <span>내용추천부탁드립니다. 1577-0218</span>
            <span>내용추천부탁드립니다. 1577-6226</span>
            <span>내용추천부탁드립니다. 1577-1533</span>
        </p>
        <p class="locate">
            <select name="sel" id="sel" onchange="loc()">
            </select>
        </p>
        <p class="cp">COPYRIGHT ⓒ 2023 BY CHUNJAE CO.,LTD ALL RIGHTS RESERVED</p>
    </div>
</footer>