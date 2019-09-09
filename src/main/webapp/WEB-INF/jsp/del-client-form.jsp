<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Удаление клиента</h1>
        <form:form action="save-del-client" method="post" modelAttribute="client">
            <input type="text" name="client_id" placeholder="Введите ID клиента" />
            <input type="submit" value="Удалить клиента" />
        </form>
        <br><br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>