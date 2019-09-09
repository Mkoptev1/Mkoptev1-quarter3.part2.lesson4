<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Поиск клиентов по товару</h1>
        <form action="search-user-by-ware-result" method="GET">
            <input type="text" name="ware_id" placeholder="Введите ID товара" />
            <input type="text" name="ware_name" placeholder="Введите наименование товара" />
            <input type="submit" value="Найти клиентов" />
        </form>
        <br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>