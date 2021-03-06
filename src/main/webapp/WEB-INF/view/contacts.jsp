<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="page-container bg-light">
    <div class="content-wrap bg-white">
        <c:choose>
            <c:when test="${NAVIGATION_MODE == null}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/welcome">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarResponsive"
                                    aria-controls="navbarResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/welcome"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">О нас</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/login">Войти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>
            <c:when test="${NAVIGATION_MODE == 'user'}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/userPage">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarUserResponsive"
                                    aria-controls="navbarUserResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarUserResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/userPage"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/payment">Платежи</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/deposit">Депозиты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/credit">Кредиты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exchange">Калькулятор валют</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">О нас</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exit">Выйти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>
            <c:when test="${NAVIGATION_MODE == 'admin'}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/adminPage">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarAdminResponsive"
                                    aria-controls="navbarAdminResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarAdminResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/adminPage"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/users">Работа с пользователями</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/statistic">Статистика</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">О нас</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exit">Выйти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>

        </c:choose>
        <div class="container">

            <div class="wrapper">
                <h3>Контакт-центр</h3>
                <br>
                <div class="row">

                    &nbsp;+ 375 29 293 95 95&nbsp;<br>
                    &nbsp;+ 375 17 287 95 95&nbsp;<br>
                    &nbsp;<br>
                </div>
                <div class="row">

                    <ul>
                        <li>Пн-пт: 9:00 – 18:00</li>
                        <li>
                            Сб, вс: выходные
                        </li>
                    </ul>
                </div>
                <br>
                <div class="row">

                    <br>
                    Операторы связи взимают плату за звонки согласно установленным тарифам.<br>
                    <p align="justify">
                    </p>
                    <p>
                        Мы предоставим Вам информацию по всему спектру банковских услуг:
                    </p>
                    <ul>
                        <li>депозитам</li>
                        <li>кредитам</li>
                        <li>карточкам для физических и юридических лиц</li>
                        <li>Интернет-банкингу</li>
                        <li>денежным переводам</li>
                        <li>валютно-обменным и другим банковским операциям</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>

<br>
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


                    <li><a href="/jobs" class="undecor">Вакансии</a></li>


                    <li><a href="/requisites" class="undecor">Реквизиты</a></li>

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

                    <li><a href="/contacts" class="undecor">Контакты</a></li>

                    <li><a href="/offices" class="undecor">Как нас найти</a></li>

                    <li><a href="/welcome" class="undecor">Цептер Онлайн</a></li>

                </ul>
            </div>
        </div>
    </div>
</footer>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>