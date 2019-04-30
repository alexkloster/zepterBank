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
                                        <a class="nav-link" href="/about">О нас</a>
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
                                        <a class="nav-link" href="/about">О нас</a>
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
                                        <a class="nav-link" href="/about">О нас</a>
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

            <section class="content_area offices_list content_atm">
                <div class="insertAfterAjaxLazyLoad">
                    <div class="row filialItem js_row ">
                        <div class="wrapper">
                            <div class="row_head clearfix item-dep">
                                <div class="row_group row_col_4-1">
                                    <div class="row_col">
                                        <h3 class="h3"><a href="#courseCollapse370" class="dep-name__title ct_link"
                                                          data-toggle="collapse" aria-expanded="false"
                                                          aria-controls="courseCollapse370">Центр банковских услуг №
                                            5</a></h3>
                                        <a href="#courseCollapse370" class="ct_link dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse370"><span class="undecor">г. Минск, ул. Платонова, 1 Б</span></a>
                                    </div>
                                </div>
                                <div class="row_group row_col_4-3">
                                    <div class="row_col">
                                        <div class="rc_title">Обслуживание физических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.313">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 92.4653, 202.951;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 92.4653, 202.951; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 2 ч. 44 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Пн-чт: 09:00 - 17:00</li>
                                            <li class="rc_list_item">Пятница: 09:00 - 15:30</li>
                                            <li class="rc_list_item">Суббота, Воскресенье — выходной</li>
                                        </ul>
                                        <a href="#courseCollapse370" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse370"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">

                                        <div class="rc_title">Обслуживание юридических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.313">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 92.4653, 202.951;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 92.4653, 202.951; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 2 ч. 44 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Пн-чт: 09:00 - 16:00</li>
                                            <li class="rc_list_item">Пятница: 09:00 - 15:00</li>
                                            <li class="rc_list_item">Суббота, Воскресенье — выходной</li>
                                        </ul>
                                        <a href="#courseCollapse370" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse370"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">
                                        <div class="rc_title">Услуги</div>
                                        <ul class="def_list ml">
                                            <li class="def_list_item">Валютно-обменные операции</li>
                                            <li class="def_list_item">Банкомат 24/7</li>
                                            <li class="def_list_item">Работа с частными клиентами</li>
                                            <li class="def_list_item">Работа с юридическими лицами</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="courseCollapse370" class="row_body collapse">
                                <div class="row_body_wrap clearfix">
                                    <a href="#courseCollapse370" data-toggle="collapse"
                                       aria-controls="courseCollapse370" class="icon_hover icon_close"></a>
                                    <div class="wrapper">
                                        <div class="row_col_2 clearfix">
                                            <div class="row_col">
                                                <div class="rb_title">Отдел персонального банковского обслуживания:
                                                </div>

                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">понедельник-четверг: 9:00-17:00</li>
                                                    <li class="rc_list_item"><strong>пятница, предпраздничные
                                                        дни:</strong> 9:00-15:30
                                                    </li>
                                                    <li class="rc_list_item">суббота, воскресенье: выходной</li>
                                                    <li class="rc_list_item"><strong>Последний рабочий день
                                                        месяца:</strong> 9:00-15:00
                                                    </li>
                                                    <li class="rc_list_item"><strong>Предвыходные дни, предшествующие
                                                        праздничным дням:</strong> 9:00-14:30
                                                    </li>
                                                    <li class="rc_list_item">+375 17 <strong>287-95-95 </strong></li>
                                                    <li class="rc_list_item">+375 29 <strong>145-95-95 </strong></li>
                                                    <li class="rc_list_item">+375 29 <strong>293-95-95</strong></li>
                                                    <li class="rc_list_item"><a class="undecor"
                                                                                href="mailto:info@zepterbank.by">info@zepterbank.by</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="row_col">
                                                <div class="rb_title">Отдел обслуживания клиентов:</div>
                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">понедельник-пятница: 9:00-16:00</li>
                                                    <li class="rc_list_item"><strong>Предпраздничные дни:</strong></li>
                                                    <li class="rc_list_item">понедельник-пятница: 9:00-15:00</li>
                                                    <li class="rc_list_item"><strong>Последний рабочий день
                                                        месяца:</strong> 9:00-15:00
                                                    </li>
                                                    <li class="rc_list_item">+375 17 <strong>331-78-62</strong>
                                                        (открытие счетов юридических лиц и ИП)
                                                    </li>
                                                    <li class="rc_list_item">+375 17 <strong>293-01-59</strong>
                                                        (кредитование юридических лиц и ИП)
                                                    </li>
                                                    <li class="rc_list_item">+375 17 <strong>294-00-07</strong> (отдел
                                                        обслуживания клиентов)
                                                    </li>
                                                    <li class="rc_list_item">+375 17 <strong>331-86-53</strong> факс
                                                        (обслуживание корпоративных клиентов)
                                                    </li>
                                                    <li class="rc_list_item">+375 44 <strong>580-29-90</strong>
                                                        (Директор ЦБУ)
                                                    </li>
                                                    <li class="rc_list_item">+375 44 <strong>738-29-75</strong>
                                                        (Начальник отдела обслуживания клиентов)
                                                    </li>
                                                    <li class="rc_list_item">+375 44 <strong>557-17-40</strong>
                                                        (Заместитель начальника отдела обслуживания клиентов)
                                                    </li>
                                                    <li class="rc_list_item"><a class="undecor"
                                                                                href="mailto:info@zepterbank.by">info@zepterbank.by</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="inner_map">
                                        <div class="item-dep__map" data-mapid="370"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cordData hide" data-clusterpreset="" data-cluster="0" data-cordx="53.904296392796"
                             data-cordy="27.588660871689" data-baloonimage="">
                            <div class="officeNameText">Центр банковских услуг № 5</div>
                            <div class="officeDescription">
                                <div class="officeDescriptionData">
                                    <div class="dep-name__address"></div>

                                    <div class="dep-desc_item">
                                        <div class="dep-desc_item-text">Валютно-обменные операции</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Банкомат 24/7</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Работа с частными клиентами</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Работа с юридическими лицами</div>
                                        <div class="clear"></div>
                                    </div>

                                    <!--a href="javascript:void(0);"  data-cordx="53.904296392796" data-cordy="27.588660871689" class="getRoadToPoint">
                                        <span class="dashed">Проложить маршрут</span>
                                    </a-->
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row filialItem js_row ">
                        <div class="wrapper">
                            <div class="row_head clearfix item-dep">
                                <div class="row_group row_col_4-1">
                                    <div class="row_col">
                                        <h3 class="h3"><a href="#courseCollapse451" class="dep-name__title ct_link"
                                                          data-toggle="collapse" aria-expanded="false"
                                                          aria-controls="courseCollapse451">Обменный пункт № 1</a></h3>
                                        <a href="#courseCollapse451" class="ct_link dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse451"><span class="undecor">г. Минск, ул. Тимирязева, 114 (1 этаж «Хёндэ АвтоГрад»)</span></a>
                                    </div>
                                </div>
                                <div class="row_group row_col_4-3">
                                    <div class="row_col">
                                        <div class="rc_title">Обслуживание физических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.1963">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 57.9902, 237.426;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 57.9902, 237.426; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 2 ч. 29 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Пн-пт: 08:45 - 18:55</li>
                                            <li class="rc_list_item">сб-вс: 08:45 - 18:55</li>
                                            <li class="rc_list_item"></li>
                                        </ul>
                                        <a href="#courseCollapse451" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse451"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">

                                        <div class="rc_title">Обслуживание юридических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.1963">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 57.9902, 237.426;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 57.9902, 237.426; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 2 ч. 29 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Пн-пт: 08:45 - 18:55</li>
                                            <li class="rc_list_item">сб-вс: 08:45 - 18:55</li>
                                            <li class="rc_list_item"></li>
                                        </ul>
                                        <a href="#courseCollapse451" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse451"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">
                                        <div class="rc_title">Услуги</div>
                                        <ul class="def_list ml">
                                            <li class="def_list_item">Валютно-обменные операции</li>
                                            <li class="def_list_item">Платежи</li>
                                            <li class="def_list_item">Прием выручки юридических лиц и индивидуальных
                                                предпринимателей
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="courseCollapse451" class="row_body collapse">
                                <div class="row_body_wrap clearfix">
                                    <a href="#courseCollapse451" data-toggle="collapse"
                                       aria-controls="courseCollapse451" class="icon_hover icon_close"></a>
                                    <div class="wrapper">
                                        <div class="row_col_2 clearfix">
                                            <div class="row_col">
                                                <div class="rb_title">Отдел персонального банковского обслуживания:
                                                </div>

                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">понедельник-воскресенье: 8:45-18:55</li>
                                                    <li class="rc_list_item">обед: 12:30-13:00, 17:00-17:30</li>
                                                    <li class="rc_list_item">технологический перерыв: 10:30-10:40,
                                                        16:00-16:10
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="row_col">
                                                <div class="rb_title">Отдел обслуживания клиентов:</div>
                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">понедельник-воскресенье: 8:45-18:55</li>
                                                    <li class="rc_list_item">обед: 12:30-13:00, 17:00-17:30</li>
                                                    <li class="rc_list_item">технологический перерыв: 10:30-10:40,
                                                        16:00-16:10
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="inner_map">
                                        <div class="item-dep__map" data-mapid="451"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cordData hide" data-clusterpreset="" data-cluster="0" data-cordx="53.934275783802"
                             data-cordy="27.45752409259" data-baloonimage="">
                            <div class="officeNameText">Обменный пункт № 1</div>
                            <div class="officeDescription">
                                <div class="officeDescriptionData">
                                    <div class="dep-name__address"></div>

                                    <div class="dep-desc_item">
                                        <div class="dep-desc_item-text">Валютно-обменные операции</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Платежи</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Прием выручки юридических лиц и индивидуальных
                                            предпринимателей
                                        </div>
                                        <div class="clear"></div>
                                    </div>

                                    <!--a href="javascript:void(0);"  data-cordx="53.934275783802" data-cordy="27.45752409259" class="getRoadToPoint">
                                        <span class="dashed">Проложить маршрут</span>
                                    </a-->
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row filialItem js_row wow slideInUp" data-wow-delay=".1s"
                         style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
                        <div class="wrapper">
                            <div class="row_head clearfix item-dep">
                                <div class="row_group row_col_4-1">
                                    <div class="row_col">
                                        <h3 class="h3"><a href="#courseCollapse452" class="dep-name__title ct_link"
                                                          data-toggle="collapse" aria-expanded="false"
                                                          aria-controls="courseCollapse452">Обменный пункт № 2</a></h3>
                                        <a href="#courseCollapse452" class="ct_link dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse452"><span class="undecor">г. Минск, ул. Тимирязева, 127 (1 этаж в здании паркинга)</span></a>
                                    </div>
                                </div>
                                <div class="row_group row_col_4-3">
                                    <div class="row_col">
                                        <div class="rc_title">Обслуживание физических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.2724">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 80.4714, 214.945;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 80.4714, 214.945; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 3 ч. 24 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Вт-пт: 09:40 - 18:45</li>
                                            <li class="rc_list_item">сб-вс: 09:40 - 18:45</li>
                                            <li class="rc_list_item">Понедельник — выходной</li>
                                        </ul>
                                        <a href="#courseCollapse452" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse452"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">

                                        <div class="rc_title">Обслуживание юридических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.2724">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 80.4714, 214.945;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 80.4714, 214.945; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 3 ч. 24 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Вт-пт: 09:40 - 18:45</li>
                                            <li class="rc_list_item">сб-вс: 09:40 - 18:45</li>
                                            <li class="rc_list_item">Понедельник — выходной</li>
                                        </ul>
                                        <a href="#courseCollapse452" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse452"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">
                                        <div class="rc_title">Услуги</div>
                                        <ul class="def_list ml">
                                            <li class="def_list_item">Валютно-обменные операции</li>
                                            <li class="def_list_item">Платежи</li>
                                            <li class="def_list_item">Прием выручки юридических лиц и индивидуальных
                                                предпринимателей
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="courseCollapse452" class="row_body collapse">
                                <div class="row_body_wrap clearfix">
                                    <a href="#courseCollapse452" data-toggle="collapse"
                                       aria-controls="courseCollapse452" class="icon_hover icon_close"></a>
                                    <div class="wrapper">
                                        <div class="row_col_2 clearfix">
                                            <div class="row_col">
                                                <div class="rb_title">Отдел персонального банковского обслуживания:
                                                </div>

                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">вторник-воскресенье: 9:40-18:45</li>
                                                    <li class="rc_list_item">обед: 13:30-14:30</li>
                                                    <li class="rc_list_item">технологический перерыв: 11:30-11:40,
                                                        17:30-17:40
                                                    </li>
                                                    <li class="rc_list_item">понедельник: выходной</li>
                                                </ul>
                                            </div>
                                            <div class="row_col">
                                                <div class="rb_title">Отдел обслуживания клиентов:</div>
                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">вторник-воскресенье: 9:40-18:45</li>
                                                    <li class="rc_list_item">обед: 13:30-14:30</li>
                                                    <li class="rc_list_item">технологический перерыв:
                                                        11:30-11:40,17:30-17:40
                                                    </li>
                                                    <li class="rc_list_item">понедельник: выходной</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="inner_map">
                                        <div class="item-dep__map" data-mapid="452"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cordData hide" data-clusterpreset="" data-cluster="0" data-cordx="53.938108283783"
                             data-cordy="27.443216126984" data-baloonimage="">
                            <div class="officeNameText">Обменный пункт № 2</div>
                            <div class="officeDescription">
                                <div class="officeDescriptionData">
                                    <div class="dep-name__address"></div>

                                    <div class="dep-desc_item">
                                        <div class="dep-desc_item-text">Валютно-обменные операции</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Платежи</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Прием выручки юридических лиц и индивидуальных
                                            предпринимателей
                                        </div>
                                        <div class="clear"></div>
                                    </div>

                                    <!--a href="javascript:void(0);"  data-cordx="53.938108283783" data-cordy="27.443216126984" class="getRoadToPoint">
                                        <span class="dashed">Проложить маршрут</span>
                                    </a-->
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row filialItem js_row wow slideInUp" data-wow-delay=".1s"
                         style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
                        <div class="wrapper">
                            <div class="row_head clearfix item-dep">
                                <div class="row_group row_col_4-1">
                                    <div class="row_col">
                                        <h3 class="h3"><a href="#courseCollapse4919" class="dep-name__title ct_link"
                                                          data-toggle="collapse" aria-expanded="false"
                                                          aria-controls="courseCollapse4919">Обменный пункт № 3</a></h3>
                                        <a href="#courseCollapse4919" class="ct_link dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse4919"><span class="undecor">г. Минск, ул. Тимирязева,127, 1 этаж, гипермаркет «МИЛЕ». </span></a>
                                    </div>
                                </div>
                                <div class="row_group row_col_4-3">
                                    <div class="row_col">
                                        <div class="rc_title">Обслуживание физических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.233">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 68.832, 226.584;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 68.832, 226.584; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 2 ч. 44 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Пн-пт: 9.45 - 18.50</li>
                                            <li class="rc_list_item">сб-вс: 9.45 - 18.50</li>
                                            <li class="rc_list_item"></li>
                                        </ul>
                                        <a href="#courseCollapse4919" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse4919"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">

                                        <div class="rc_title">Обслуживание юридических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.233">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 68.832, 226.584;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 68.832, 226.584; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 2 ч. 44 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Пн-пт: 9.45 - 18.50</li>
                                            <li class="rc_list_item">сб-вс: 9.45 - 18.50</li>
                                            <li class="rc_list_item"></li>
                                        </ul>
                                        <a href="#courseCollapse4919" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse4919"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">
                                        <div class="rc_title">Услуги</div>
                                        <ul class="def_list ml">
                                            <li class="def_list_item">Валютно-обменные операции</li>
                                            <li class="def_list_item">Платежи</li>
                                            <li class="def_list_item">Прием выручки юридических лиц и индивидуальных
                                                предпринимателей
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="courseCollapse4919" class="row_body collapse">
                                <div class="row_body_wrap clearfix">
                                    <a href="#courseCollapse4919" data-toggle="collapse"
                                       aria-controls="courseCollapse4919" class="icon_hover icon_close"></a>
                                    <div class="wrapper">
                                        <div class="row_col_2 clearfix">
                                            <div class="row_col">
                                                <div class="rb_title">Отдел персонального банковского обслуживания:
                                                </div>

                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">понедельник-воскресенье: 9:45-18:50</li>
                                                    <li class="rc_list_item">обед: 14:30-15:30</li>
                                                    <li class="rc_list_item">технологические перерывы:
                                                        11:40-11:50,17:10-17:20
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="row_col">
                                                <div class="rb_title">Отдел обслуживания клиентов:</div>
                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">понедельник-воскресенье: 9:45-18:50</li>
                                                    <li class="rc_list_item">обед: 14:30-15:30</li>
                                                    <li class="rc_list_item">технологические перерывы:
                                                        11:40-11:50,17:10-17:20
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="inner_map">
                                        <div class="item-dep__map" data-mapid="4919"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cordData hide" data-clusterpreset="" data-cluster="0" data-cordx="53.938184535058"
                             data-cordy="27.443774026459" data-baloonimage="">
                            <div class="officeNameText">Обменный пункт № 3</div>
                            <div class="officeDescription">
                                <div class="officeDescriptionData">
                                    <div class="dep-name__address"></div>

                                    <div class="dep-desc_item">
                                        <div class="dep-desc_item-text">Валютно-обменные операции</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Платежи</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Прием выручки юридических лиц и индивидуальных
                                            предпринимателей
                                        </div>
                                        <div class="clear"></div>
                                    </div>

                                    <!--a href="javascript:void(0);"  data-cordx="53.938184535058" data-cordy="27.443774026459" class="getRoadToPoint">
                                        <span class="dashed">Проложить маршрут</span>
                                    </a-->
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row filialItem js_row wow slideInUp" data-wow-delay=".1s"
                         style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
                        <div class="wrapper">
                            <div class="row_head clearfix item-dep">
                                <div class="row_group row_col_4-1">
                                    <div class="row_col">
                                        <h3 class="h3"><a href="#courseCollapse434" class="dep-name__title ct_link"
                                                          data-toggle="collapse" aria-expanded="false"
                                                          aria-controls="courseCollapse434">Центр банковских услуг №
                                            1</a></h3>
                                        <a href="#courseCollapse434" class="ct_link dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse434"><span class="undecor">г. Брест, ул. Советская, 34 (Торговый центр «Дидас Персия»)</span></a>
                                    </div>
                                </div>
                                <div class="row_group row_col_4-3">
                                    <div class="row_col">
                                        <div class="rc_title">Обслуживание физических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.2547">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 75.2425, 220.174;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 75.2425, 220.174; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 2 ч. 44 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Пн-пт: 9:00 - 17:00</li>
                                            <li class="rc_list_item">Суббота, Воскресенье — выходной</li>
                                        </ul>
                                        <a href="#courseCollapse434" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse434"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">

                                        <div class="rc_title">Обслуживание юридических лиц</div>
                                        <div class="timer_box clearfix">
                                            <div class="timer_data js_timer" data-percentage="0.2808">
                                                <svg viewBox="0 0 100 100">
                                                    <path class="pathBar"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#ccc" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 82.9529, 212.463;"></path>
                                                    <path class="pathBase"
                                                          d="M 50,50 m 0,-47 a 47,47 0 1 1 0,94 a 47,47 0 1 1 0,-94"
                                                          stroke="#e31e24" stroke-width="6" fill-opacity="0"
                                                          style="stroke-dasharray: 0, 82.9529, 212.463; stroke-dashoffset: 0; transition: stroke-dashoffset 2s ease 0s;"></path>
                                                </svg>
                                            </div>
                                            <div class="timer_txt">До открытия 2 ч. 44 мин.</div>
                                        </div>
                                        <ul class="rc_list">
                                            <li class="rc_list_item">Пн-чт: 9:00 - 16:00</li>
                                            <li class="rc_list_item">Пятница: 9:00 - 15:00</li>
                                            <li class="rc_list_item">Суббота, Воскресенье — выходной</li>
                                        </ul>
                                        <a href="#courseCollapse434" class="m_link iconafter arr_down dep-name__title"
                                           data-toggle="collapse" aria-expanded="false"
                                           aria-controls="courseCollapse434"><span class="undecor">Подробнее</span></a>
                                    </div>
                                    <div class="row_col">
                                        <div class="rc_title">Услуги</div>
                                        <ul class="def_list ml">
                                            <li class="def_list_item">Валютно-обменные операции</li>
                                            <li class="def_list_item">Работа с частными клиентами</li>
                                            <li class="def_list_item">Работа с юридическими лицами</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="courseCollapse434" class="row_body collapse">
                                <div class="row_body_wrap clearfix">
                                    <a href="#courseCollapse434" data-toggle="collapse"
                                       aria-controls="courseCollapse434" class="icon_hover icon_close"></a>
                                    <div class="wrapper">
                                        <div class="row_col_2 clearfix">
                                            <div class="row_col">
                                                <div class="rb_title">Отдел персонального банковского обслуживания:
                                                </div>

                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">понедельник-пятница: 9:00-17:00</li>
                                                    <li class="rc_list_item">Предпраздничные дни: 9:00-16:00</li>
                                                    <li class="rc_list_item">Последний рабочий день месяца: 9:00-15:00
                                                    </li>
                                                    <li class="rc_list_item">суббота, воскресенье: выходные</li>
                                                    <li class="rc_list_item">+375 162 <strong>53-36-15</strong></li>
                                                    <li class="rc_list_item">+375 162 <strong>51-81-51</strong> факс
                                                    </li>
                                                    <li class="rc_list_item">+375 162 <strong>53-36-23</strong>
                                                        (информация по курсам обмена валют)
                                                    </li>
                                                    <li class="rc_list_item"><a class="undecor"
                                                                                href="mailto:info@zepterbank.by">info@zepterbank.by</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="row_col">
                                                <div class="rb_title">Отдел обслуживания клиентов:</div>
                                                <ul class="rc_list">
                                                    <li class="rc_list_item"><strong>Режим работы:</strong></li>
                                                    <li class="rc_list_item">понедельник-четверг: 9:00-16:00</li>
                                                    <li class="rc_list_item">Пятница, предпраздничные дни и последний
                                                        рабочий день месяца: 9:00-15:00
                                                    </li>
                                                    <li class="rc_list_item">суббота, воскресенье: выходные</li>
                                                    <li class="rc_list_item">+375 162 <strong>53-36-11</strong></li>
                                                    <li class="rc_list_item">+ 375 44 <strong>533-66-26</strong></li>
                                                    <li class="rc_list_item">+375 162 <strong>53-81-51</strong> факс
                                                    </li>
                                                    <li class="rc_list_item">+375 162 <strong>53-36-82</strong></li>
                                                    <li class="rc_list_item"><a class="undecor"
                                                                                href="mailto:info@zepterbank.by">info@zepterbank.by</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="inner_map">
                                        <div class="item-dep__map" data-mapid="434"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cordData hide" data-clusterpreset="" data-cluster="0" data-cordx="52.094253985232"
                             data-cordy="23.692166600525" data-baloonimage="">
                            <div class="officeNameText">Центр банковских услуг № 1</div>
                            <div class="officeDescription">
                                <div class="officeDescriptionData">
                                    <div class="dep-name__address"></div>

                                    <div class="dep-desc_item">
                                        <div class="dep-desc_item-text">Валютно-обменные операции</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Работа с частными клиентами</div>
                                        <div class="clear"></div>
                                        <div class="dep-desc_item-text">Работа с юридическими лицами</div>
                                        <div class="clear"></div>
                                    </div>

                                    <!--a href="javascript:void(0);"  data-cordx="52.094253985232" data-cordy="23.692166600525" class="getRoadToPoint">
                                        <span class="dashed">Проложить маршрут</span>
                                    </a-->
                                </div>
                            </div>
                        </div>
                    </div>


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