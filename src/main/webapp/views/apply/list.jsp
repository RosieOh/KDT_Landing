<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
    <title>applyList</title>

</head>
<body>
<h2>Apply List</h2>
<c:forEach items="${applyDTOList }" var="apply" varStatus="status">
    <tr>
        <td class="has-text-centered">${status.count }</td>
        <td class="has-text-centered">${apply.name }</td>
        <td class="has-text-centered">
            <fmt:parseDate value="${notice.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
            <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
        </td>
        <td class="has-text-centered">${notice.visited }</td>
    </tr>
</c:forEach>

</body>
</html>
