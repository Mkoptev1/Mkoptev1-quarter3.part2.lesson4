<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Поиск товаров по клиенту</h1>
        <form action="search-ware-by-user-result" method="GET">
            <input type="text" name="client_id" placeholder="Введите ID клиента" />
            <input type="text" name="client_name" placeholder="Введите имя клиента" />
            <input type="submit" value="Найти товары" />
        </form>
        <br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>