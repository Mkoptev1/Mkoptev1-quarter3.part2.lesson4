<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Клиент сохранен</h1>
        <br>
        ID клиента: ${client.id}
        <br>
        Имя клиента: ${client.title}
        <br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>