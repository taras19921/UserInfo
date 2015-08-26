<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script
        src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
<c:forEach items="${userList}" var="user">
    <tr id="tr_${user.id}">
        <td>${user.userId}</td>
        <td>${user.firstname}</td>
        <td>${user.lastname}</td>
        <td>${user.email}</td>
        <td>${user.phone}</td>
    </tr>
</c:forEach>