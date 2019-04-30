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
            <section class="content_header">
                <div class="wrapper clearfix">
                    <h1 class="h1">Реквизиты</h1>
                </div>
            </section>
            <section class="content_area">
                <div class="row">
                    <div class="wrapper formated_txt">

                        <p>
                            Полное наименование:<br>
                        </p>
                        <ul>
                            <li>на русском языке: Закрытое акционерное общество «Цептер Банк»</li>
                            <li>
                                на белорусском языке: Закрытае акцыянернае таварыства «Цэптар Банк»
                            </li>
                            <li>
                                на английском языке: Closed joint-stock company «Zepter Bank»
                            </li>
                        </ul>
                        <p>
                            Сокращенное наименование:<br>
                        </p>
                        <ul>
                            <li>на русском языке: ЗАО «Цептер Банк»</li>
                            <li>
                                на белорусском языке: ЗАТ «Цэптар Банк»
                            </li>
                            <li>
                                на английском языке: CJSC «Zepter Bank»<br>
                            </li>
                        </ul>
                        <p>
                            Местонахождение:&nbsp; <br>
                            ул. Платонова, 1 Б, 220034, г. Минск, Республика Беларусь<br>
                        </p>
                        <p>
                            Время работы: <br>
                            Понедельник - четверг - 9.00 - 17.00<br>
                            Пятница - 9.00 - 15.30<br>
                            Выходной: суббота, воскресенье<br>
                        </p>
                        <p>
                            Дата регистрации:&nbsp;13 ноября&nbsp;2008 года
                        </p>
                        <p>
                            Юридический статус: Закрытое акционерное общество<br>
                            <br>
                            Зарегистрированный уставный фонд: 14 948 700&nbsp;белорусских рублей.
                        </p>
                        <p>
                            S.W.I.F.T. - ZEPTBY2X<br>
                            ОКПО – 378312405000<br>
                            УНП – 807000214<br>
                            BIC <i>-&nbsp;</i>ZEPTBY2X.<br>
                            <br>
                            ЗАО "Цептер Банк" не входит в состав банковского холдинга и (или) банковской группы.
                        </p>
                        <p>
                            Акционеры: <br>
                            Акционерное Общество «ХОУМ АРТ &amp; СЕЙЛС СЕРВИСИЗ АГ», Швейцарская конфедерация (99,76%
                            доля в уставном фонде) и Общество с Ограниченной Ответственностью «ЕС Консалт ГмбХ»,
                            Германия (0,24% доля в уставном фонде). Конечный бенефициарный собственник - г-н Филипп
                            Цептер&nbsp; (Монако).<br>
                            <br>
                            Сведения о бенефициарных собственниках ЗАО "Цептер Банк" в отношении не менее 5 процентов
                            акций банка.&nbsp;
                        </p>
                        <p>
                        </p>
                        <b> </b>
                        <table border="1" cellspacing="0" cellpadding="2" class="table table-striped">
                            <tbody>
                            <tr>
                                <td colspan="2" align="center" style="text-align: center;">
                                    Акционеры (учредители) банка
                                </td>
                                <td rowspan="2" align="center">
                                    <br>
                                    <br>
                                    Лица, являющиеся бенефициарными собственниками банка (фамилия, собственное имя,
                                    отчество (если таковое имеется), резидентом какой страны является, учетный номер
                                    плательщика, основной вид деятельности)
                                </td>
                                <td rowspan="2" align="center">
                                    <br>
                                    <br>
                                    Взаимосвязи между банком, его акционерами (учредителями), акционерами (участниками,
                                    собственниками имущества) акционеров банка и иными бенефициарными собственниками
                                </td>
                                <td rowspan="2" align="center">
                                    <br>
                                    <br>
                                    Доля акций банка, находящихся в косвенном владении бенефициарного собственника
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <br>
                                    <br>
                                    полное и сокращенное наименование юридического лица (фамилия, собственное имя,
                                    отчество (если таковое имеется) физического лица), иные данные
                                </td>
                                <td align="center">
                                    <br>
                                    <br>
                                    доля акций банка (процентное отношение количества акций, принадлежащих акционеру, к
                                    общему количеству акций)
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    Home Art &amp; Sales Services AG
                                </td>
                                <td align="right">
                                    99,76%
                                </td>
                                <td align="center">
                                    &nbsp;
                                </td>
                                <td align="center">
                                    &nbsp;
                                </td>
                                <td align="center">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;
                                </td>
                                <td align="center">
                                    &nbsp;
                                </td>
                                <td align="left">
                                    UBA United Business Activities Holding AG
                                </td>
                                <td align="left">
                                    100% Home Art &amp; Sales Services AG
                                </td>
                                <td align="right">
                                    100%
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;
                                </td>
                                <td align="center">
                                    &nbsp;
                                </td>
                                <td align="left">
                                    г-н Филипп Цептер
                                </td>
                                <td align="left">
                                    100% UBA United Business Activities Holding AG
                                </td>
                                <td align="right">
                                    100%
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <p>
                            <br>
                        </p></div>
                </div>
            </section>
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