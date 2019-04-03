<%--
  Created by IntelliJ IDEA.
  User: alexanderkloster
  Date: 3/25/19
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty sessionScope.locale}">
    <c:set var="locale" value="ru" scope="session"/>
</c:if>
<fmt:setLocale value="${locale}" scope="session"/>
<fmt:setBundle basename="message" var="msgs"/>
<fmt:setBundle basename="jsp" var="jsp"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Registration</title>
    <script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/resources/js/app.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
          integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
            integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
            crossorigin="anonymous"></script>
</head>
<body>

<div class="header">
    <ul>
        <li><a href=<fmt:message bundle="${jsp}" key="jsp.index"/>><fmt:message bundle="${msgs}" key="menu.main"/></a>
        </li>
        <li><a href=<fmt:message bundle="${jsp}" key="jsp.about"/>><fmt:message bundle="${msgs}" key="menu.about"/></a>
        </li>
        <li><a href=<fmt:message bundle="${jsp}" key="jsp.contacts"/>><fmt:message bundle="${msgs}"
                                                                                   key="menu.contact"/></a></li>
        <br/><br/>
        <img src="/resources/images/zepter_logo_color.png" alt="Emblem" width="413"/>
    </ul>
</div>

<div class="layout">

    <div class="col1">Колонка 1
    </div>


    <div class="col2">

        <div class="col-md-5" align="center">

            <form id="resiter">
                <div class="container">
                    <fieldset><h1>Register</h1>
                        <br/>
                        <p class="text-uppercase" align="center"><fmt:message bundle="${msgs}" key="user.regist"/></p>

                        <p>Please fill in this form to create an account.</p>

                        <hr>

                        <label for="name"><b><fmt:message bundle="${msgs}" key="user.name"/></b></label>
                        <input type="text" name="name" id="name" class="form-control input-lg" required
                               placeholder="<fmt:message bundle="${msgs}" key="user.name"/>">
                        <br/>

                        <label for="login"><b><fmt:message bundle="${msgs}" key="user.login"/></b></label>
                        <input type="text" name="login" id="login" class="form-control input-lg" required
                               pattern="[a-zA-Z0-9\s]+" placeholder="<fmt:message bundle="${msgs}" key="user.login"/>">
                        <br/>
                        <label for="password"><b><fmt:message bundle="${msgs}" key="user.password"/></b></label>
                        <input type="password" name="password" id="password" class="form-control input-lg" required
                               placeholder="<fmt:message bundle="${msgs}" key="user.password"/>">

                        <br/>
                        <label for="password_repeat"><b><fmt:message bundle="${msgs}"
                                                                     key="user.password_repeat"/></b></label>
                        <input type="password" name="password_repeat" id="password_repeat" class="form-control input-lg"
                               required
                               placeholder="<fmt:message bundle="${msgs}" key="user.password_repeat"/>">

                        <input type="submit" class="btn btn-md" align="left" value="<fmt:message
                            bundle="${msgs}" key="user.regist"/>" formaction="/register" formmethod="post">

                    </fieldset>
                </div>

                <div class="container signin">
                    <p>Already have an account? <a href="#" onclick="history.back()">Sign in</a>.</p>
                </div>
            </form>
            <c:if test="${not empty error}">
                <c:if test="${error=='Password!!!' }">
                    <c:out value="password error"/>
                </c:if>
                <c:if test="${error=='login!!!' }">
                    <c:out value="login error"/>
                </c:if>
            </c:if>
        </div>


    </div>
    <div class="col3">

    </div>
</div>

</body>
</html>
