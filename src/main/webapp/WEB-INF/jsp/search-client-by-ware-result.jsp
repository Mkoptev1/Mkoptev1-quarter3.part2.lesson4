<%@page contentType="text/html;charset=UTF-8" language="java"%>
<html>
    <body>
        <h1>Результаты поиска клиентов по товару</h1>
        <br>
        ID клиента: ${client.client_id}
        <br>
        Имя клиента: ${client.client_name}
        <br>
        <br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>