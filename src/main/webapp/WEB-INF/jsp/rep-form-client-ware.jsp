<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<body>
    <h1>Отчет по заказам</h1>
    <br>
    <table>
        <tr>
            <th>ID клиента</th>
            <th>Имя клиента</th>
            <th>Наименование товара клиента</th>
            <th>Цена товара</th>
        </tr>
        <c:forEach var="crsClientOrder" items="${clientsOrder}">
            <tr>
                <td>${crsClientOrder.client_id}</td>
                <td>${crsClientOrder.client_name}</td>
                <td>${crsClientOrder.ware_name}</td>
                <td>${crsClientOrder.ware_cost}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="${pageContext.request.contextPath}/">На главную</a>
</body>
</html>