<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>공지사항</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp" />
    <meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.1/css/dataTables.dataTables.css" />
    <script src="https://cdn.datatables.net/2.0.1/js/dataTables.js"></script>

    <style>
        .breadcrumb a { color: #464646; }
        .table {font-size: 1.25rem; border-top: 2px solid #dee2e6; border-bottom: 1px solid #dbdbdb;;}
        .table th {white-space: nowrap; background: #eff1f8;}
        .table td {white-space: nowrap;}
        .table td, .table th {padding: 0.75em 0.75em;}
        .item1 { width:6%; }
        .item2 { width:64%; }
        .item3 { width:10%; }
        .item4 { width:10%; }
        .item5 { width:10%; }
    </style>

</head>
<body>

<jsp:include page="../include/header.jsp"></jsp:include>

    <div class="row mt-3">
        <form action="/notice/list" method="get" class="col-md-8 offset-md-2">
        </form>
    </div>

    <div class="row mt-3" style="width: 50%; margin: 0 auto; padding-top: 100px; min-height: 70vh;" >
        <div class="col-md-8 offset-md-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">공지사항</h5>
                    <table class="table1 is-centered is-fullwidth" id="myTable1" >
                        <thead>
                        <tr>
                            <th class="item1" scope="col" style="text-align: center">번호</th>
                            <th class="item2" scope="col" style="text-align: center">제목</th>
                            <th class="item3" scope="col" style="text-align: center">작성자</th>
                            <th class="item4" scope="col" style="text-align: center">게시일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td></td>
                            <td>
                                <a href="" class="text-decoration-none"></a>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                    <script>
                        $(document).ready( function () {
                            $('#myTable1').DataTable({
                            });
                        });
                    </script>
                </div>
            </div>
            <div class="btn-group mt-3">
                <button type="button" class="btn btn-primary" onclick="location.href='/notice/register'">Add to POST</button>
            </div>
        </div>
    </div>
    <div class="modal" tabindex="-1">
        <!-- Modal content here -->
    </div>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>