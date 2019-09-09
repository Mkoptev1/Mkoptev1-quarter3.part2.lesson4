<%@page contentType="text/html;charset=UTF-8" language="java"%>
<html>
    <body>
        <h1>Результаты поиска товаров по клиенту</h1>
        <br>
        ID товара: ${ware.ware_id}
        <br>
        Наименование товара: ${ware.ware_name}
        <br>
        Цена товара: ${ware.ware_cost}
        <br>
        <br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>