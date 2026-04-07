<%--
  Created by IntelliJ IDEA.
  User: TRANG
  Date: 4/7/2026
  Time: 7:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Danh sách nhân viên</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 30px auto;
        }
        th, td {
            border: 1px solid #333;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #ddd;
        }
    </style>
</head>
<body>

<h2 style="text-align:center;">Danh sách nhân viên phòng Đào tạo</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Họ tên</th>
        <th>Phòng ban</th>
        <th>Lương</th>
        <th>Đánh giá</th>
    </tr>

    <c:forEach var="emp" items="${employees}">
        <tr>
            <td>${emp.id}</td>
            <td>${emp.fullName}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>

            <td>
                <c:choose>
                    <c:when test="${emp.salary >= 10000}">
                        Mức lương cao
                    </c:when>
                    <c:otherwise>
                        Mức lương cơ bản
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
