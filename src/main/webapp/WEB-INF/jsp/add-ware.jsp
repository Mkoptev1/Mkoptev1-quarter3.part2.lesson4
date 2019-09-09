<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Добавить товар</h1>
        <br>
        <form:form action="save-ware" method="post" modelAttribute="ware">
            <form:hidden path="ware_id" />
            Наименование товара: <form:input path="ware_name" />
            <br><br>
            Цена товара: <form:input path="ware_cost" />
            <br><br>
            <input type="submit" value="Сохранить" />
        </form:form>
        <br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>
