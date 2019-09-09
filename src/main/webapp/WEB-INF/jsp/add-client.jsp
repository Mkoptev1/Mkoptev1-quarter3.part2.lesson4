<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Добавить клиента</h1>
        <br>
        <form:form action="save-client" method="post" modelAttribute="client">
            <form:hidden path="client_id" />
            Имя клиента: <form:input path="client_name" />
            <br><br>
            <input type="submit" value="Сохранить" />
        </form:form>
        <br>
        <a href="${pageContext.request.contextPath}/">На главную</a>
    </body>
</html>
