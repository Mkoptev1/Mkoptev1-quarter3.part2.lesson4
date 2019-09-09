<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Сохранить товар</h1>
        <br>
        ID товара: ${ware.ware_id}
        <br>
        Наименование товара: ${ware.ware_name}
        <br>
        Цена товара: ${ware.ware_cost}
        <br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>