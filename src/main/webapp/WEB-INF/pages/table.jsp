<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>

    <title>Search Player</title>

    <link href="${pageContext.request.contextPath}/resources/css/style.css">

    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>

    <script src="<c:url value="/resources/js/addUser.js"/>"></script>
</head>
<body>
<div id="container">
    <h2>Find Player By Name</h2>

    <label for="searchUser">Search</label>
    <input type="text" id="searchUser" name="searchUser">
    <div id="info"></div>
    <table id="loadTable" class="table tr">
        <thead>
        <tr>
            <th>Id</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        </thead>
        <tbody id="tbody">
        <jsp:include page="searchUser.jsp"/>
        </tbody>
    </table>
</div>
</body>
</html>
