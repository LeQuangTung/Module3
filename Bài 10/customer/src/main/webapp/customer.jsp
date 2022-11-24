
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer list</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<table>
    <tr>
        <th colspan="4"><h1>Danh sách khách hàng</h1></th>
    </tr>
    <tr>
        <td>Tên</td>
        <td>Ngày sinh</td>
        <td>Địa chỉ</td>
        <td>Ảnh</td>
    </tr>
    <c:forEach items="${customers}" var="c">
        <tr>
            <td><c:out value="${c.getName()}"/></td>
            <td><c:out value="${c.getDob()}"/></td>
            <td><c:out value="${c.getAddress()}"/></td>
            <td><img width="10%" src="${c.getAvatar()}"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>