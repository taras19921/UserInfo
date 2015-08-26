<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add User</title>
    <link href="${pageContext.request.contextPath}/resources/css/style.css">

    <script src="ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

    <script src="<c:url value="/resources/js/addUser.js"/>"></script>
</head>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                Add User
            </h3>
        </div>
        <div class="panel-body">
            <form:form id="userRegisterForm" cssClass="form-horizontal" modelAttribute="user" method="post" action="saveUser">

                <fieldset style="margin: 0 auto; text-align: left; width: 40%">
                    <legend><b>Add User</b></legend>
                    <table border="0" style="margin: 0 auto; text-align: left; width: 70%">
                        <tr>
                            <th style="width: 30%; text-align: right">Document:</th>
                            <td style="width: 70%; text-align: right"> <input type="number" name="number" style="width: 98.5%" /></td>
                        </tr>
                        <tr>
                            <th style="width: 30%;text-align: right">Password:</th>
                            <td style="width: 70%; text-align: right"> <input type="password" name="password" style="width: 98.5%" /></td>
                        </tr>
                        <tr>
                            <th style="width: 30%;text-align: right">Firstname:</th>
                            <td style="width: 70%; text-align: right"> <input type="text" required name="firstname" style="width: 98.5%" /></td>
                        </tr>
                        <tr>
                            <th style="width: 30%;text-align: right">Lastname:</th>
                            <td style="width: 70%; text-align: right"><input type="text" required name="lastname" name="lastname" style="width: 98.5%" /></td>
                        </tr>
                        <tr>
                            <th style="width: 30%;text-align: right">Email:</th>
                            <td style="width: 70%; text-align: right"><input type="email" name="email" style="width: 98.5%" /></td>
                        </tr>
                        <tr>
                            <th style="width: 30%;text-align: right">Phone:</th>
                            <td style="width: 70%; text-align: right"><input type="number" required name="phone" style="width: 98.5%" /></td>
                        </tr>
                        <tr>
                            <td style="width: 30%;text-align: center" colspan="2" >
                                <input type="submit" name="action" onclick="passAction(this.value)" value="Save" />
                                <input type="submit" name="action" onclick="passAction(this.value)" value="Search"/>
                                <input type="submit" name="action" onclick="passAction(this.value)" value="Edit" />
                                <input type="submit" name="action" onclick="passAction(this.value)" value="Remove"/>
                                <input type="reset" value="Restore" />
                            </td>
                        </tr>
                    </table>
                </fieldset>

            </form:form>
        </div>
    </div>
</div>

</body>
</html>
