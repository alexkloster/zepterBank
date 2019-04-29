<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=Cp1251" pageEncoding="Cp1251" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <meta http-equiv="content-type" content="text/html; charset=cp1251">
    <title>tecno-tab | home</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="page-container bg-light">
    <div class="content-wrap bg-white">
        <div role="navigation">
            <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                <div class="container">
                    <a class="navbar-brand" href="/user/userPage">
                        <img src="static/images/logo.png" alt="" height="50">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="/userPage"><i class="fa fa-home"></i> </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/payment">Платежи</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="/deposit">Депозиты</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/credit">Кредиты</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/exchange">Калькулятор валют</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/about">О нас</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/contacts">Контакты</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/welcome">Выйти</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <br>
        <c:choose>
            <c:when test="${mode == 'MODE_DEPOSIT'}">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <h5>Последние вклады, открытые пользователем ${currentUser.name}</h5>
                        </div>
                        <div class="col-lg-6">
                            <div class="float-right">
                                <a class="btn btn-primary" href="/new-deposit">Открыть депозит</a>
                            </div>
                        </div>
                    </div>

                    <br>
                    <div class="row">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>Депозит</th>
                                    <th>Дата открытия</th>
                                    <th>Дата окончания</th>
                                    <th>Сумма</th>
                                    <th>Срок</th>
                                    <th>Клиент</th>
                                    <th><i class="fa fa-info"></i></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="deposit" items="${depositList}">
                                    <tr>
                                        <td>${deposit.depositType.description}</td>
                                        <td><fmt:formatDate value="${deposit.startDate}" pattern="dd-MM-yyyy"/></td>
                                        <td><fmt:formatDate value="${deposit.endDate}" pattern="dd-MM-yyyy"/></td>
                                        <td>${deposit.sum}</td>
                                        <td>${deposit.term}</td>
                                        <td>${deposit.client.name}</td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-sm"
                                                    data-target="#depositInfo" data-toggle="modal"
                                                    data-val="${deposit.id}"><i class="fa fa-info"></i></button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:when>

            <c:when test="${mode == 'MODE_NEW_DEPOSIT'}">

                <div class="container">

                    <div class="row">
                        <div class="col-lg-6">
                            <h5>Открытие нового вклада пользователем ${currentUser.name}</h5>
                        </div>
                    </div>

                    <br>
                    <c:choose>
                        <c:when test="${client_mode == null}">
                            <div class="row">
                                <form class="form-horizontal col-lg-12" method="POST" action="/deposit-find-client">
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label class="control-label col-lg-12">Серия паспорта</label>
                                                <div class="col-lg-8">
                                                    <input type="text" class="form-control" name="passportSeries"
                                                           value="${client.passportSeries }"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">Номер паспорта</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="passportNumber"
                                                           value="${client.passportNumber }"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <label class="control-label col-lg-10"> </label>
                                            <div class="form-group col-lg-12">
                                                <input type="submit" class="btn btn-primary" value="Найти"/>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </c:when>
                        <c:when test="${client_mode == 'NEW'}">
                            <div class="alert alert-info">
                                Такого клиента нет, необходимо добавить нового.
                            </div>
                            <div class="row">
                                <form class="form-horizontal col-lg-12" method="POST" action="/payment-save-client">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-12">ФИО клиента</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="name"
                                                           value="${client.name }"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-12">Дата рождения</label>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <input type="date" class="form-control" name="birth"
                                                               value="${client.birth }"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">Серия паспорта</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="passportSeries"
                                                           value="${client.passportSeries }"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-10">Номер паспорта</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="passportNumber"
                                                           value="${client.passportNumber }"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">Адрес</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="address"
                                                           value="${client.address }"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-10">Номер Телефона</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="phone"
                                                           value="${client.phone }"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="col-lg-12">
                                                    <div class="float-right">
                                                        <input type="submit" class="btn btn-primary"
                                                               value="Сохранить"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </c:when>
                        <c:when test="${client_mode == 'EXISTS'}">
                            <div class="row">
                                <form class="form-horizontal col-lg-12" method="POST"
                                      action="/save-deposit">

                                    <div class="row">
                                        <h4>Клиент:</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <form:input path="client.id" type="hidden" name="id"/>
                                                <label class="control-label col-lg-12">ФИО клиента</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control" name="name"
                                                                path="client.name" disabled="true"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-12">Дата рождения</label>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <form:input type="text" class="form-control" name="birth"
                                                                    path="client.birth" disabled="true"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">Серия паспорта</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control"
                                                                name="passportSeries"
                                                                path="client.passportSeries" disabled="true"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-10">Номер паспорта</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control"
                                                                name="passportNumber"
                                                                path="client.passportNumber" disabled="true"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">Адрес</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control" name="address"
                                                                path="client.address" disabled="true"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-10">Номер Телефона</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control" name="phone"
                                                                path="client.phone" disabled="true"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <h4>Вклад</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <form:input path="deposit.id" type="hidden" name="id"/>
                                            <div class="form-group">
                                                <label class="control-label col-lg-12">Депозит</label>
                                                <div class="col-lg-12">
                                                    <form:select path="deposit.depositType.id" id="depositTypeId">
                                                        <c:forEach var="type" items="${depositTypeList}">
                                                            <form:option
                                                                    value="${type.id}">${type.description}</form:option>
                                                        </c:forEach>
                                                    </form:select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <label class="control-label col-lg-12">Сумма</label>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <form:input type="number" class="form-control" id="depositSumm"
                                                                name="depositSumm"
                                                                path="deposit.sum"
                                                                step="100"/>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">Срок</label>
                                                <div class="col-lg-12">
                                                    <form:input type="number" class="form-control" id="depositTerm"
                                                                name="depositTerm"
                                                                path="deposit.term"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="col-lg-12">
                                                    <div class="float-right">
                                                        <input type="submit" class="btn btn-primary"
                                                               value="Сохранить"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </c:when>
                    </c:choose>
                </div>
            </c:when>
        </c:choose>
        <br>
    </div>

    <footer class="navbar navbar-light bg-light">
        <div class="container bg-light">
            <div class="row">
                <div class="col-lg-4">
                    <div class="copy">© 2019 <span class="nowrap">ЗАО «<a class="spec_decor"
                                                                          href="/welcome">Цептер Банк</a>»</span>
                    </div>
                    <div class="foo_info">
                        Лицензия Национального банка Республики Беларусь N31 от 28 мая 2013 года на осуществление
                        банковской деятельности. <br>
                        <br>
                    </div>
                </div>

                <div class="col-lg-4">
                    <h4>Информация о банке</h4>
                    <ul class="foo_nav">

                        <li><a href="/bank/newsroom/" class="undecor">Пресс-центр</a></li>

                        <li><a href="/jobs/" class="undecor">Вакансии</a></li>

                        <li><a href="/bank/information/" class="undecor">Полезная информация</a></li>

                        <li><a href="/bank/contacts/requisites/" class="undecor">Реквизиты</a></li>

                    </ul>
                    <div class="social_block">
                        <div class="social_block_grid">
                            <a href="https://www.facebook.com/myzepterbank/" target="_blank"
                               class="social_block_item">
                                <img src="/static/images/social_facebook.svg" alt="facebook">
                            </a>
                            <a href="https://vk.com/myzepterbank" target="_blank" class="social_block_item">
                                <img src="/static/images/social_vk.svg" alt="vk">
                            </a>
                            <a href="https://www.instagram.com/zepterbank/" target="_blank"
                               class="social_block_item">
                                <img src="/static/images/social_instagram.svg" alt="instargram">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <h4>Клиенту</h4>
                    <ul class="foo_nav">

                        <li><a href="/bank/contacts" class="undecor">Контакты</a></li>

                        <li><a href="/offices/" class="undecor">Как нас найти</a></li>

                        <li><a href="/personal/cards/ibank/" class="undecor">Цептер Онлайн</a></li>

                        <li><a href="/bank/information/rates/" class="undecor">Перечни вознаграждений</a></li>

                        <li><a href="/personal/services/currency/" class="undecor">Курсы валют</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>

<div class="modal fade" id="depositInfo" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Информация о вкладе</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-lg-12"><h5>Вклад</h5></label>
                    <div class="col-lg-4">
                        <label class="control-label col-lg-12"><h6>Описание</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositDescription"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Валюта</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositCurrency"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <label class="control-label col-lg-12"><h6>Процент</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositPercentage"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Срок</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositTerm"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <label class="control-label col-lg-12"><h6>Сумма</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositSum"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Капитализация</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="deposiеCapitalization"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <label class="control-label col-lg-12"><h5>Информация по текущему вкладу</h5></label>
                    <div class="col-lg-4">
                        <label class="control-label col-lg-12"><h6>Клиент</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositClient"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Пользователь</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositUser"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <label class="control-label col-lg-12"><h6>Начало</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositStart" readonly="true"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Конец</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositEnd"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <label class="control-label col-lg-12"><h6>Сумма</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositCurSum"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <label class="control-label col-lg-12"><h5>Накопления</h5></label>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>На текущий момент</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositCurrentProfit"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Общее</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="depositProfit"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/bootstrap-input-spinner.js"></script>
<script type="text/javascript" src="static/js/app.js"></script>

<script>
    $("input[type='number']").inputSpinner()
</script>
</body>
</html>