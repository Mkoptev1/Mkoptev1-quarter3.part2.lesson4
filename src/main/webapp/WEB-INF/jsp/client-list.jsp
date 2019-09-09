<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<body>
    <h1>Список клиентов</h1>
    <br>
    <table>
        <tr>
            <th>ID клиента</th>
            <th>Имя клиента</th>
        </tr>
        <c:forEach var="crsClient" items="${clients}">
            <tr>
                <td>${crsClient.client_id}</td>
                <td>${crsClient.client_name}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="${pageContext.request.contextPath}/">На главную</a>
</body>
</html>