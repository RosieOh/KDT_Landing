<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<head>
    <title>천재 IT 교육센터</title>
    <jsp:include page="../include/head.jsp" />
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


</body>
</html>