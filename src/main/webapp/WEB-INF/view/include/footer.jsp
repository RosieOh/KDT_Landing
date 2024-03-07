<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<footer class="ft" id="ft">
    <div class="ft_wrap">
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
            <span>(주)TeamLimked</span>
            <span>서울시 금천구 가산로9길 54</span>
            <span>대표자 강희철</span>
            <span>사업자등록번호 </span>
            <span>통신판매신고번호 </span>
            <span class="end">부가통신사업신고 </span>
        </p>

        <p class="locate">
            <select name="sel" id="sel" onchange="loc()">
                <option value="">FAMILY LINK</option>
                <option value=""></option>
                <option value=""></option>
                <option value=""></option>
                <option value=""></option>
                <option value=""></option>
            </select>
        </p>
        <p class="cp">COPYRIGHT 2023 Chunjae EDUCATION INC. ALL RIGHTS RESERVED.</p>
    </div>

    <a href="#main" class="gotop" id="gotop">▲</a>

</footer>