<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Huddson
  Date: 29.12.2018
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="styles/styles.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Title</title>
</head>
<body>

<div class="registration">
    <div class="container text-center">
        <div class="container margin-top">
            <c:if test="${loginIsExist == true}">
                <div class="text-danger">
                    <h2> Login is exist </h2>
                </div>
            </c:if>
            <c:if test="${balanceNotValid == true}">
                <div class="text-danger">
                    <h2> Balance must be a number and more than 0 </h2>
                </div>
            </c:if>

            <div class="text-info text-center">
                <h3>Registration new User</h3>
            </div>
            <form name="registration" method="post" action="/registration" onsubmit="return validateBalance()">
                <div class="container">
                    <hr>
                    <div class="col-md-12">
                        <div class="col-md-offset-3">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label>Login :</label></div>
                                <div class="col-xs-3">
                                    <input type="text" name="login" required placeholder="Enter your login">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-offset-3">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label>Password :</label></div>
                                <div class="col-xs-3">
                                    <input type="password" name="password" required placeholder="Enter your Password">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-offset-3">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label class="mail">First Name :</label></div>
                                <div class="col-xs-3">
                                    <input type="text" name="name" required placeholder="Enter your Name">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-offset-3">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label>Surname :</label></div>
                                <div class="col-xs-3">
                                    <input type="text" name="surname"
                                           required placeholder="Enter your Surname">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-offset-3">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label>Balance :</label></div>
                                <div class="col-xs-3">
                                    <input type="text" name="balance"
                                           required placeholder="Enter your Balance">
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-offset-1 margin-top-5">
                            <input class="btn btn-lg btn-success" type="submit" value="Register">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function validateBalance() {
        var balance = document.registration.balance.value;
        if (isNaN(balance)) {
            alert("Balance must be a number");
            return false;
        } else if (balance < 0) {
            alert("Balance can`t be less than 0");
            return false;
        }
    }
</script>


</body>
</html>
