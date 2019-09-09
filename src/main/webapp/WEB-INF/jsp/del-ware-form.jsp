<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Удаление товара</h1>
        <form:form action="save-del-ware" method="post" modelAttribute="ware">
            <input type="text" name="ware_id" placeholder="Введите ID товара" />
            <input type="submit" value="Удалить товар" />
        </form>
        <br><br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>