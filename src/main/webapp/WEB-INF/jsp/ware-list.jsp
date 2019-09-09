<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<body>
    <h1>Список товаров</h1>
    <br>
    <table>
        <tr>
            <th>ID товара</th>
            <th>Наименование товара</th>
            <th>Цена товара</th>
        </tr>
        <c:forEach var="crsWare" items="${ware}">
            <tr>
                <td>${crsWare.ware_id}</td>
                <td>${crsWare.ware_name}</td>
                <td>${crsWare.ware_cost}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="${pageContext.request.contextPath}/">На главную</a>
</body>
</html>