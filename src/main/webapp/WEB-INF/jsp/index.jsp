<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Добро пожаловать в магазин</h1>
        <br><br>
        <a href="${pageContext.request.contextPath}/clients/client-list">Список клиентов</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/ware/ware-list">Список товаров</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/clients/add-client">Добавить клиента</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/ware/add-ware">Добавить товар</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/ware/search-ware-by-client-form">Показать товары по клиенту</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/clients/search-client-by-ware-form">Показать клиентов по товару</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/clients/del-client-form">Удалить клиента</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/ware/del-ware-form">Удалить товар</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/clients/rep-form-client-ware">Показать отчет по заказам</a>
    </body>
</html>